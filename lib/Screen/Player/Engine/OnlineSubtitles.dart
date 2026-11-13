import 'dart:typed_data';
import 'dart:io';

import 'package:path/path.dart' as p;

import '../../../Logger.dart';
import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/StorageManager.dart';
import '../../../Core/State/State.dart';

const _base = 'https://rest.opensubtitles.org/search';
const _agent = 'TemporaryUserAgent';

class SubtitleLanguage {
  final String code;
  final String name;

  const SubtitleLanguage(this.code, this.name);
}

const subtitleLanguages = [
  SubtitleLanguage('eng', 'English'),
  SubtitleLanguage('spa', 'Spanish'),
  SubtitleLanguage('por', 'Portuguese'),
  SubtitleLanguage('pob', 'Portuguese (BR)'),
  SubtitleLanguage('fre', 'French'),
  SubtitleLanguage('ger', 'German'),
  SubtitleLanguage('ita', 'Italian'),
  SubtitleLanguage('rus', 'Russian'),
  SubtitleLanguage('ara', 'Arabic'),
  SubtitleLanguage('ind', 'Indonesian'),
  SubtitleLanguage('jpn', 'Japanese'),
  SubtitleLanguage('kor', 'Korean'),
  SubtitleLanguage('chi', 'Chinese'),
  SubtitleLanguage('tur', 'Turkish'),
  SubtitleLanguage('vie', 'Vietnamese'),
  SubtitleLanguage('tha', 'Thai'),
  SubtitleLanguage('pol', 'Polish'),
  SubtitleLanguage('dut', 'Dutch'),
  SubtitleLanguage('hin', 'Hindi'),
];

String subtitleLanguageCode(String name) {
  final wanted = name.trim().toLowerCase();
  for (final l in subtitleLanguages) {
    if (l.name.toLowerCase() == wanted || l.code == wanted) return l.code;
  }
  for (final l in subtitleLanguages) {
    if (wanted.isNotEmpty && l.name.toLowerCase().startsWith(wanted)) {
      return l.code;
    }
  }
  return 'eng';
}

class OnlineSubtitle {
  final String id;
  final String name;
  final String language;
  final String format;
  final String link;
  final int downloads;
  final bool hearingImpaired;
  final bool hashMatch;
  final bool episodeMatch;
  final bool packed;
  final String provider;

  const OnlineSubtitle({
    required this.id,
    required this.name,
    required this.language,
    required this.format,
    required this.link,
    required this.downloads,
    required this.hearingImpaired,
    required this.hashMatch,
    required this.episodeMatch,
    this.packed = true,
    this.provider = 'OpenSubtitles',
  });
}

final _imdbCache = <String, String?>{};

int? seasonGuess(String title) {
  final m =
      RegExp(
        r'(?:season|\bs)\s*(\d+)',
        caseSensitive: false,
      ).firstMatch(title) ??
      RegExp(
        r'(\d+)(?:st|nd|rd|th)\s+season',
        caseSensitive: false,
      ).firstMatch(title);
  final value = m == null ? null : int.tryParse(m.group(1)!);
  return value != null && value > 1 && value < 40 ? value : null;
}

String _norm(String s) =>
    s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]+'), ' ').trim();

Future<String?> imdbIdFor(String title, {int? year, bool movie = false}) async {
  final key = '${movie ? 'm' : 's'}:${_norm(title)}:${year ?? ''}';
  if (_imdbCache.containsKey(key)) return _imdbCache[key];
  String? found;
  try {
    final kind = movie ? 'movie' : 'series';
    final res = await find<NetworkManager>().get(
      'https://v3-cinemeta.strem.io/catalog/$kind/top/search=${Uri.encodeComponent(title)}.json',
    );
    final metas = res.data is Map ? (res.data as Map)['metas'] : null;
    if (metas is List) {
      final wanted = _norm(title);
      Map? best;
      var bestScore = -1;
      for (final m in metas) {
        if (m is! Map || m['imdb_id'] == null) continue;
        final name = _norm('${m['name']}');
        var score = name == wanted ? 100 : (name.startsWith(wanted) ? 60 : 0);
        final info = '${m['releaseInfo'] ?? ''}';
        if (year != null && info.startsWith('$year')) score += 30;
        if (score > bestScore) {
          best = m;
          bestScore = score;
        }
      }
      if (best != null && bestScore >= 60) found = '${best['imdb_id']}';
    }
  } catch (e, st) {
    logError('OnlineSubtitles', e, st, 'imdb lookup failed for $title');
  }
  _imdbCache[key] = found;
  return found;
}

Future<String?> openSubtitlesHash(String path) async {
  try {
    final file = File(path);
    final size = await file.length();
    if (size < 131072) return null;
    final raf = await file.open();
    try {
      var hash = size;
      Future<void> chunk(int at) async {
        await raf.setPosition(at);
        final bytes = await raf.read(65536);
        final view = ByteData.sublistView(bytes);
        for (var i = 0; i + 8 <= bytes.length; i += 8) {
          hash += view.getUint64(i, Endian.little);
        }
      }

      await chunk(0);
      await chunk(size - 65536);
      return BigInt.from(hash)
          .toUnsigned(64)
          .toRadixString(16)
          .padLeft(16, '0');
    } finally {
      await raf.close();
    }
  } catch (e, st) {
    logError('OnlineSubtitles', e, st, 'hash failed');
    return null;
  }
}

bool _mentionsEpisode(String name, int episode) =>
    RegExp('(?<![0-9])0*$episode(?![0-9])').hasMatch(name);

Future<List<dynamic>> _fetch(String path) async {
  final res = await find<NetworkManager>().get(
    '$_base/$path',
    headers: {'User-Agent': _agent},
  );
  final data = res.data;
  if (data is List) return data;
  throw StateError('OpenSubtitles answered ${res.statusCode}');
}

Future<List<OnlineSubtitle>> searchOnlineSubtitles({
  required String query,
  required String language,
  int? episode,
  String? filePath,
  String? imdbTitle,
  int? year,
  int? season,
  bool movie = false,
}) async {
  final lang = 'sublanguageid-$language';
  final q = 'query-${Uri.encodeComponent(query.trim().toLowerCase())}';
  final found = <String, OnlineSubtitle>{};
  Object? failure;

  void collect(List<dynamic> rows, {bool hash = false}) {
    for (final row in rows) {
      if (row is! Map) continue;
      final id = '${row['IDSubtitleFile']}';
      final name = '${row['SubFileName']}';
      final link = '${row['SubDownloadLink']}';
      if (id.isEmpty || link.isEmpty) continue;
      final episodeMatch =
          episode != null &&
          (row['SeriesEpisode']?.toString() == '$episode' ||
              _mentionsEpisode(name, episode));
      found.putIfAbsent(
        id,
        () => OnlineSubtitle(
          id: id,
          name: name,
          language: '${row['LanguageName'] ?? row['SubLanguageID'] ?? ''}',
          format: '${row['SubFormat'] ?? 'srt'}',
          link: link,
          downloads: int.tryParse('${row['SubDownloadsCnt']}') ?? 0,
          hearingImpaired: '${row['SubHearingImpaired']}' == '1',
          hashMatch: hash,
          episodeMatch: episodeMatch,
        ),
      );
    }
  }

  Future<void> attempt(String path, {bool hash = false}) async {
    try {
      collect(await _fetch(path), hash: hash);
    } catch (e, st) {
      failure = e;
      logError('OnlineSubtitles', e, st, 'search $path failed');
    }
  }

  if (filePath != null && File(filePath).existsSync()) {
    final hash = await openSubtitlesHash(filePath);
    if (hash != null) {
      final size = await File(filePath).length();
      await attempt('moviebytesize-$size/moviehash-$hash/$lang', hash: true);
    }
  }
  final imdb = await imdbIdFor(imdbTitle ?? query, year: year, movie: movie);
  if (imdb != null) {
    final seasons = movie
        ? const <int>[0]
        : [if (season != null && season > 1) season, 1];
    for (final s in seasons) {
      final path = movie
          ? 'movie/$imdb.json'
          : 'series/$imdb:$s:${episode ?? 1}.json';
      try {
        final res = await find<NetworkManager>().get(
          'https://opensubtitles-v3.strem.io/subtitles/$path',
        );
        final rows = res.data is Map ? (res.data as Map)['subtitles'] : null;
        if (rows is List) {
          for (final row in rows) {
            if (row is! Map || '${row['lang']}' != language) continue;
            final name =
                '${row['subtitleFileName'] ?? row['movieReleaseName'] ?? row['id']}';
            final id = 'stremio-${row['id']}';
            found.putIfAbsent(
              id,
              () => OnlineSubtitle(
                id: id,
                name: name,
                language: '${row['lang']}',
                format: p.extension(name).replaceFirst('.', '').isEmpty
                    ? 'srt'
                    : p.extension(name).replaceFirst('.', '').toLowerCase(),
                link: '${row['url']}',
                downloads: 0,
                hearingImpaired: false,
                hashMatch: false,
                episodeMatch: true,
                packed: false,
                provider: 'Stremio',
              ),
            );
          }
        }
        if (found.values.any((s) => s.provider == 'Stremio')) break;
      } catch (e, st) {
        failure = e;
        logError('OnlineSubtitles', e, st, 'stremio $path failed');
      }
    }
  }
  if (episode != null) {
    await attempt('episode-$episode/$q/season-1/$lang');
  }
  await attempt('$q/$lang');
  if (found.isEmpty && failure != null) throw failure!;

  final list = found.values.toList()
    ..sort((a, b) {
      int score(OnlineSubtitle s) =>
          (s.hashMatch ? 4 : 0) + (s.episodeMatch ? 2 : 0);
      final byScore = score(b).compareTo(score(a));
      return byScore != 0 ? byScore : b.downloads.compareTo(a.downloads);
    });
  final matched = list.where((s) => s.hashMatch || s.episodeMatch).toList();
  logger(
    'Online subtitles: ${list.length} found (${matched.length} matching) '
    'for "$query" $language',
    tag: 'SUBTITLES',
  );
  return episode != null && matched.isNotEmpty ? matched : list;
}

Future<String> downloadOnlineSubtitle(OnlineSubtitle subtitle) async {
  final dir = await StorageManager.getDirectory(subPath: 'cache/subtitles');
  if (dir == null) throw StateError('No cache folder');
  final ext = subtitle.format.toLowerCase() == 'ssa' ? 'ass' : subtitle.format;
  final target = File(p.join(dir.path, '${subtitle.id}.$ext'));
  if (await target.exists() && await target.length() > 0) return target.path;
  final packed = File('${target.path}.gz');
  if (!subtitle.packed) {
    await find<NetworkManager>().download(subtitle.link, target.path);
  } else {
    await find<NetworkManager>().download(
      subtitle.link,
      packed.path,
      headers: {'User-Agent': _agent},
    );
    try {
      final bytes = gzip.decode(await packed.readAsBytes());
      await target.writeAsBytes(bytes, flush: true);
    } finally {
      if (await packed.exists()) await packed.delete();
    }
  }
  logger(
    'Online subtitle saved: ${subtitle.name} -> ${target.path}',
    tag: 'SUBTITLES',
  );
  return target.path;
}

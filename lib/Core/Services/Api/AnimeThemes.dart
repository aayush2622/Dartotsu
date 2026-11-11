import '../../NetworkManager/NetworkManager.dart';
import '../../State/State.dart';

class ThemeVideo {
  final String link;
  final int resolution;
  final bool clean;
  final String? source;
  final String? tags;
  final String? audio;

  const ThemeVideo({
    required this.link,
    this.resolution = 0,
    this.clean = false,
    this.source,
    this.tags,
    this.audio,
  });

  String get label {
    final parts = <String>[
      if (resolution > 0) '${resolution}p',
      if (clean) 'NC',
      if (source != null && source!.isNotEmpty) source!,
    ];
    return parts.join(' · ');
  }
}

class ThemeEntry {
  final String? episodes;
  final bool nsfw;
  final bool spoiler;
  final List<ThemeVideo> videos;

  const ThemeEntry({
    this.episodes,
    this.nsfw = false,
    this.spoiler = false,
    this.videos = const [],
  });
}

class AnimeTheme {
  final String type;
  final String slug;
  final String title;
  final List<String> artists;
  final List<ThemeEntry> entries;

  const AnimeTheme({
    required this.type,
    required this.slug,
    required this.title,
    this.artists = const [],
    this.entries = const [],
  });

  bool get isOpening => type.toUpperCase() == 'OP';

  String get episodes {
    final all = [
      for (final e in entries)
        if (e.episodes != null && e.episodes!.isNotEmpty) e.episodes!,
    ];
    return all.isEmpty ? '' : all.first;
  }

  ThemeVideo? get best {
    ThemeVideo? pick;
    for (final entry in entries) {
      for (final v in entry.videos) {
        if (pick == null || _rank(v) > _rank(pick)) pick = v;
      }
    }
    return pick;
  }

  List<ThemeVideo> get videos =>
      [for (final e in entries) ...e.videos]
        ..sort((a, b) => _rank(b).compareTo(_rank(a)));

  static int _rank(ThemeVideo v) => v.resolution + (v.clean ? 5 : 0);
}

class AnimeThemesResult {
  final String name;
  final String slug;
  final List<AnimeTheme> themes;

  const AnimeThemesResult({
    required this.name,
    required this.slug,
    required this.themes,
  });

  String get page => 'https://animethemes.moe/anime/$slug';
}

AnimeThemesResult? parseAnimeThemes(Map<String, dynamic> json) {
  final list = json['anime'];
  if (list is! List || list.isEmpty) return null;
  final anime = list.first as Map;
  final themes = <AnimeTheme>[];
  for (final t in (anime['animethemes'] as List? ?? const [])) {
    if (t is! Map) continue;
    final song = t['song'] is Map ? t['song'] as Map : const {};
    final entries = <ThemeEntry>[];
    for (final e in (t['animethemeentries'] as List? ?? const [])) {
      if (e is! Map) continue;
      final videos = <ThemeVideo>[];
      for (final v in (e['videos'] as List? ?? const [])) {
        if (v is! Map || v['link'] is! String) continue;
        final audio = v['audio'];
        videos.add(
          ThemeVideo(
            link: v['link'] as String,
            resolution: (v['resolution'] as num?)?.toInt() ?? 0,
            clean: v['nc'] == true,
            source: v['source'] as String?,
            tags: v['tags'] as String?,
            audio: audio is Map ? audio['link'] as String? : null,
          ),
        );
      }
      if (videos.isEmpty) continue;
      entries.add(
        ThemeEntry(
          episodes: e['episodes'] as String?,
          nsfw: e['nsfw'] == true,
          spoiler: e['spoiler'] == true,
          videos: videos,
        ),
      );
    }
    if (entries.isEmpty) continue;
    themes.add(
      AnimeTheme(
        type: '${t['type'] ?? ''}',
        slug: '${t['slug'] ?? ''}',
        title: '${song['title'] ?? ''}',
        artists: [
          for (final a in (song['artists'] as List? ?? const []))
            if (a is Map && a['name'] is String) a['name'] as String,
        ],
        entries: entries,
      ),
    );
  }
  themes.sort((a, b) {
    if (a.isOpening != b.isOpening) return a.isOpening ? -1 : 1;
    return _order(a.slug).compareTo(_order(b.slug));
  });
  return AnimeThemesResult(
    name: '${anime['name'] ?? ''}',
    slug: '${anime['slug'] ?? ''}',
    themes: themes,
  );
}

int _order(String slug) =>
    int.tryParse(RegExp(r'\d+').firstMatch(slug)?.group(0) ?? '') ?? 0;

bool _transient(int code) => code == 429 || code >= 500;

class AnimeThemes {
  AnimeThemes._();

  static final _cache = <int, AnimeThemesResult?>{};
  static final _pending = <int, Future<AnimeThemesResult?>>{};

  static Future<AnimeThemesResult?> forAnilist(int id) {
    if (_cache.containsKey(id)) return Future.value(_cache[id]);
    return _pending[id] ??= _fetch(id)
        .then((r) => _cache[id] = r)
        .whenComplete(() {
          _pending.remove(id);
        });
  }

  static Future<AnimeThemesResult?> _fetch(int id) async {
    final query = {
      'filter[has]': 'resources',
      'filter[site]': 'AniList',
      'filter[external_id]': '$id',
      'include':
          'animethemes.animethemeentries.videos.audio,'
          'animethemes.song.artists',
      'fields[video]': 'id,basename,link,tags,resolution,nc,source',
      'fields[audio]': 'id,basename,link',
    };
    final net = find<NetworkManager>();
    var res = await net.get('https://api.animethemes.moe/anime', query: query);
    for (
      var attempt = 1;
      attempt <= 2 && _transient(res.statusCode);
      attempt++
    ) {
      await Future<void>.delayed(Duration(seconds: 2 * attempt));
      res = await net.get('https://api.animethemes.moe/anime', query: query);
    }
    if (!res.isOk) throw StateError('AnimeThemes HTTP ${res.statusCode}');
    final data = res.data;
    if (data is! Map) return null;
    return parseAnimeThemes(Map<String, dynamic>.from(data));
  }
}

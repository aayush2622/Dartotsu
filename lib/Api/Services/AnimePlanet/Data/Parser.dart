import 'dart:convert';

import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html;

import '../../../../Core/Services/Model/Anime.dart';
import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Character.dart';
import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Manga.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Model/Review.dart';
import '../../../../Core/Services/Model/Studio.dart';
import '../../../../Core/Services/Model/User.dart';
import '../../../../Core/Services/Screens/EntityHost.dart';

const animePlanetHost = 'https://www.anime-planet.com';

class AnimePlanetExtras {
  int? rank;
  int? votes;
  String? studio;
  String? season;
  String? publisher;
  int? entryId;
}

final animePlanetExtras = Expando<AnimePlanetExtras>('animePlanetExtras');

class AnimePlanetFacet {
  final String id;
  final String name;

  const AnimePlanetFacet(this.id, this.name);
}

class AnimePlanetFacets {
  final List<AnimePlanetFacet> types;
  final List<AnimePlanetFacet> tags;

  const AnimePlanetFacets(this.types, this.tags);
}

class AnimePlanetPage {
  final List<Media> items;
  final int pages;

  const AnimePlanetPage(this.items, this.pages);
}

String animePlanetId(String kind, String slug) => '$kind/$slug';

(String, String)? splitAnimePlanetId(String id) {
  final parts = id.split('/');
  if (parts.length != 2 || parts.any((p) => p.isEmpty)) return null;
  if (parts[0] != 'anime' && parts[0] != 'manga') return null;
  return (parts[0], parts[1]);
}

String animePlanetUrl(String id) => '$animePlanetHost/$id';

String? _absolute(String? url) {
  if (url == null || url.isEmpty) return null;
  if (url.startsWith('//')) return 'https:$url';
  if (url.startsWith('/')) return '$animePlanetHost$url';
  return url;
}

String? _clean(String? text) {
  if (text == null) return null;
  final out = text.replaceAll(' ', ' ').replaceAll(RegExp(r'\s+'), ' ').trim();
  return out.isEmpty ? null : out;
}

String _plain(String htmlText) {
  final doc = html.parseFragment(htmlText);
  for (final br in doc.querySelectorAll('br')) {
    br.replaceWith(dom.Text('\n'));
  }
  for (final p in doc.querySelectorAll('p')) {
    p.append(dom.Text('\n\n'));
  }
  return doc.text
          ?.replaceAll(' ', ' ')
          .replaceAll(RegExp(r'\n{3,}'), '\n\n')
          .trim() ??
      '';
}

String _format(String? type, String kind) {
  final raw = (type ?? '').split('(').first.trim().toLowerCase();
  return switch (raw) {
    'tv' => 'TV',
    'movie' => 'MOVIE',
    'ova' => 'OVA',
    'web' => 'ONA',
    'tv special' || 'dvd special' => 'SPECIAL',
    'music video' => 'MUSIC',
    'manga' => 'MANGA',
    'light novel' || 'novel' => 'NOVEL',
    'manhwa' => 'MANHWA',
    'manhua' => 'MANHUA',
    'one shot' || 'one-shot' => 'ONE_SHOT',
    'webtoon' => 'MANHWA',
    '' => kind == 'manga' ? 'MANGA' : 'TV',
    _ => raw.toUpperCase().replaceAll(' ', '_'),
  };
}

int? _score(String? rating) {
  final value = double.tryParse(rating ?? '');
  if (value == null || value <= 0) return null;
  return (value * 20).round().clamp(0, 100);
}

Date? _date(String? text) {
  if (text == null) return null;
  final m = RegExp(r'(\d{4})(?:-(\d{1,2}))?(?:-(\d{1,2}))?').firstMatch(text);
  if (m == null) return null;
  return Date(
    year: int.parse(m.group(1)!),
    month: int.tryParse(m.group(2) ?? ''),
    day: int.tryParse(m.group(3) ?? ''),
  );
}

String? _status(Date? start, Date? end, String kind, {bool openEnded = false}) {
  if (start?.year == null) return null;
  final now = DateTime.now();
  final began = DateTime(start!.year!, start.month ?? 1, start.day ?? 1);
  if (began.isAfter(now)) return 'NOT_YET_RELEASED';
  if (end?.year != null) return 'FINISHED';
  return openEnded ? 'RELEASING' : 'FINISHED';
}

String? _cssUrl(String? style) {
  if (style == null) return null;
  final m = RegExp(r'url\(([^)]+)\)').firstMatch(style);
  if (m == null) return null;
  var raw = m.group(1)!.trim();
  if ((raw.startsWith('"') && raw.endsWith('"')) ||
      (raw.startsWith("'") && raw.endsWith("'"))) {
    raw = raw.substring(1, raw.length - 1);
  }
  return raw.replaceAllMapped(
    RegExp(r'\\([0-9a-fA-F]{1,6}) ?'),
    (e) => String.fromCharCode(int.parse(e.group(1)!, radix: 16)),
  );
}

({String kind, String slug})? _link(String? href) {
  if (href == null) return null;
  final path = Uri.tryParse(href)?.path ?? href;
  final parts = path.split('/').where((p) => p.isNotEmpty).toList();
  if (parts.length < 2 || (parts[0] != 'anime' && parts[0] != 'manga')) {
    return null;
  }
  return (kind: parts[0], slug: parts[1]);
}

List<Media> parseAnimePlanetCards(String body) {
  final doc = html.parse(body);
  return _cards(doc.documentElement!);
}

List<Media> parseAnimePlanetList(String body) {
  final doc = html.parse(body);
  return _cards(doc.documentElement!, list: true);
}

int? parseAnimePlanetEntryId(String body) {
  final form = RegExp(r'class="myListBar[^"]*"[^>]*data-id="(\d+)"')
      .firstMatch(body);
  final info = RegExp(r'ENTRY_INFO\s*:\s*\{[^}]*?\bid\s*:\s*.(\d+)')
      .firstMatch(body);
  return int.tryParse(form?.group(1) ?? info?.group(1) ?? '');
}

String? parseAnimePlanetToken(String body) {
  final m = RegExp(r"\bTOKEN\s*=\s*'([A-Za-z0-9]+)'").firstMatch(body);
  return m?.group(1);
}

class AnimePlanetCustomList {
  final String title;
  final String path;
  final String kind;

  const AnimePlanetCustomList(this.title, this.path, this.kind);
}

List<AnimePlanetCustomList> parseAnimePlanetCustomLists(String body) {
  final doc = html.parse(body);
  final out = <AnimePlanetCustomList>[];
  for (final hand in doc.querySelectorAll('#customLists .cardHand')) {
    final link = hand.querySelector('a.listTitle');
    final href = link?.attributes['href'];
    final title = _clean(link?.text);
    if (href == null || title == null) continue;
    final kind =
        RegExp(r'\d+\s+([a-z]+)')
            .firstMatch(_clean(hand.querySelector('.metadata a')?.text) ?? '')
            ?.group(1) ??
        '';
    out.add(AnimePlanetCustomList(title, href.split('#').first, kind));
  }
  return out;
}

List<Media> parseAnimePlanetCustomList(String body) {
  final doc = html.parse(body);
  final out = <Media>[];
  final seen = <String>{};
  for (final row in doc.querySelectorAll('#customlistDetails tr')) {
    final link = row.querySelector('td.tableAvatar a[href]');
    final ref = _link(link?.attributes['href']);
    if (link == null || ref == null) continue;
    final id = animePlanetId(ref.kind, ref.slug);
    if (!seen.add(id)) continue;
    final tipLink = row.querySelector('td.tableTitle a[title]');
    final tip = html.parseFragment(tipLink?.attributes['title'] ?? '');
    final img = link.querySelector('img');
    final name =
        _clean(tip.querySelector('h5')?.text) ??
        _clean(img?.attributes['alt']) ??
        ref.slug;
    out.add(
      _tipMedia(
        ref,
        id,
        tip,
        name,
        _absolute(img?.attributes['data-src'] ?? img?.attributes['src']),
        null,
      ),
    );
  }
  return out;
}

Map<String, int> parseAnimePlanetCustomListItems(String body) {
  final doc = html.parse(body);
  final out = <String, int>{};
  for (final row in doc.querySelectorAll('#customlistDetails tr')) {
    final ref = _link(
      row.querySelector('td.tableAvatar a[href]')?.attributes['href'],
    );
    final item = int.tryParse(
      row.querySelector('.userContent[id]')?.attributes['id'] ?? '',
    );
    if (ref != null && item != null) {
      out[animePlanetId(ref.kind, ref.slug)] = item;
    }
  }
  return out;
}

int? parseAnimePlanetSessionUserId(String? jwt) {
  final parts = (jwt ?? '').split('.');
  if (parts.length < 2) return null;
  try {
    final json = jsonDecode(
      utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
    );
    return json is Map ? int.tryParse('${json['sub']}') : null;
  } catch (_) {
    return null;
  }
}

String? parseAnimePlanetUser(String body) {
  final m = RegExp('''["']?USER_NAME["']?\\s*:\\s*["']([^"'\\s]+)["']''')
      .firstMatch(body);
  return m?.group(1);
}

const _listStatuses = {
  '1': 'COMPLETED',
  '2': 'CURRENT',
  '3': 'DROPPED',
  '4': 'PLANNING',
  '5': 'PAUSED',
  '6': 'WONT',
};

void _applyEntry(Media media, dom.DocumentFragment tip, dom.Element card) {
  final theirs = tip.querySelector('.theirList');
  final area = card.querySelector('.statusArea');
  final selected = tip.querySelector('.changeStatus option[selected]');
  final id =
      RegExp(r'status(\d)')
          .firstMatch(
            theirs?.querySelector('span[class^=status]')?.className ??
                area?.querySelector('span[class^=status]')?.className ??
                '',
          )
          ?.group(1) ??
      selected?.attributes['value'];
  final status = _listStatuses[id];
  if (status == null) return;
  final text = _clean(theirs?.text) ?? _clean(area?.text) ?? '';
  media.userStatus = status;
  final progress = RegExp(r'(\d+)(?:/\d+)?\s*(eps?|chs?)(?![a-z])')
      .firstMatch(text);
  if (progress != null) media.userProgress = int.parse(progress.group(1)!);
  if (status == 'COMPLETED') {
    final times = int.tryParse(
      RegExp(r'(\d+)x').firstMatch(text)?.group(1) ?? '',
    );
    if (times != null && times > 1) media.userRepeat = times - 1;
  }
  final rating =
      theirs?.querySelector('.ttRating') ?? area?.querySelector('.ttRating');
  media.userScore = _score(rating?.text) ?? 0;
}

Media _tipMedia(
  ({String kind, String slug}) ref,
  String id,
  dom.DocumentFragment tip,
  String name,
  String? cover,
  int? knownEpisodes,
) {
  final bar = tip.querySelectorAll('ul.entryBar > li');
  final typeText = _clean(tip.querySelector('li.type')?.text);
  final year = _clean(tip.querySelector('li.iconYear')?.text);
  final start = _date(year);
  final end = year != null && year.contains('-')
      ? _date(year.split('-').last)
      : null;
  final studio = [
    for (final e in bar)
      if (e.className.isEmpty) _clean(e.text),
  ].whereType<String>().firstOrNull;
  final tags = [
    for (final t in tip.querySelectorAll('.tags li')) ?_clean(t.text),
  ];
  final description = _clean(tip.querySelector('p')?.text);
  final eps =
      knownEpisodes ??
      int.tryParse(
        RegExp(r'(\d+)\s*eps?').firstMatch(typeText ?? '')?.group(1) ?? '',
      );
  final chapters = int.tryParse(
    RegExp(r'Ch:\s*(\d+)').firstMatch(typeText ?? '')?.group(1) ?? '',
  );
  return Media(
    id: id,
    name: name,
    nameRomaji: name,
    cover: cover,
    shareLink: animePlanetUrl(id),
    format: _format(typeText, ref.kind),
    meanScore: _score(tip.querySelector('.ttRating')?.text),
    genres: tags,
    description: description,
    startDate: start,
    endDate: end,
    status: _status(
      start,
      end,
      ref.kind,
      openEnded: year != null && year.trim().endsWith('?'),
    ),
    anime: ref.kind == 'anime'
        ? Anime(
            totalEpisodes: eps != null && eps > 0 ? eps : null,
            studio: studio == null ? null : Studio(id: '', name: studio),
          )
        : null,
    manga: ref.kind == 'manga' ? Manga(totalChapters: chapters) : null,
  );
}

List<Media> _cards(dom.Element root, {bool list = false}) {
  final out = <Media>[];
  final seen = <String>{};
  for (final li in root.querySelectorAll('li.card[data-type]')) {
    final link = li.querySelector('a[href]');
    final ref = _link(link?.attributes['href']);
    if (link == null || ref == null) continue;
    final id = animePlanetId(ref.kind, ref.slug);
    if (!seen.add(id)) continue;
    final tip = html.parseFragment(link.attributes['title'] ?? '');
    final name =
        _clean(li.querySelector('.cardName')?.text) ??
        _clean(tip.querySelector('h5')?.text) ??
        ref.slug;
    final img = li.querySelector('img');
    final cover = _absolute(
      img?.attributes['data-src'] ?? img?.attributes['src'],
    );
    final media = _tipMedia(
      ref,
      id,
      tip,
      name,
      cover,
      int.tryParse(li.attributes['data-total-episodes'] ?? ''),
    );
    if (list) _applyEntry(media, tip, li);
    final entryId = int.tryParse(li.attributes['data-id'] ?? '');
    if (entryId != null) {
      animePlanetExtras[media] = AnimePlanetExtras()..entryId = entryId;
    }
    out.add(media);
  }
  return out;
}

int parseAnimePlanetPages(String body) {
  var max = 1;
  for (final m in RegExp(r'(?:[?&]|&amp;)page=(\d+)').allMatches(body)) {
    final n = int.parse(m.group(1)!);
    if (n > max) max = n;
  }
  return max;
}

AnimePlanetPage parseAnimePlanetListing(String body) =>
    AnimePlanetPage(parseAnimePlanetCards(body), parseAnimePlanetPages(body));

AnimePlanetFacets parseAnimePlanetFacets(String body) {
  final doc = html.parse(body);
  List<AnimePlanetFacet> read(String selector) => [
    for (final li in doc.querySelectorAll(selector))
      if (li.attributes['value'] != null &&
          _clean(li.querySelector('a')?.text) != null)
        AnimePlanetFacet(
          li.attributes['value']!,
          _clean(li.querySelector('a')!.text)!,
        ),
  ];
  return AnimePlanetFacets(
    read('.filterType li.filter'),
    read('#multipletags li.filter'),
  );
}

Media? parseAnimePlanetDetail(String body, String kind, String slug) {
  final doc = html.parse(body);
  final h1 = _clean(doc.querySelector('h1[itemprop=name]')?.text);
  if (h1 == null) return null;
  final id = animePlanetId(kind, slug);

  Map<String, dynamic> ld = const {};
  for (final s in doc.querySelectorAll('script[type="application/ld+json"]')) {
    try {
      final json = jsonDecode(s.text);
      if (json is Map<String, dynamic>) {
        ld = json;
        break;
      }
    } catch (_) {}
  }

  final alt = _clean(
    doc
        .querySelector('h2.aka')
        ?.text
        .replaceFirst(RegExp(r'^\s*Alt titles?:'), ''),
  );
  final cover = _absolute(
    doc.querySelector('img.screenshots')?.attributes['src'] ??
        doc.querySelector('.mainEntry img')?.attributes['src'],
  );

  final bar = doc.querySelector('section.entryBar');
  final cells = [
    for (final c in bar?.children ?? const <dom.Element>[])
      if (c.localName == 'div') c,
  ];
  final typeText = _clean(bar?.querySelector('.type')?.text);
  final yearText = _clean(bar?.querySelector('.iconYear')?.text);
  final season = _clean(bar?.querySelector('a[href*="/seasons/"]')?.text);
  final studioLinks = [
    for (final a
        in bar?.querySelectorAll('a[href*="/studios/"]') ??
            const <dom.Element>[])
      a,
  ];
  final publisher = kind == 'manga'
      ? _clean(
          [
            for (final a
                in bar?.querySelectorAll('a[href*="/magazines/"]') ??
                    const <dom.Element>[])
              a.text.trim(),
          ].join(', '),
        )
      : null;
  final ratingTitle =
      bar?.querySelector('.avgRating')?.attributes['title'] ?? '';
  final rating = RegExp(r'([\d.]+) out of 5 from ([\d,]+)')
      .firstMatch(ratingTitle);
  final rank = int.tryParse(
    RegExp(r'Rank #(\d+)').firstMatch(bar?.text ?? '')?.group(1) ?? '',
  );
  final countsText = kind == 'manga'
      ? cells
            .map((c) => c.text)
            .firstWhere(
              (t) => t.contains('Ch:') || t.contains('Vol:'),
              orElse: () => '',
            )
      : '';
  final chapters = int.tryParse(
    RegExp(r'Ch:\s*(\d+)').firstMatch(countsText)?.group(1) ?? '',
  );

  final start = _date(ld['startDate'] as String?) ?? _date(yearText);
  final end =
      _date(ld['endDate'] as String?) ??
      (yearText != null && yearText.contains('-')
          ? _date(yearText.split('-').last)
          : null);
  final episodes =
      (ld['numberOfEpisodes'] as num?)?.toInt() ??
      int.tryParse(
        RegExp(r'\((\d+) eps?\)').firstMatch(typeText ?? '')?.group(1) ?? '',
      );

  final synopsis =
      doc.querySelector('.entrySynopsis .synopsisManga') ??
      doc.querySelector('.entrySynopsis .md-3-5 > div');
  var description = synopsis == null ? '' : _plain(synopsis.innerHtml);
  if (description.isEmpty) description = (ld['description'] as String?) ?? '';
  if (description.contains("doesn't have a synopsis")) description = '';

  final tags = [
    for (final t in doc.querySelectorAll('.entrySynopsis .tags li'))
      ?_clean(t.text),
  ];

  final characters = <Character>[];
  final staff = <Author>[];
  for (final a in doc.querySelectorAll('a.CharacterCard')) {
    final href = a.attributes['href'] ?? '';
    final parts = href.split('/').where((p) => p.isNotEmpty).toList();
    if (parts.length < 2) continue;
    final name = _clean(a.querySelector('.CharacterCard__title')?.text);
    final image = _absolute(
      _cssUrl(a.querySelector('.CharacterCard__aside')?.attributes['style']),
    );
    final sub = _clean(a.querySelector('.CharacterCard__body')?.text);
    if (name == null) continue;
    if (parts[0] == 'characters') {
      characters.add(
        Character(
          id: parts[1],
          name: name,
          image: image,
          voiceActor: sub == null
              ? null
              : [Author(id: '', name: sub, role: 'Voice Actor')],
        ),
      );
    } else if (parts[0] == 'people') {
      staff.add(Author(id: parts[1], name: name, image: image, role: sub));
    }
  }

  final relations = <Media>[];
  final relSeen = <String>{};
  for (final a in doc.querySelectorAll('a.RelatedEntry')) {
    final ref = _link(a.attributes['href']);
    if (ref == null) continue;
    final rid = animePlanetId(ref.kind, ref.slug);
    if (!relSeen.add(rid)) continue;
    final meta = [
      for (final e in a.querySelectorAll('.RelatedEntry__metadata_item'))
        _clean(e.text),
    ].whereType<String>().toList();
    final typeMeta = meta.length > 1 ? meta[1] : null;
    relations.add(
      Media(
        id: rid,
        name: _clean(a.querySelector('.RelatedEntry__name')?.text) ?? ref.slug,
        cover: _absolute(a.querySelector('img')?.attributes['src']),
        shareLink: animePlanetUrl(rid),
        format: _format(typeMeta?.split(':').first, ref.kind),
        relation: kind == ref.kind ? 'Same franchise' : 'Adaptation',
      ),
    );
  }

  final recommendations = <Media>[];
  for (final tab in doc.querySelectorAll('.tab.recommendations')) {
    recommendations.addAll(_cards(tab));
  }

  final voters = rating == null
      ? null
      : int.tryParse(rating.group(2)!.replaceAll(',', ''));
  final media = Media(
    id: id,
    name: h1,
    nameRomaji: h1,
    cover: cover,
    shareLink: animePlanetUrl(id),
    format: _format(
      typeText ??
          (kind == 'manga'
              ? null
              : ld['@type'] == 'Movie'
              ? 'Movie'
              : 'TV'),
      kind,
    ),
    description: description,
    genres: tags.isNotEmpty
        ? tags
        : [for (final g in (ld['genre'] as List?) ?? const []) '$g'],
    synonyms: alt == null ? const [] : [alt],
    meanScore: rating == null ? null : _score(rating.group(1)),
    popularity: voters,
    startDate: start,
    endDate: end,
    status: _status(
      start,
      end,
      kind,
      openEnded: yearText != null && yearText.trim().endsWith('?'),
    ),
    anime: kind == 'anime'
        ? Anime(
            totalEpisodes: episodes,
            season: season?.split(' ').first.toUpperCase(),
            seasonYear: int.tryParse(season?.split(' ').last ?? ''),
            studio: studioLinks.isEmpty
                ? null
                : Studio(
                    id: studioLinks.first.attributes['href']!.split('/').last,
                    name: studioLinks.first.text.trim(),
                  ),
          )
        : null,
    manga: kind == 'manga' ? Manga(totalChapters: chapters) : null,
    characters: characters.isEmpty ? null : characters,
    staff: staff.isEmpty ? null : staff,
    relations: relations.isEmpty ? null : relations,
    recommendations: recommendations.isEmpty ? null : recommendations,
  );
  animePlanetExtras[media] = AnimePlanetExtras()
    ..rank = rank
    ..votes = voters
    ..studio = studioLinks.isEmpty ? null : studioLinks.first.text.trim()
    ..season = season
    ..publisher = publisher
    ..entryId = parseAnimePlanetEntryId(body);
  return media;
}

class AnimePlanetEntity {
  final EntityProfile profile;
  final List<AnimePlanetSectionData> sections;
  final List<Author> voices;

  const AnimePlanetEntity(
    this.profile,
    this.sections, {
    this.voices = const [],
  });
}

class AnimePlanetSectionData {
  final String title;
  final List<Media> media;

  const AnimePlanetSectionData(this.title, this.media);
}

List<(String, String)> _metadata(dom.Element? root) => [
  for (final item
      in root?.querySelectorAll('.EntryMetadata__item') ??
          const <dom.Element>[])
    if (_clean(item.querySelector('.EntryMetadata__title')?.text) != null &&
        _clean(item.querySelector('.EntryMetadata__value')?.text) != null)
      (
        _clean(item.querySelector('.EntryMetadata__title')!.text)!,
        _clean(item.querySelector('.EntryMetadata__value')!.text)!,
      ),
];

List<String> _aka(dom.Document doc) {
  final text = _clean(
    doc
        .querySelector('h2.aka')
        ?.text
        .replaceFirst(RegExp(r'^\s*(Alt titles?|Aka):'), ''),
  );
  return text == null ? const [] : text.split(RegExp(r',\s+'));
}

Media _linkedMedia(dom.Element a) {
  final ref = _link(a.attributes['href'])!;
  final id = animePlanetId(ref.kind, ref.slug);
  final tip = html.parseFragment(a.attributes['title'] ?? '');
  return Media(
    id: id,
    name: _clean(a.text) ?? _clean(tip.querySelector('h5')?.text) ?? ref.slug,
    cover:
        _absolute(tip.querySelector('img')?.attributes['src']) ??
        _absolute(a.parent?.parent?.querySelector('img')?.attributes['src']),
    shareLink: animePlanetUrl(id),
    format: ref.kind == 'manga'
        ? 'MANGA'
        : _format(_clean(tip.querySelector('li.type')?.text), 'anime'),
    meanScore: _score(tip.querySelector('.ttRating')?.text),
  );
}

List<Media> _mediaIn(dom.Element root) {
  final cards = _cards(root);
  if (cards.isNotEmpty) return cards;
  final out = <Media>[];
  final seen = <String>{};
  for (final a in root.querySelectorAll('a[href]')) {
    if (_link(a.attributes['href']) == null) continue;
    final media = _linkedMedia(a);
    if (seen.add(media.id)) out.add(media);
  }
  return out;
}

AnimePlanetEntity? parseAnimePlanetCharacter(String body, String slug) {
  final doc = html.parse(body);
  final name = _clean(
    doc.querySelector('h1[itemprop=name]')?.text ??
        doc.querySelector('h1')?.text,
  );
  if (name == null) return null;
  final facts = <(String, String)>[
    for (final cell in doc.querySelectorAll('section.entryBar > div'))
      if (_clean(cell.text)?.contains(':') ?? false)
        (
          _clean(cell.text)!.split(':').first.trim(),
          _clean(cell.text)!.split(':').skip(1).join(':').trim(),
        ),
    ..._metadata(doc.documentElement),
  ];
  final tags = [
    for (final t in doc.querySelectorAll('.tags li')) ?_clean(t.text),
  ];
  final sections = <AnimePlanetSectionData>[];
  final voices = <Author>[];
  final seenVoices = <String>{};
  for (final h in doc.querySelectorAll('h3')) {
    final title = _clean(h.text);
    final table = h.nextElementSibling;
    if (title == null || table == null || table.localName != 'table') continue;
    final media = <Media>[];
    final seen = <String>{};
    for (final row in table.querySelectorAll('tr')) {
      final cells = row.querySelectorAll('td');
      final link = cells.firstOrNull?.querySelector('a[href]');
      if (link == null || _link(link.attributes['href']) == null) continue;
      final m = _linkedMedia(link);
      if (!seen.add(m.id)) continue;
      m.relation = cells.length > 1 ? _clean(cells[1].text) : null;
      media.add(m);
      for (final actor in row.querySelectorAll(
        '.tableActors a[href^="/people/"]',
      )) {
        final slugOf = actor.attributes['href']!.split('/').last;
        if (seenVoices.add(slugOf)) {
          voices.add(
            Author(id: slugOf, name: _clean(actor.text), role: 'Voice Actor'),
          );
        }
      }
    }
    if (media.isNotEmpty) sections.add(AnimePlanetSectionData(title, media));
  }
  return AnimePlanetEntity(
    EntityProfile(
      id: slug,
      name: name,
      alternatives: _aka(doc),
      image: _absolute(doc.querySelector('img.screenshots')?.attributes['src']),
      url: '$animePlanetHost/characters/$slug',
      facts: facts,
      tags: tags,
      description: _clean(doc.querySelector('[itemprop=description]')?.text),
    ),
    sections,
    voices: voices,
  );
}

AnimePlanetEntity? parseAnimePlanetPerson(String body, String slug) {
  final doc = html.parse(body);
  final name = _clean(
    doc.querySelector('h1[itemprop=name]')?.text ??
        doc.querySelector('h1')?.text,
  );
  if (name == null) return null;
  final column = doc.querySelector('.EntryMetadata')?.parent;
  final lead = column == null
      ? null
      : _clean(
          column.nodes
              .where(
                (n) =>
                    n is dom.Text || (n is dom.Element && n.localName == 'a'),
              )
              .map((n) => n.text ?? '')
              .join(' '),
        );
  final sections = <AnimePlanetSectionData>[];
  for (final h in doc.querySelectorAll('h3')) {
    final title = _clean(h.text);
    if (title == null || h.classes.contains('EntryMetadata__title')) continue;
    final next = h.nextElementSibling;
    if (next == null) continue;
    final media = _mediaIn(next);
    if (media.isNotEmpty) sections.add(AnimePlanetSectionData(title, media));
  }
  return AnimePlanetEntity(
    EntityProfile(
      id: slug,
      name: name,
      alternatives: _aka(doc),
      image: _absolute(doc.querySelector('img.screenshots')?.attributes['src']),
      url: '$animePlanetHost/people/$slug',
      facts: _metadata(doc.documentElement),
      description: lead,
    ),
    sections,
  );
}

EntityProfile? parseAnimePlanetStudio(String body, String slug) {
  final doc = html.parse(body);
  final title = _clean(doc.querySelector('h1')?.text);
  if (title == null) return null;
  return EntityProfile(
    id: slug,
    name: title.replaceFirst(RegExp(r'\s+anime$'), ''),
    url: '$animePlanetHost/anime/studios/$slug',
    description: _clean(doc.querySelector('h1 + p')?.text),
  );
}

List<Review> parseAnimePlanetReviews(String body, String kind) {
  final doc = html.parse(body);
  final out = <Review>[];
  for (final section in doc.querySelectorAll('section[itemprop=review]')) {
    final id = int.tryParse(section.id) ?? 0;
    final author = section.querySelector('a[href^="/users/"]');
    final name = _clean(author?.text) ?? 'Anonymous';
    final text = [
      for (final p in section.querySelectorAll('p')) ?_clean(p.text),
    ].join('\n\n');
    if (text.isEmpty) continue;
    final rating = double.tryParse(
      section
              .querySelector('meta[itemprop=ratingValue]')
              ?.attributes['content'] ??
          '',
    );
    final date = DateTime.tryParse(
      section.querySelector('time')?.attributes['datetime'] ?? '',
    );
    out.add(
      Review(
        id: id,
        mediaId: 0,
        mediaType: kind.toUpperCase(),
        body: text,
        score: rating == null ? null : (rating * 10).round().clamp(0, 100),
        createdAt: date == null ? null : date.millisecondsSinceEpoch ~/ 1000,
        siteUrl: author == null
            ? null
            : '$animePlanetHost${author.attributes['href']}',
        user: User(id: name.hashCode & 0x7fffffff, name: name),
      ),
    );
  }
  return out;
}

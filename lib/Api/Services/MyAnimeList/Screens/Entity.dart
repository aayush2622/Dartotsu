import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Author.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../Auth.dart';
import '../Data/Mapper.dart';

class MalEntityView extends EntityScreenView {
  MalEntityView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(EntityHost host) async* {
    final id = host.profile.value.id;
    final queries = malAuth.queries;
    switch (host.kind) {
      case EntityKind.character:
        final json = await queries.entity('/characters/$id/full');
        if (json == null) return;
        host.update(_character(json));
        yield _characterWidgets(json);
      case EntityKind.staff:
        final json = await queries.entity('/people/$id/full');
        if (json == null) return;
        host.update(_person(json));
        yield _personWidgets(json);
      case EntityKind.studio:
        final json = await queries.entity('/producers/$id/full');
        if (json == null) return;
        host.update(_studio(json));
        final first = await queries.producerAnime(id, 1);
        yield [
          if (first.isNotEmpty)
            ScreenWidget.media(
              'Anime',
              first,
              onLoadMore: (page) => queries.producerAnime(id, page),
            ),
        ];
    }
  }

  String? _image(Map<String, dynamic> json) =>
      ((json['images'] as Map?)?['jpg'] as Map?)?['image_url'] as String?;

  String? _date(Object? iso) {
    final d = iso is String ? DateTime.tryParse(iso) : null;
    return d == null
        ? null
        : '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }

  EntityProfile _character(Map<String, dynamic> j) => EntityProfile(
    id: '${j['mal_id']}',
    name: j['name'] as String? ?? '',
    nativeName: j['name_kanji'] as String?,
    alternatives: [...((j['nicknames'] as List?) ?? const []).cast<String>()],
    image: _image(j),
    favourites: (j['favorites'] as num?)?.toInt(),
    url: j['url'] as String?,
    description: tenraiHtml(j['about'] as String?),
  );

  List<ScreenWidget> _characterWidgets(Map<String, dynamic> j) {
    final voices = <String, List<Author>>{};
    for (final v in (j['voices'] as List?) ?? const []) {
      final person = ((v as Map)['person'] as Map?)?.cast<String, dynamic>();
      if (person == null) continue;
      (voices[v['language'] as String? ?? 'Other'] ??= []).add(
        mapTenraiPerson(person, role: v['language'] as String?),
      );
    }
    return [
      for (final e in voices.entries)
        ScreenWidget.staff('Voice actors · ${e.key}', e.value),
      ..._media('Anime appearances', j['anime'], 'anime', true),
      ..._media('Manga appearances', j['manga'], 'manga', false),
    ];
  }

  EntityProfile _person(Map<String, dynamic> j) {
    final given = j['given_name'] as String?;
    final family = j['family_name'] as String?;
    return EntityProfile(
      id: '${j['mal_id']}',
      name: j['name'] as String? ?? '',
      nativeName: [?family, ?given].join(' ').trim().isEmpty
          ? null
          : [?family, ?given].join(' ').trim(),
      alternatives: [
        ...((j['alternate_names'] as List?) ?? const []).cast<String>(),
      ],
      image: _image(j),
      favourites: (j['favorites'] as num?)?.toInt(),
      url: j['url'] as String?,
      facts: [
        if (_date(j['birthday']) != null) ('Born', _date(j['birthday'])!),
        if ((j['website_url'] as String?)?.isNotEmpty ?? false)
          ('Website', j['website_url'] as String),
      ],
      description: tenraiHtml(j['about'] as String?),
    );
  }

  List<ScreenWidget> _personWidgets(Map<String, dynamic> j) {
    final roles = <Media>[];
    final seen = <String>{};
    for (final v in (j['voices'] as List?) ?? const []) {
      final anime = ((v as Map)['anime'] as Map?)?.cast<String, dynamic>();
      if (anime == null || !seen.add('${anime['mal_id']}')) continue;
      final character = (v['character'] as Map?)?['name'];
      roles.add(
        mapTenraiEntry(
          anime,
          anime: true,
          role: [?character, ?v['role']].join(' · '),
        ),
      );
    }
    return [
      if (roles.isNotEmpty) ScreenWidget.media('Voice roles', roles),
      ..._media('Staff positions', j['anime'], 'anime', true, key: 'position'),
      ..._media('Manga works', j['manga'], 'manga', false, key: 'position'),
    ];
  }

  EntityProfile _studio(Map<String, dynamic> j) {
    final titles = [
      for (final t in (j['titles'] as List?) ?? const []) t as Map,
    ];
    String? of(String type) => titles
        .where((t) => t['type'] == type)
        .map((t) => t['title'] as String)
        .firstOrNull;
    return EntityProfile(
      id: '${j['mal_id']}',
      name: of('Default') ?? '',
      nativeName: of('Japanese'),
      alternatives: [
        for (final t in titles)
          if (t['type'] == 'Synonym') t['title'] as String,
      ],
      image: _image(j),
      favourites: (j['favorites'] as num?)?.toInt(),
      url: 'https://myanimelist.net/anime/producer/${j['mal_id']}',
      facts: [
        if (_date(j['established']) != null)
          ('Established', _date(j['established'])!),
        if (j['count'] != null) ('Anime', '${j['count']}'),
      ],
      description: tenraiHtml(j['about'] as String?),
    );
  }

  List<ScreenWidget> _media(
    String title,
    Object? raw,
    String field,
    bool anime, {
    String key = 'role',
  }) {
    final out = <Media>[];
    final seen = <String>{};
    for (final e in (raw as List?) ?? const []) {
      final node = ((e as Map)[field] as Map?)?.cast<String, dynamic>();
      if (node == null || !seen.add('${node['mal_id']}')) continue;
      out.add(mapTenraiEntry(node, anime: anime, role: e[key] as String?));
    }
    return out.isEmpty ? const [] : [ScreenWidget.media(title, out)];
  }
}

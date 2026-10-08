import 'package:flutter/material.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Screen/Review/ReviewsShelf.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../../../../Utils/Function.dart';
import '../Auth.dart';
import 'ListEditor.dart';
import '../Data/Mapper.dart';

class MalDetailView extends DetailScreenView {
  MalDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => MalListEditorView(service);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final queries = malAuth.queries;
    final base = host.media.value;
    final characters = queries.characters(base);
    final reviews = queries.getReviews(base.id);
    final staff = queries.staff(base);
    final full = await queries.mediaDetails(base);
    if (full != null) {
      host.update(full);
      yield _build(host);
    }
    final media = host.media.value;
    await queries.enrich(media);
    host.update(media);
    yield _build(host);
    media.characters = await characters;
    host.update(media);
    yield _build(host);
    media.review = (await reviews).take(3).toList();
    host.update(media);
    yield _build(host);
    media.staff = await staff;
    host.update(media);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final extras = malExtras[m];
    final description = (m.description ?? '').trim();
    return [
      ScreenWidget.extra(DetailStats(host, items: _stats)),
      if (description.isNotEmpty)
        ScreenWidget.data('Synopsis', ScreenData(text: description)),
      ScreenWidget.data('Details', ScreenData(rows: _rows(m, extras))),
      ..._community(extras),
      ..._names(m),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          'Genres',
          ScreenData(chips: m.genres, onChipTap: host.search),
        ),
      ..._themes('Openings', m.anime?.op),
      ..._themes('Endings', m.anime?.ed),
      if ((extras?.background ?? '').trim().isNotEmpty)
        ScreenWidget.data(
          'Background',
          ScreenData(text: extras!.background!.trim()),
        ),
      ..._links(extras),
      ScreenWidget.extra(
        ReviewsShelf(key: ValueKey('reviews-${m.id}'), media: m, view: this),
      ),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters('Characters', m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff('Staff', m.staff),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media('Relations', m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media('Recommendations', m.recommendations),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = malExtras[m];
    return [
      if ((m.meanScore ?? 0) > 0)
        ('Score', (m.meanScore! / 10).toStringAsFixed(2)),
      if (extras?.rank != null) ('Rank', '#${extras!.rank}'),
      if ((m.popularity ?? 0) > 0)
        ('Members', DetailStats.compact(m.popularity!)),
      if ((m.favourites ?? 0) > 0)
        ('Favorites', DetailStats.compact(m.favourites!)),
    ];
  }

  List<(String, String)> _rows(Media m, MalExtras? extras) {
    final anime = m.anime;
    final total = m.totalUnits?.toString() ?? '~';
    final studio = anime?.studio?.name;
    final authors = extras?.authors ?? const [];
    final season = anime?.season;
    final duration = anime?.episodeDuration;
    return [
      (m.isAnime ? 'Episodes' : 'Chapters', total),
      if (extras?.volumes != null) ('Volumes', '${extras!.volumes}'),
      if (m.format != null) ('Format', m.format!.titleCase),
      if (m.source != null) ('Source', m.source!.titleCase),
      if (m.status != null) ('Status', m.status!.titleCase),
      if (duration != null) ('Duration', '$duration min per ep'),
      if (extras?.rating != null) ('Rating', extras!.rating!),
      if (studio?.isNotEmpty ?? false) ('Studio', studio!),
      for (final (name, role) in authors.take(4))
        (role.isEmpty ? 'Author' : role.titleCase, name),
      if (extras?.serialization.isNotEmpty ?? false)
        ('Serialization', extras!.serialization.join(', ')),
      if (season != null && anime?.seasonYear != null)
        ('Season', '${season.titleCase} ${anime!.seasonYear}'),
      if (extras?.broadcast?.isNotEmpty ?? false)
        ('Broadcast', extras!.broadcast!.titleCase),
      if (m.startDate?.getFormattedDate() != null)
        (m.isAnime ? 'Aired' : 'Published', _aired(m)),
    ];
  }

  String _aired(Media m) {
    final start = m.startDate?.getFormattedDate();
    final end = m.endDate?.getFormattedDate();
    if (start == null) return '';
    if (end == null || end == start) return start;
    return '$start  –  $end';
  }

  List<ScreenWidget> _community(MalExtras? extras) {
    if (extras == null) return const [];
    const labels = {
      'watching': 'Watching',
      'reading': 'Reading',
      'completed': 'Completed',
      'on_hold': 'On hold',
      'dropped': 'Dropped',
      'plan_to_watch': 'Planned',
      'plan_to_read': 'Planned',
    };
    final rows = [
      if (extras.scoredBy != null) ('Scored by', '${extras.scoredBy}'),
      if (extras.popularityRank != null)
        ('Popularity', '#${extras.popularityRank}'),
      for (final e in extras.stats.entries)
        if (labels[e.key] != null && e.value > 0)
          (labels[e.key]!, '${e.value}'),
    ];
    return rows.isEmpty
        ? const []
        : [ScreenWidget.data('Community', ScreenData(rows: rows))];
  }

  List<ScreenWidget> _names(Media m) {
    final rows = [
      if (m.nameRomaji?.isNotEmpty ?? false) ('Romaji', m.nameRomaji!),
      if ((m.name?.isNotEmpty ?? false) && m.name != m.nameRomaji)
        ('English', m.name!),
    ];
    return [
      if (rows.isNotEmpty)
        ScreenWidget.data('Names', ScreenData(rows: rows, columns: 1)),
      if (m.synonyms.isNotEmpty)
        ScreenWidget.data('Synonyms', ScreenData(chips: m.synonyms)),
    ];
  }

  List<ScreenWidget> _themes(String title, List<String>? songs) {
    if (songs == null || songs.isEmpty) return const [];
    return [
      ScreenWidget.data(
        title,
        ScreenData(
          rows: [for (final (i, t) in songs.indexed) ('${i + 1}', t)],
          columns: 1,
        ),
      ),
    ];
  }

  List<ScreenWidget> _links(MalExtras? extras) {
    final links = extras?.links ?? const [];
    if (links.isEmpty) return const [];
    final byName = {for (final (name, url) in links) name: url};
    return [
      ScreenWidget.data(
        'Links',
        ScreenData(
          chips: byName.keys.toList(),
          onChipTap: (name) => openLinkInBrowser(byName[name]!),
        ),
      ),
    ];
  }
}

import 'package:flutter/material.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Screen/Review/ReviewsShelf.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../Auth.dart';
import 'ListEditor.dart';
import 'ThemeSongs.dart';
import '../Data/Mapper.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

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
        ScreenWidget.data(getString.synopsis, ScreenData(text: description)),
      ScreenWidget.data(getString.details, ScreenData(rows: _rows(m, extras))),
      ..._community(extras),
      ...nameSections(m),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          getString.genres,
          ScreenData(chips: m.genres, onChipTap: host.search),
        ),
      ..._themes(getString.openings, m.anime?.op),
      ..._themes(getString.endings, m.anime?.ed),
      if ((extras?.background ?? '').trim().isNotEmpty)
        ScreenWidget.data(
          getString.background,
          ScreenData(text: extras!.background!.trim()),
        ),
      ...linkChips(getString.links, extras?.links),
      ScreenWidget.extra(
        ReviewsShelf(key: ValueKey('reviews-${m.id}'), media: m, view: this),
      ),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters(getString.characters, m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff(getString.staff, m.staff),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.relations, m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.recommendations, m.recommendations),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = malExtras[m];
    return [
      if ((m.meanScore ?? 0) > 0)
        (getString.score, (m.meanScore! / 10).toStringAsFixed(2)),
      if (extras?.rank != null) (getString.rank, '#${extras!.rank}'),
      if ((m.popularity ?? 0) > 0)
        (getString.members, DetailStats.compact(m.popularity!)),
      if ((m.favourites ?? 0) > 0)
        (getString.favorites, DetailStats.compact(m.favourites!)),
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
      (m.isAnime ? getString.episodes : getString.chapters, total),
      if (extras?.volumes != null) (getString.volumes, '${extras!.volumes}'),
      if (m.format != null) (getString.format, m.format!.titleCase),
      if (m.source != null) (getString.source, m.source!.titleCase),
      if (m.status != null) (getString.status, m.status!.titleCase),
      if (duration != null)
        (getString.duration, getString.minutesPerEpisode(duration)),
      if (extras?.rating != null) (getString.rating, extras!.rating!),
      if (studio?.isNotEmpty ?? false) (getString.studio, studio!),
      for (final (name, role) in authors.take(4))
        (role.isEmpty ? 'Author' : role.titleCase, name),
      if (extras?.serialization.isNotEmpty ?? false)
        (getString.serialization, extras!.serialization.join(', ')),
      if (season != null && anime?.seasonYear != null)
        (getString.season, '${season.titleCase} ${anime!.seasonYear}'),
      if (extras?.broadcast?.isNotEmpty ?? false)
        (getString.broadcast, extras!.broadcast!.titleCase),
      if (m.startDate?.getFormattedDate() != null)
        (m.isAnime ? getString.aired : getString.published, airedRange(m)),
    ];
  }

  List<ScreenWidget> _community(MalExtras? extras) {
    if (extras == null) return const [];
    final labels = {
      'watching': getString.watching,
      'reading': getString.reading,
      'completed': getString.completed,
      'on_hold': getString.onHold,
      'dropped': getString.dropped,
      'plan_to_watch': getString.planned,
      'plan_to_read': getString.planned,
    };
    final rows = [
      if (extras.scoredBy != null) (getString.scoredBy, '${extras.scoredBy}'),
      if (extras.popularityRank != null)
        (getString.popularity, '#${extras.popularityRank}'),
      for (final e in extras.stats.entries)
        if (labels[e.key] != null && e.value > 0)
          (labels[e.key]!, '${e.value}'),
    ];
    return rows.isEmpty
        ? const []
        : [ScreenWidget.data(getString.community, ScreenData(rows: rows))];
  }

  List<ScreenWidget> _themes(String title, List<String>? songs) {
    if (songs == null || songs.isEmpty) return const [];
    return [ScreenWidget.extra(ThemeSongs(title: title, songs: songs))];
  }
}

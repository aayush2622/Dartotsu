import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Screen/Detail/Components/DetailRelated.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Screen/Review/ReactionsShelf.dart';
import '../../../../Screen/Review/ReviewsShelf.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../Auth.dart';
import '../Prefs.dart';
import '../Data/Mapper.dart';
import 'ListEditor.dart';

class KitsuDetailView extends DetailScreenView {
  KitsuDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => KitsuListEditorView(service);

  @override
  String? get sourceName => 'Kitsu';

  @override
  bool get canReact => kitsuAuth.isLoggedIn;

  @override
  Future<List<MediaReaction>> reactions(Media media) =>
      kitsuAuth.queries.reactions(media.id);

  @override
  Future<MediaReaction?> postReaction(Media media, String text) =>
      kitsuAuth.queries.postReaction(media, text);

  @override
  Future<bool?> voteReaction(MediaReaction reaction) =>
      kitsuAuth.queries.voteReaction(reaction);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final queries = kitsuAuth.queries;
    final base = host.media.value;
    if (KitsuPref.graphqlDetail.value) {
      final reviews = queries.getReviews(base.id);
      final detail = await queries.graphDetail(base.id);
      if (detail != null) {
        final media = detail.media
          ..cameFromContinue = base.cameFromContinue
          ..characters = detail.characters
          ..staff = detail.staff;
        host.update(media);
        yield _build(host);
        media.review = (await reviews).take(3).toList();
        host.update(media);
        yield _build(host);
        return;
      }
    }
    final characters = queries.characters(base);
    final staff = queries.staff(base);
    final reviews = queries.getReviews(base.id);
    final full = await queries.mediaDetails(base);
    if (full != null) {
      host.update(full);
      yield _build(host);
    }
    final media = host.media.value;
    media.characters = await characters;
    host.update(media);
    yield _build(host);
    media.staff = await staff;
    host.update(media);
    yield _build(host);
    media.review = (await reviews).take(3).toList();
    host.update(media);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final extras = kitsuExtras[m];
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
      ...prequelSequelWidgets(host, m),
      ...linkChips(getString.links, extras?.links),
      ScreenWidget.extra(
        ReactionsShelf(
          key: ValueKey('reactions-${m.id}'),
          media: m,
          view: this,
        ),
      ),
      ScreenWidget.extra(
        ReviewsShelf(key: ValueKey('reviews-${m.id}'), media: m, view: this),
      ),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters(getString.characters, m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff(getString.staff, m.staff),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media(getString.relations, m.relations),
    ];
  }

  List<(String, String)> _stats(Media m) {
    final extras = kitsuExtras[m];
    return [
      if ((m.meanScore ?? 0) > 0)
        (getString.score, (m.meanScore! / 10).toStringAsFixed(2)),
      if (extras?.ratingRank != null)
        (getString.rank, '#${extras!.ratingRank}'),
      if ((m.popularity ?? 0) > 0)
        (getString.members, DetailStats.compact(m.popularity!)),
      if ((m.favourites ?? 0) > 0)
        (getString.favorites, DetailStats.compact(m.favourites!)),
    ];
  }

  List<(String, String)> _rows(Media m, KitsuExtras? extras) {
    final anime = m.anime;
    final studio = anime?.studio?.name;
    final season = anime?.season;
    final duration = anime?.episodeDuration;
    return [
      (
        m.isAnime ? getString.episodes : getString.chapters,
        m.totalUnits?.toString() ?? '~',
      ),
      if (extras?.volumes != null) (getString.volumes, '${extras!.volumes}'),
      if (m.format != null) (getString.format, m.format!.titleCase),
      if (m.status != null) (getString.status, m.status!.titleCase),
      if (duration != null)
        (getString.duration, getString.minutesPerEpisode(duration)),
      if (extras?.ageRating != null)
        (
          getString.rating,
          [
            extras!.ageRating!,
            if ((extras.ageGuide ?? '').isNotEmpty) extras.ageGuide!,
          ].join(' · '),
        ),
      if (studio?.isNotEmpty ?? false) (getString.studio, studio!),
      if (season != null && anime?.seasonYear != null)
        (getString.season, '${season.titleCase} ${anime!.seasonYear}'),
      if (m.startDate?.getFormattedDate() != null)
        (m.isAnime ? getString.aired : getString.published, airedRange(m)),
    ];
  }

  List<ScreenWidget> _community(KitsuExtras? extras) {
    if (extras == null) return const [];
    final rows = [
      if ((extras.scoredBy ?? 0) > 0)
        (getString.scoredBy, '${extras.scoredBy}'),
      if (extras.popularityRank != null)
        (getString.popularity, '#${extras.popularityRank}'),
    ];
    return rows.isEmpty
        ? const []
        : [ScreenWidget.data(getString.community, ScreenData(rows: rows))];
  }
}

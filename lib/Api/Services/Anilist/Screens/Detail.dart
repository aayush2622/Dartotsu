import 'package:flutter/widgets.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Screen/Detail/Components/DetailSections.dart';
import '../../../../Screen/Detail/Components/DetailStats.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../Auth.dart';
import '../Data/Media.dart';
import '../Data/User.dart';
import '../../../../Screen/Review/ReviewsShelf.dart';
import '../Widgets/FollowersShelf.dart';
import '../Widgets/StudioChip.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class AnilistDetailView extends DetailScreenView {
  AnilistDetailView(super.service);

  @override
  ListEditorScreenView get listEditor => AnilistListEditorView(service);

  @override
  bool get canRateReviews => true;

  @override
  Future<Review?> rateReview(Review review, ReviewVote vote) async {
    final data = await anilistAuth.mutations.rateReview(
      review.id,
      switch (vote) {
        ReviewVote.up => 'UP_VOTE',
        ReviewVote.down => 'DOWN_VOTE',
        ReviewVote.none => 'NO_VOTE',
      },
    );
    if (data == null) return null;
    return Review(
      id: review.id,
      mediaId: review.mediaId,
      mediaType: review.mediaType,
      rating: data['rating'] as int?,
      ratingAmount: data['ratingAmount'] as int?,
      userRating: data['userRating'] as String?,
    );
  }

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final full = await anilistAuth.queries.mediaDetails(host.media.value);
    if (full == null) return;
    host.update(full);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final description = (m.description ?? '').trim();
    return [
      ScreenWidget.extra(DetailStats(host)),
      if (description.isNotEmpty)
        ScreenWidget.data(
          getString.synopsis,
          ScreenData(
            html: description.contains('<')
                ? description
                : description.replaceAll('\n', '<br>'),
          ),
        ),
      ..._info(m),
      if (m.anime?.studio != null)
        ScreenWidget.extra(
          StudioChip(service: service, studio: m.anime!.studio!),
        ),
      ...nameSections(m),
      ..._followers(m),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          getString.genres,
          ScreenData(
            chips: m.genres,
            onChipTap: (genre) => host.filter(genre: genre),
          ),
        ),
      ..._tags(m, host),
      ScreenWidget.extra(
        ReviewsShelf(key: ValueKey('reviews-${m.id}'), media: m, view: this),
      ),
      ..._sequels(m),
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

  List<ScreenWidget> _info(Media m) {
    final anime = m.anime;
    final airing = anime?.nextAiringEpisode;
    final total = m.totalUnits?.toString() ?? '~';
    final count = airing != null && airing != -1 ? '$airing | $total' : total;
    final studio = anime?.studio?.name;
    final author = (anime?.author ?? m.manga?.author)?.name;
    final season = anime?.season;
    final rows = [
      (m.isAnime ? getString.episodes : getString.chapters, count),
      if (m.format != null) (getString.format, m.format!.titleCase),
      if (m.source != null) (getString.source, m.source!.titleCase),
      if (studio?.isNotEmpty ?? false) (getString.studio, studio!),
      if (author?.isNotEmpty ?? false) (getString.author, author!),
      if (season != null && anime?.seasonYear != null)
        (getString.season, '${season.titleCase} ${anime!.seasonYear}'),
      if (m.countryOfOrigin != null) (getString.country, m.countryOfOrigin!),
      if (m.startDate?.getFormattedDate() != null)
        (getString.aired, airedRange(m)),
    ];
    return [ScreenWidget.data(getString.details, ScreenData(rows: rows))];
  }

  List<ScreenWidget> _followers(Media m) {
    final users = m.users;
    if (users == null || users.isEmpty) return const [];
    return [
      ScreenWidget.extra(
        FollowersShelf(
          media: m,
          users: users,
          me: anilistAuth.user.value?.name,
          service: service,
        ),
      ),
    ];
  }

  List<ScreenWidget> _sequels(Media m) {
    final related = [
      if (m.prequel != null) m.prequel!,
      if (m.sequel != null) m.sequel!,
    ];
    return related.isEmpty
        ? const []
        : [ScreenWidget.media(getString.prequelSequel, related)];
  }

  List<ScreenWidget> _tags(Media m, DetailHost host) {
    if (m.tags.isEmpty) return const [];
    double rank(String tag) =>
        double.tryParse(tag.split(' : ').last.replaceAll('%', '').trim()) ?? 0;
    final sorted = m.tags.toList()..sort((a, b) => rank(b).compareTo(rank(a)));
    return [
      ScreenWidget.data(
        getString.tags,
        ScreenData(
          chips: [for (final t in sorted) t.replaceFirst(' : ', '  ')],
          onChipTap: (chip) => host.filter(tag: chip.split('  ').first),
        ),
      ),
    ];
  }
}

class AnilistListEditorView extends ListEditorScreenView {
  AnilistListEditorView(super.service);

  @override
  bool get advanced => true;

  @override
  Map<String, bool> customLists(Media media) {
    final user = anilistAuth.user.value;
    return {
      if (user is AnilistUser)
        for (final name
            in media.isAnime ? user.animeCustomLists : user.mangaCustomLists)
          name: false,
      if (media is AnilistMedia) ...media.inCustomListsOf,
    };
  }
}

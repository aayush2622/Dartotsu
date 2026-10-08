import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../Auth.dart';
import '../Queries.dart';

class MalFeedView extends FeedScreenView {
  MalFeedView(super.service);

  @override
  int sectionType(MediaType type, String title) => switch (title) {
    'Trending Now' => 1,
    'Most Popular' => 3,
    'Upcoming' || 'Top Novels' => 2,
    _ => 0,
  };

  @override
  List<FeedChip> chips(MediaType type) => type.isVideo
      ? const [
          FeedChip('previous', 'Previous season'),
          FeedChip('current', 'This season'),
          FeedChip('next', 'Next season'),
        ]
      : const [
          FeedChip('manga', 'Manga'),
          FeedChip('manhwa', 'Manhwa'),
          FeedChip('manhua', 'Manhua'),
          FeedChip('novel', 'Novels'),
        ];

  @override
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) {
    final queries = malAuth.queries;
    if (!type.isVideo) return queries.topPicks(chip.id);
    return queries.seasonPicks(switch (chip.id) {
      'previous' => -1,
      'next' => 1,
      _ => 0,
    });
  }

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final anime = type.isVideo;
    final sections = malSections(anime: anime);
    final queries = malAuth.queries;
    return sectionWidgets(
      queries.browseJobs(anime: anime),
      build: (title, media) {
        final section = sections.firstWhere((s) => s.title == title);
        return ScreenWidget.media(
          title,
          media,
          sectionType: sectionType(type, title),
          onLoadMore: (page) => queries.sectionPage(section, anime, page: page),
        );
      },
    );
  }
}

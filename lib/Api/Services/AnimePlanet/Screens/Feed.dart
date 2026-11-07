import '../../../../Core/Services/MediaService.dart';
import '../AnimePlanetService.dart';
import '../Queries.dart';

class AnimePlanetFeedView extends FeedScreenView {
  AnimePlanetFeedView(super.service);

  AnimePlanetQueries get _queries => animePlanetQueries;

  @override
  int sectionType(MediaType type, String title) =>
      title == 'Trending Now' ? 1 : 0;

  @override
  List<int> skeleton(MediaType type) => [
    for (final s in animePlanetSectionsShown(type)) sectionType(type, s.title),
  ];

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    return sectionWidgets(
      _queries.browseJobsFor(type),
      build: (title, media) {
        final section = animePlanetSectionsFor(type)
            .firstWhere((s) => s.title == title);
        return ScreenWidget.media(
          title,
          media,
          sectionType: sectionType(type, title),
          onLoadMore: (page) => _queries.sectionPage(section, page: page),
        );
      },
    );
  }
}

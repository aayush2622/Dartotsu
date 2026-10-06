import '../../../../Core/Services/MediaService.dart';
import '../ExtensionQueries.dart';
import '../ExtensionServices.dart';
import '../Widgets/ExtensionMediaSection.dart';

class ExtensionFeedView extends FeedScreenView {
  final ExtensionQueries queries;

  ExtensionFeedView(super.service, this.queries);

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) async* {
    await ensureSourcesReady(itemTypeOf(type));
    yield* sectionWidgets(
      queries.browseJobsFor(itemTypeOf(type)),
      build: (title, media) => ScreenWidget.media(
        title,
        media,
        section: (data) => ExtensionMediaSection(data: data),
        onLoadMore: (page) => queries.loadMore(type, title, page),
      ),
    );
  }
}

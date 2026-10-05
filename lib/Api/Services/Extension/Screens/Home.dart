import '../../../../Core/Services/MediaService.dart';
import '../../../../Screen/Extension/Widgets/ExtensionSourcesRail.dart';
import '../ExtensionQueries.dart';
import '../Widgets/ExtensionMediaSection.dart';

class ExtensionHomeView extends HomeScreenView {
  final ExtensionQueries queries;

  ExtensionHomeView(super.service, this.queries);

  @override
  Stream<List<ScreenWidget>> screenStream() async* {
    const rail = ScreenWidget.extra(ExtensionSourcesRail());
    yield const [rail];
    await for (final sections in sectionWidgets(
      queries.homeJobs(),
      build: (title, media) => ScreenWidget.media(
        title,
        media,
        section: (data) => ExtensionMediaSection(data: data),
      ),
    )) {
      yield [rail, ...sections];
    }
  }
}

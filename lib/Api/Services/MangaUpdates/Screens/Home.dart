import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class MangaUpdatesHomeView extends HomeScreenView {
  MangaUpdatesHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() {
    if (!mangaUpdatesAuth.isLoggedIn) return super.screenStream();
    return sectionWidgets(
      mangaUpdatesAuth.queries.homeJobs(),
      build: ScreenWidget.media,
    );
  }
}

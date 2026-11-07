import '../../../../Core/Services/MediaService.dart';
import '../AnimePlanetService.dart';

class AnimePlanetHomeView extends HomeScreenView {
  AnimePlanetHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() {
    if (!service.isLoggedIn) return super.screenStream();
    return sectionWidgets(
      animePlanetQueries.homeJobs(),
      build: ScreenWidget.media,
    );
  }
}

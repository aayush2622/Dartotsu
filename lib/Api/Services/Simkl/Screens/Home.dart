import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class SimklHomeView extends HomeScreenView {
  SimklHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() {
    if (!simklAuth.isLoggedIn) return super.screenStream();
    return sectionWidgets(
      simklAuth.queries.homeJobs(),
      build: ScreenWidget.media,
    );
  }
}

import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class MalHomeView extends HomeScreenView {
  MalHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() {
    if (!malAuth.isLoggedIn) return super.screenStream();
    return sectionWidgets(
      malAuth.queries.homeJobs(),
      build: ScreenWidget.media,
    );
  }
}

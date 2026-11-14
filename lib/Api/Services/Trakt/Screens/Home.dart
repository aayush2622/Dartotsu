import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class TraktHomeView extends HomeScreenView {
  TraktHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() {
    if (!traktAuth.isLoggedIn) return super.screenStream();
    return sectionWidgets(
      traktAuth.queries.homeJobs(),
      build: ScreenWidget.media,
    );
  }
}

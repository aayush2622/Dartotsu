import '../../../../Core/Services/MediaService.dart';
import '../AnilistAuth.dart';

class AnilistHomeView extends HomeScreenView {
  AnilistHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() {
    if (!anilistAuth.isLoggedIn) return super.screenStream();
    return sectionWidgets(
      anilistAuth.queries.homeJobs(),
      parallel: false,
      build: ScreenWidget.media,
    );
  }

  @override
  Future<List<String?>> bannerImages() => anilistAuth.queries.getBannerImages();
}

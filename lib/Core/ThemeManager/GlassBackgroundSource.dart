import '../Preferences/PrefManager.dart';
import '../Services/MediaServiceController.dart';
import '../State/State.dart';

const kFallbackGlassBackground =
    'https://i.pinimg.com/1200x/b2/e7/7f/b2e77f955c3d39655cc7a46802f94748.jpg';

String resolveGlassBackground() {
  final custom = PrefName.glassBackgroundUrl.rx.value.trim();
  if (custom.isNotEmpty) return custom;
  final banner = tryFind<MediaServiceController>()?.currentBanner;
  if (banner != null && banner.isNotEmpty) return banner;
  return kFallbackGlassBackground;
}

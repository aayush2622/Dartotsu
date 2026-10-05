import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Screen/Detail/DetailWidgets.dart';

class ExtensionDetailView extends DetailScreenView {
  ExtensionDetailView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield defaultDetailWidgets(host);
    final media = host.media.value;
    final source = media.sourceData;
    if (source == null) return;

    final detail = await source.methods.getDetail(
      DMedia.withUrl(media.shareLink),
    );

    if (detail.description?.isNotEmpty == true) {
      media.description = detail.description;
    }
    if (detail.cover?.isNotEmpty == true) media.cover = detail.cover;
    if (detail.genre?.isNotEmpty ?? false) media.genres = detail.genre!;

    final units = detail.episodes?.length;
    if (units != null && units > 0) {
      media.anime?.totalEpisodes = units;
      media.manga?.totalChapters = units;
    }
    host.update(media);
    yield defaultDetailWidgets(host);
  }
}

import '../../../../Core/Services/MediaService.dart';
import '../../../../Screen/Detail/DetailWidgets.dart';
import '../ExtensionQueries.dart';

class ExtensionDetailView extends DetailScreenView {
  final ExtensionQueries queries;

  ExtensionDetailView(super.service, this.queries);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield defaultDetailWidgets(host);
    if (host.cached || host.media.value.sourceData == null) return;
    final media = await queries.mediaDetails(host.media.value);
    if (media == null) return;
    host.update(media);
    yield defaultDetailWidgets(host);
  }
}

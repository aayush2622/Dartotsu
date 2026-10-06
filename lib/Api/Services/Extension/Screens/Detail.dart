import '../../../../Core/Services/MediaService.dart';
import '../../../../Screen/Detail/DetailWidgets.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../Queries.dart';
import '../Services.dart';

class ExtensionDetailView extends DetailScreenView {
  final ExtensionQueries queries;

  ExtensionDetailView(super.service, this.queries);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield defaultDetailWidgets(host);
    final source = host.media.value.sourceData;
    if (host.cached || source == null) return;
    if (!isSourceInstalled(source)) {
      snackString(
        'The extension for ${source.name ?? 'this source'} is not installed',
      );
      return;
    }
    final media = await queries.mediaDetails(host.media.value);
    if (media == null) return;
    host.update(media);
    yield defaultDetailWidgets(host);
  }
}

import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Screens/ServiceScreens.dart';
import '../Data/Mapper.dart';

class MangaBakaListEditorView extends TrackerListEditorView {
  MangaBakaListEditorView(super.service);

  @override
  bool get hasPrivate => true;

  @override
  bool get hasVolumes => true;

  @override
  int? volumeTotal(Media media) =>
      int.tryParse(mangaBakaExtras[media]?.finalVolume ?? '');
}

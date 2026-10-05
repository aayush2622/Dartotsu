import '../../Core/Services/Screens/DetailHost.dart';
import '../../Core/Services/Screens/ScreenWidget.dart';
import '../../Utils/Extensions/StringExtensions.dart';

List<ScreenWidget> defaultDetailWidgets(DetailHost host) {
  final m = host.media.value;
  final description = (m.description ?? '').trim();
  return [
    if (description.isNotEmpty)
      ScreenWidget.data('Synopsis', ScreenData(text: description.stripHtml)),
    if (m.genres.isNotEmpty)
      ScreenWidget.data(
        'Genres',
        ScreenData(chips: m.genres, onChipTap: host.search),
      ),
  ];
}

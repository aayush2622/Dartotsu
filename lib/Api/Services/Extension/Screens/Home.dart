import '../../../../Core/Services/MediaService.dart';
import '../../../../Screen/Extension/Widgets/ExtensionSourcesRail.dart';
import '../ExtensionServices.dart';
import '../Widgets/ExtensionMediaSection.dart';

class ExtensionHomeView extends HomeScreenView {
  ExtensionHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() async* {
    yield const [ScreenWidget.extra(ExtensionSourcesRail())];
    final sections = filterUninstalled(await localSections());
    yield [
      const ScreenWidget.extra(ExtensionSourcesRail()),
      for (final e in sections.entries)
        ScreenWidget.media(
          e.key,
          e.value,
          section: (data) => ExtensionMediaSection(data: data),
        ),
    ];
  }
}

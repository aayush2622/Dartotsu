import 'package:collection/collection.dart';

import '../../Api/Services/Anilist/AnilistService.dart';
import '../../Api/Services/Extension/ExtensionService.dart';
import '../../Api/Services/Kitsu/KitsuService.dart';
import '../../Api/Services/MangaBaka/MangaBakaService.dart';
import '../../Api/Services/AnimePlanet/AnimePlanetService.dart';
import '../../Api/Services/Comick/ComickService.dart';
import '../../Api/Services/MangaUpdates/MangaUpdatesService.dart';
import '../../Api/Services/MyAnimeList/MalService.dart';
import '../../Api/Services/Simkl/SimklService.dart';
import '../../Api/Services/Trakt/TraktService.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Preferences/PrefManager.dart';
import 'MediaService.dart';

export 'MediaService.dart';
import '../State/State.dart';
import '../ThemeManager/LanguageSwitcher.dart';

class MediaServiceController extends AppController {
  final services = <MediaService>[].liveList;

  late final Live<MediaService> currentService;

  String? get currentBanner => currentService.value.auth?.user.value?.banner;

  Map<String, String> get accounts => {
    for (final service in services)
      if (service.auth?.user.value != null)
        service.name: service.auth!.user.value!.name,
  };

  @override
  void onInit() {
    super.onInit();

    services.assignAll([
      AnilistService(),
      MalService(),
      SimklService(),
      TraktService(),
      KitsuService(),
      MangaBakaService(),
      MangaUpdatesService(),
      AnimePlanetService(),
      ComickService(),
      ExtensionService(),
    ]);

    currentService = Live<MediaService>(
      _byId(PrefName.service.value) ?? services.first,
    );
  }

  List<MediaService> get ordered {
    final order = {
      for (final (i, id) in PrefName.serviceOrder.rx.value.indexed) id: i,
    };
    final base = {for (final (i, s) in services.indexed) s.id: i};
    return services.toList()..sort(
      (a, b) => (order[a.id] ?? 1000 + base[a.id]!).compareTo(
        order[b.id] ?? 1000 + base[b.id]!,
      ),
    );
  }

  List<MediaService> get shown {
    final hidden = PrefName.servicesHidden.rx.value;
    final list = ordered.where((s) => !hidden.contains(s.id)).toList();
    return list.isEmpty ? ordered.take(1).toList() : list;
  }

  bool isShown(String id) => shown.any((s) => s.id == id);

  void reorderServices(int from, int to) {
    final list = ordered.map((s) => s.id).toList();
    if (to > from) to -= 1;
    list.insert(to, list.removeAt(from));
    PrefName.serviceOrder.rx.value = list;
  }

  void setServiceShown(String id, bool on) {
    final hidden = [...PrefName.servicesHidden.rx.value]..remove(id);
    if (!on) {
      if (shown.length < 2 && isShown(id)) return;
      hidden.add(id);
    }
    PrefName.servicesHidden.rx.value = hidden;
    if (!on && currentService.value.id == id) {
      switchService(shown.first.id);
    }
  }

  void switchService(String id) {
    final next = _byId(id);
    if (next == null) {
      snackString(getString.serviceNotFound(id));
      return;
    }
    currentService.value = next;
    PrefName.service.value = id;
  }

  MediaService? _byId(String id) =>
      services.firstWhereOrNull((s) => s.id == id);
}

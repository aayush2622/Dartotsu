import 'package:collection/collection.dart';

import '../../Api/Services/Anilist/AnilistService.dart';
import '../../Api/Services/Extension/ExtensionService.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Preferences/PrefManager.dart';
import 'MediaService.dart';

export 'MediaService.dart';
import '../State/State.dart';

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

    services.assignAll([AnilistService(), ExtensionService()]);

    currentService = Live<MediaService>(
      _byId(PrefName.service.value) ?? services.first,
    );
  }

  void switchService(String id) {
    final next = _byId(id);
    if (next == null) {
      snackString('Service "$id" not found');
      return;
    }
    currentService.value = next;
    PrefName.service.value = id;
  }

  MediaService? _byId(String id) =>
      services.firstWhereOrNull((s) => s.id == id);
}

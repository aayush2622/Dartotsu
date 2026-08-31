import 'package:get/get.dart';

import '../../Api/Services/Anilist/AnilistService.dart';
import '../../Api/Services/Extension/ExtensionService.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Preferences/PrefManager.dart';
import 'MediaService.dart';

export 'MediaService.dart';

class MediaServiceController extends GetxController {
  final services = <MediaService>[].obs;

  late final Rx<MediaService> currentService;

  @override
  void onInit() {
    super.onInit();

    services.assignAll([AnilistService(), ExtensionService()]);

    currentService = Rx<MediaService>(
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

  T? getAnyValue<T>(T? Function(MediaService service) selector) {
    for (final service in services) {
      final value = selector(service);
      if (value == null) continue;
      if (value is String && value.isEmpty) continue;
      return value;
    }
    return null;
  }

  T get<T extends MediaService>() => services.firstWhere(
        (s) => s is T,
        orElse: () => throw StateError('Service $T not registered'),
      ) as T;

  MediaService? _byId(String id) =>
      services.firstWhereOrNull((s) => s.id == id);
}

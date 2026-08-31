import 'package:get/get_navigation/src/root/parse_route.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Api/Services/Anilist/AnilistService.dart';
import '../../Api/Services/Extension/ExtensionService.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Utils/Functions/SnackBar.dart';

abstract class MediaService {
  String get name;

  String get iconPath;
}

class MediaServiceController extends GetxController {
  final services = <MediaService>[].obs;

  late final Rx<MediaService> currentService;

  @override
  void onInit() {
    super.onInit();

    services.assignAll([AnilistService(), ExtensionService()]);

    final preferred = loadData(PrefName.service);

    currentService = Rx<MediaService>(
      _findService(preferred) ?? services.first,
    );
  }

  void switchService(String serviceName) {
    final newService = _findService(serviceName);

    if (newService != null) {
      currentService.value = newService;
      saveData(PrefName.service, serviceName);
    } else {
      snackString("Service with name $serviceName not found");
    }
  }

  T? getAnyValue<T>(T? Function(MediaService manager) selector) {
    for (final manager in services) {
      final value = selector(manager);
      if (value != null) {
        if (value is String && value.isEmpty) continue;
        return value;
      }
    }
    return null;
  }

  T get<T extends MediaService>() {
    return services.firstWhere(
          (s) => s is T,
          orElse: () => throw StateError("Manager $T not registered."),
        )
        as T;
  }

  MediaService? _findService(String serviceName) {
    return services.firstWhereOrNull((s) => s.name == serviceName);
  }
}

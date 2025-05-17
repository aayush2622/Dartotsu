import 'package:collection/collection.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Theme/LanguageSwitcher.dart';
import '../Widgets/CustomBottomDialog.dart';
import '../Widgets/LoadSvg.dart';
import 'MediaService.dart';

class MediaServiceProvider with ChangeNotifier {
  late MediaService _currentService;

  MediaService get currentService => _currentService;

  MediaServiceProvider() {
    var preferredService = loadData(PrefName.source);
    _currentService =
        _findService(preferredService) ?? MediaService.allServices.first;
  }

  void switchService(String serviceName) {
    var newService = _findService(serviceName);
    if (newService != null) {
      _currentService = newService;
      saveData(PrefName.source, serviceName);
      notifyListeners();
    } else {
      throw Exception("Service with name $serviceName not found");
    }
  }

  MediaService? _findService(String serviceName) => MediaService.allServices
      .firstWhereOrNull((s) => s.runtimeType.toString() == serviceName);
}

void serviceSwitcher(BuildContext context) {
  List<MediaService> mediaServices = MediaService.allServices;
  var provider = Provider.of<MediaServiceProvider>(context, listen: false);
  var dialog = CustomBottomDialog(
    title: getString.selectMediaService,
    viewList: [
      ListView.builder(
        shrinkWrap: true,
        itemCount: mediaServices.length,
        itemBuilder: (context, index) {
          MediaService service = mediaServices[index];
          return ListTile(
            selected:
                provider.currentService.runtimeType == service.runtimeType,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
            leading: loadSvg(
              service.iconPath,
              width: 32.0,
              height: 32.0,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              service.getName,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              provider.switchService(service.runtimeType.toString());
              Navigator.pop(context);
            },
          );
        },
      ),
    ],
  );
  showCustomBottomDialog(context, dialog);
}

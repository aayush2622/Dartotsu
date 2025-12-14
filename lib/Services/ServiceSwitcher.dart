import 'package:flutter/material.dart';

import '../Functions/Functions/GetXFunctions.dart';
import '../Theme/LanguageSwitcher.dart';
import '../Widgets/CustomBottomDialog.dart';
import '../Widgets/LoadSvg.dart';
import 'MediaService.dart';

void serviceSwitcher(BuildContext context) {
  final mediaServices = find<MediaServiceController>();

  final dialog = CustomBottomDialog(
    title: getString.selectMediaService,
    viewList: [
      ListView.builder(
        shrinkWrap: true,
        itemCount: mediaServices.services.length,
        itemBuilder: (context, index) {
          final service = mediaServices.services[index];

          return ListTile(
            selected: mediaServices.currentService.value.runtimeType ==
                service.runtimeType,
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
              mediaServices.switchService(service.runtimeType.toString());
              Navigator.pop(context);
            },
          );
        },
      ),
    ],
  );

  showCustomBottomDialog(context, dialog);
}

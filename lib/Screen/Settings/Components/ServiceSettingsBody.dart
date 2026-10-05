import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/MediaServiceController.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../Widgets/SettingsAdaptor.dart';

class ServiceSettingsBody extends StatelessWidget {
  final MediaService service;

  const ServiceSettingsBody({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gap,
        Dimens.pagePad,
        Dimens.gapXl,
      ),
      child: Obx(
        () => SettingsAdaptor(settings: service.settingsView!.build(context)),
      ),
    );
  }
}

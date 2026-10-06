import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/MediaServiceController.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../Widgets/ScreenWidgetView.dart';

class ServiceSettingsBody extends StatelessWidget {
  final MediaService service;

  const ServiceSettingsBody({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: Dimens.gap, bottom: Dimens.gapXl),
      child: Obx(
        () => Column(
          children: [
            for (final w in service.settingsView!.widgets(context))
              ScreenWidgetView(w),
          ],
        ),
      ),
    );
  }
}

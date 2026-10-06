import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Services/MediaServiceController.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../Widgets/ScreenWidgetView.dart';

class ServiceSettingsBody extends StatefulWidget {
  final MediaService service;

  const ServiceSettingsBody({super.key, required this.service});

  @override
  State<ServiceSettingsBody> createState() => _ServiceSettingsBodyState();
}

class _ServiceSettingsBodyState extends State<ServiceSettingsBody> {
  final _anchor = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: Dimens.gap, bottom: Dimens.gapXl),
      child: Obx(() {
        _anchor.value;
        return Column(
          children: [
            for (final w in widget.service.settingsView!.widgets(context))
              ScreenWidgetView(w),
          ],
        );
      }),
    );
  }
}

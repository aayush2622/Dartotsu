import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Services/ServiceSwitcher.dart';
import 'package:dartotsu/Widgets/LoadSvg.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/CustomBottomDialog.dart';
import '../../Settings/SettingsBottomSheet.dart';
import 'AvtarWidget.dart';

class ServiceSwitcherBar extends StatelessWidget {
  final String title;

  const ServiceSwitcherBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    var service = context.currentService();
    return Padding(
      padding: EdgeInsets.fromLTRB(32, 36.statusBar(), 32, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => serviceSwitcher(context),
            child: loadSvg(
              service.iconPath,
              width: 38.0,
              height: 38.0,
              color: theme.onSurface,
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () =>
                showCustomBottomDialog(context, const SettingsBottomSheet()),
            child: const SettingIconWidget(icon: Icons.settings),
          ),
        ],
      ),
    );
  }
}

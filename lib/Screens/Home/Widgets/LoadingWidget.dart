import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/CustomBottomDialog.dart';
import '../../Settings/SettingsBottomSheet.dart';
import 'AvtarWidget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 34.0,
            right: 126.0,
            top: 64.statusBar(),
          ),
          width: double.infinity,
          child: const LinearProgressIndicator(),
        ),
        Positioned(
            right: 34,
            top: 36.statusBar(),
            child: GestureDetector(
              child: const SettingIconWidget(icon: Icons.settings),
              onTap: () =>
                  showCustomBottomDialog(context, const SettingsBottomSheet()),
            )),
      ],
    );
  }
}

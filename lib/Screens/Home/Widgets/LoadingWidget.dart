import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/CustomBottomDialog.dart';
import '../../Settings/SettingsBottomSheet.dart';
import 'AvtarWidget.dart';

class LoadingWidget extends StatelessWidget {
  final bool topPadding;
  final bool icon;

  const LoadingWidget({super.key, this.topPadding = true, this.icon = true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 34.0,
            right: 126.0,
            top: topPadding ? 36.statusBar() : 0,
          ),
          width: double.infinity,
          child: const LinearProgressIndicator(),
        ),
        if (icon)
          Positioned(
              right: 34,
              top: 36.statusBar(),
              child: GestureDetector(
                child: const AvatarWidget(icon: Icons.settings),
                onTap: () => showCustomBottomDialog(
                    context, const SettingsBottomSheet()),
              )),
      ],
    );
  }
}

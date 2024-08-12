import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';

import 'AvtarWidget.dart';

class LoadingWidget extends StatelessWidget {
  final ColorScheme theme;

  const LoadingWidget({super.key, required this.theme});

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
          child: AvatarWidget(
            theme: theme,
            icon: Icons.settings,
          ),
        ),
      ],
    );
  }
}
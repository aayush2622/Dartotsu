import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../Engine/PlayerSettings.dart';
import 'PlayerSubtitleView.dart';

class SubtitlePreview extends StatelessWidget {
  final PlayerSettings settings;

  const SubtitlePreview({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.gapSm),
      child: ClipRRect(
        borderRadius: Dimens.borderSm,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF5B6B8C),
                  Color(0xFFD9C7A5),
                  Color(0xFF3B4A3A),
                ],
              ),
            ),
            child: LayoutBuilder(
              builder: (context, box) => Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom:
                        settings.subtitleBottomPadding.toDouble() *
                        (box.maxWidth / 720),
                    left: 16,
                    right: 16,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Color(settings.subtitleBackgroundColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SubtitleText(
                      text: getString.playerSubtitlePreviewText,
                      settings: settings,
                      scale: (box.maxWidth / 720).clamp(0.55, 1.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

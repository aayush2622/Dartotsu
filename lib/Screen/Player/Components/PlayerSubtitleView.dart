import 'package:flutter/material.dart';

import '../../../Core/Fonts/AppFonts.dart';
import '../Engine/PlayerSettings.dart';
import '../Engine/SubtitleMarkup.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';

class PlayerSubtitleView extends StatelessWidget {
  final List<String> lines;
  final PlayerSettings settings;
  final bool controlsVisible;

  const PlayerSubtitleView({
    super.key,
    required this.lines,
    required this.settings,
    required this.controlsVisible,
  });

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final text = [
      for (final line in lines)
        if (line.trim().isNotEmpty) line.trim(),
    ].join('\n');

    if (text.isEmpty || !settings.showSubtitle) {
      return const SizedBox.shrink();
    }

    return _positioned(context, text);
  }

  Widget _positioned(BuildContext context, String text) {
    return AnimatedPositioned(
      duration: animDuration(200),
      left: 16,
      right: 16,
      top: 0,
      bottom: controlsVisible
          ? 110 + settings.subtitleBottomPadding.toDouble()
          : settings.subtitleBottomPadding.toDouble(),
      child: LayoutBuilder(
        builder: (context, box) {
          final scale = ((box.maxWidth + 32) / 720).clamp(0.55, 1.0);

          return RepaintBoundary(
            child: IgnorePointer(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Color(settings.subtitleBackgroundColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SubtitleText(
                    text: text,
                    settings: settings,
                    scale: scale,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SubtitleText extends StatelessWidget {
  final String text;
  final PlayerSettings settings;
  final double scale;

  const SubtitleText({
    super.key,
    required this.text,
    required this.settings,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) => Watch(() => _build());

  Widget _build() {
    fontsTick.value;
    final size = settings.subtitleSize * scale;
    final base = TextStyle(
      fontSize: size,
      fontWeight: FontWeight.values[settings.subtitleWeight.clamp(0, 8)],
      fontFamily: fontFamilyOf(settings.subtitleFont),
    );
    final width = settings.subtitleOutlineWidth * 2 * scale;
    final fill = Text.rich(
      TextSpan(children: subtitleSpans(text)),
      textAlign: TextAlign.center,
      style: base.copyWith(color: Color(settings.subtitleColor)),
    );
    if (width <= 0) return fill;
    final stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = width
      ..color = Color(settings.subtitleOutlineColor);
    return Stack(
      children: [
        Text.rich(
          TextSpan(children: subtitleSpans(text, stroke: stroke)),
          textAlign: TextAlign.center,
          style: base.copyWith(foreground: stroke),
        ),
        fill,
      ],
    );
  }
}

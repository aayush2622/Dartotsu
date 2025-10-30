import 'package:flutter/material.dart';

class TrackSection {
  final double start; // Value between 0.0 and 1.0
  final double end; // Value between 0.0 and 1.0
  final Color color;

  TrackSection({required this.start, required this.end, required this.color});
}

class TrackChapter {
  final double position; // Value between 0.0 and 1.0

  TrackChapter({required this.position});
}

class ColorPath {
  Path path;
  final Paint paint;

  void combine(Path otherPath, PathOperation operation) {
    path = Path.combine(operation, path, otherPath);
  }

  ColorPath({required this.path, required this.paint});
}

class SectionedRoundedRectSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  final List<TrackSection> sections;
  final List<TrackChapter> chapters;

  const SectionedRoundedRectSliderTrackShape({
    this.sections = const [],
    this.chapters = const [],
  });

  //Code taken from {@link RoundedRectSliderTrackShape} and modified to add sections + chapeters
  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 2,
  }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting can be a no-op.
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    // Assign the track segment paints, which are leading: active and
    // trailing: inactive.
    final ColorTween activeTrackColorTween = ColorTween(
      begin: sliderTheme.disabledActiveTrackColor,
      end: sliderTheme.activeTrackColor,
    );
    final ColorTween inactiveTrackColorTween = ColorTween(
      begin: sliderTheme.disabledInactiveTrackColor,
      end: sliderTheme.inactiveTrackColor,
    );
    final Paint activePaint = Paint()
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    final (Paint leftTrackPaint, Paint rightTrackPaint) =
        switch (textDirection) {
      TextDirection.ltr => (activePaint, inactivePaint),
      TextDirection.rtl => (inactivePaint, activePaint),
    };

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    final Radius trackRadius = Radius.circular(trackRect.height / 2);
    final Radius activeTrackRadius = Radius.circular(
      (trackRect.height + additionalActiveTrackHeight) / 2,
    );
    final bool isLTR = textDirection == TextDirection.ltr;
    final bool isRTL = textDirection == TextDirection.rtl;

    final List<ColorPath> drawPaths = [];

    final bool drawInactiveTrack =
        thumbCenter.dx < (trackRect.right - (sliderTheme.trackHeight! / 2));
    if (drawInactiveTrack) {
      final inactiveTrackPath = Path()
        ..addRRect(
          RRect.fromLTRBR(
            thumbCenter.dx - (sliderTheme.trackHeight! / 2),
            isRTL
                ? trackRect.top - (additionalActiveTrackHeight / 2)
                : trackRect.top,
            trackRect.right,
            isRTL
                ? trackRect.bottom + (additionalActiveTrackHeight / 2)
                : trackRect.bottom,
            isLTR ? trackRadius : activeTrackRadius,
          ),
        );

      drawPaths.add(ColorPath(path: inactiveTrackPath, paint: rightTrackPaint));
    }

    final bool drawActiveTrack =
        thumbCenter.dx > (trackRect.left + (sliderTheme.trackHeight! / 2));
    if (drawActiveTrack) {
      final activeTrackPath = Path()
        ..addRRect(
          RRect.fromLTRBR(
            trackRect.left,
            isLTR
                ? trackRect.top - (additionalActiveTrackHeight / 2)
                : trackRect.top,
            thumbCenter.dx + (sliderTheme.trackHeight! / 2),
            isLTR
                ? trackRect.bottom + (additionalActiveTrackHeight / 2)
                : trackRect.bottom,
            isLTR ? activeTrackRadius : trackRadius,
          ),
        );

      drawPaths.add(ColorPath(path: activeTrackPath, paint: leftTrackPaint));
    }

    final bool showSecondaryTrack = (secondaryOffset != null) &&
        (isLTR
            ? (secondaryOffset.dx > thumbCenter.dx)
            : (secondaryOffset.dx < thumbCenter.dx));

    if (showSecondaryTrack) {
      final ColorTween secondaryTrackColorTween = ColorTween(
        begin: sliderTheme.disabledSecondaryActiveTrackColor,
        end: sliderTheme.secondaryActiveTrackColor,
      );
      final Paint secondaryTrackPaint = Paint()
        ..color = secondaryTrackColorTween.evaluate(enableAnimation)!;

      final secondaryTrackPath = Path();

      if (isLTR) {
        secondaryTrackPath.addRRect(
          RRect.fromLTRBAndCorners(
            thumbCenter.dx,
            trackRect.top,
            secondaryOffset.dx,
            trackRect.bottom,
            topRight: trackRadius,
            bottomRight: trackRadius,
          ),
        );
      } else {
        secondaryTrackPath.addRRect(
          RRect.fromLTRBAndCorners(
            secondaryOffset.dx,
            trackRect.top,
            thumbCenter.dx,
            trackRect.bottom,
            topLeft: trackRadius,
            bottomLeft: trackRadius,
          ),
        );
      }

      drawPaths
          .add(ColorPath(path: secondaryTrackPath, paint: secondaryTrackPaint));
    }

    for (var section in sections) {
      final double sectionStartX =
          trackRect.left + section.start * trackRect.width;
      final double sectionEndX = trackRect.left + section.end * trackRect.width;
      final Paint sectionPaint = Paint()..color = section.color;

      final Path sectionPath = Path()
        ..addRRect(
          RRect.fromLTRBR(
            sectionStartX,
            isLTR
                ? trackRect.top - (additionalActiveTrackHeight / 2)
                : trackRect.top,
            sectionEndX,
            isLTR
                ? trackRect.bottom + (additionalActiveTrackHeight / 2)
                : trackRect.bottom,
            isLTR ? activeTrackRadius : trackRadius,
          ),
        );

      drawPaths.add(ColorPath(path: sectionPath, paint: sectionPaint));
    }

    for (var chapter in chapters) {
      final double chapterX =
          trackRect.left + chapter.position * trackRect.width;

      const double chapterWidth = 3.0;
      final Rect chapterRect = Rect.fromCenter(
        center: Offset(chapterX, trackRect.center.dy),
        width: chapterWidth,
        height: isLTR
            ? trackRect.height + additionalActiveTrackHeight
            : trackRect.height,
      );

      final chapterPath = Path()..addRect(chapterRect);

      for (var colorPath in drawPaths) {
        if (colorPath.path.getBounds().overlaps(chapterRect)) {
          colorPath.combine(chapterPath, PathOperation.difference);
        }
      }
    }

    for (var colorPath in drawPaths) {
      context.canvas.drawPath(
        colorPath.path,
        colorPath.paint,
      );
    }
  }

  @override
  bool get isRounded => true;
}

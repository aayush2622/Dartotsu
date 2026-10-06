import 'dart:math' as math;

import 'package:flutter/material.dart';

class ChartDatum {
  final String label;
  final double value;
  final String display;
  final String? id;

  const ChartDatum(this.label, this.value, this.display, {this.id});
}

List<Color> chartPalette(ColorScheme scheme, int count) {
  final base = HSLColor.fromColor(scheme.primary);
  final tertiary = HSLColor.fromColor(scheme.tertiary);
  final seeds = <Color>[
    scheme.primary,
    scheme.tertiary,
    scheme.secondary,
    tertiary.withHue((tertiary.hue + 60) % 360).toColor(),
    base.withHue((base.hue + 150) % 360).toColor(),
    base.withHue((base.hue + 210) % 360).toColor(),
  ];
  return [
    for (var i = 0; i < count; i++)
      i < seeds.length
          ? seeds[i]
          : HSLColor.fromAHSL(
              1,
              (base.hue + i * 47) % 360,
              (base.saturation.clamp(0.45, 0.8)),
              (base.lightness.clamp(0.5, 0.7)),
            ).toColor(),
  ];
}

String compactNumber(double v) {
  if (v.abs() >= 1000000) return '${(v / 1000000).toStringAsFixed(1)}M';
  if (v.abs() >= 1000) return '${(v / 1000).toStringAsFixed(1)}K';
  return v == v.roundToDouble() ? '${v.round()}' : v.toStringAsFixed(1);
}

double niceMax(double max) {
  if (max <= 0) return 1;
  final exp = math.pow(10, (math.log(max) / math.ln10).floor()).toDouble();
  final f = max / exp;
  final nice = f <= 1 ? 1 : (f <= 2 ? 2 : (f <= 5 ? 5 : 10));
  return nice * exp;
}

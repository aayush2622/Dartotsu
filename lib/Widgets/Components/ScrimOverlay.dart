import 'package:flutter/material.dart';

class ScrimOverlay extends StatelessWidget {
  final Gradient gradient;

  const ScrimOverlay({super.key, required this.gradient});

  @override
  Widget build(BuildContext context) => Positioned(
    left: 0,
    right: 0,
    top: 0,
    bottom: -4,
    child: DecoratedBox(decoration: BoxDecoration(gradient: gradient)),
  );
}

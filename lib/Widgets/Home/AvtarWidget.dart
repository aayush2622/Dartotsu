import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final ColorScheme theme;
  final IconData icon;

  const AvatarWidget({
    super.key,
    required this.theme,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52.0,
      height: 52.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: theme.onSurface,
          width: 0.2,
        ),
      ),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 26.0,
          child: Icon(icon, size: 32.0, color: theme.onSurface),
        ),
      ),
    );
  }
}
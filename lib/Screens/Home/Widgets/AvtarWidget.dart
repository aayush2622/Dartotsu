import 'package:flutter/material.dart';

class SettingIconWidget extends StatelessWidget {
  final IconData icon;

  const SettingIconWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return SizedBox(
      width: 52.0,
      height: 52.0,
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

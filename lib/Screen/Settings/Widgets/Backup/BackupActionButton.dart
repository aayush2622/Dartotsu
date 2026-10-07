import 'package:flutter/material.dart';
import '../../../../Core/State/State.dart';

class BackupActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Live<bool> busy;
  final VoidCallback onPressed;

  const BackupActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.busy,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Watch(
      () => SizedBox(
        width: double.infinity,
        child: FilledButton.icon(
          onPressed: busy.value ? null : onPressed,
          icon: busy.value
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Icon(icon),
          label: Text(label),
        ),
      ),
    );
  }
}

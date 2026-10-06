import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

class BackupActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final RxBool busy;
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
    return Obx(
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

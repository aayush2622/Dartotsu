import 'package:flutter/material.dart';

import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Core/State/State.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final Live<bool> hidden;
  final String? hint;
  final VoidCallback? onSubmitted;

  const PasswordField({
    super.key,
    required this.controller,
    required this.hidden,
    this.hint,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Watch(
      () => TextField(
        controller: controller,
        obscureText: hidden.value,
        onSubmitted: onSubmitted == null ? null : (_) => onSubmitted!(),
        decoration: InputDecoration(
          labelText: getString.backupPassword,
          hintText: hint,
          prefixIcon: const Icon(Icons.lock_outline_rounded),
          suffixIcon: IconButton(
            icon: Icon(
              hidden.value
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
            onPressed: () => hidden.value = !hidden.value,
          ),
        ),
      ),
    );
  }
}

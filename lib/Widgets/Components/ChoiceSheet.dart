import 'package:flutter/material.dart';

import 'AppSheet.dart';
import 'CustomBottomDialog.dart';
import 'SheetTile.dart';

class ChoiceOption<T> {
  final T value;
  final String label;

  const ChoiceOption(this.value, this.label);
}

Future<T?> showChoiceSheet<T>(
  BuildContext context, {
  required String title,
  required List<ChoiceOption<T>> options,
  required T selected,
}) => showCustomBottomDialog<T>(
  context,
  AppSheet(
    title: title,
    child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
      children: [
        for (final option in options)
          SheetTile(
            title: Text(option.label),
            selected: option.value == selected,
            trailing: option.value == selected
                ? const Icon(Icons.check_rounded)
                : null,
            onTap: () => Navigator.of(context).pop(option.value),
          ),
      ],
    ),
  ),
);

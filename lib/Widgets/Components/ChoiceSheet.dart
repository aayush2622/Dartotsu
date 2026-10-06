import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import 'CustomBottomDialog.dart';
import 'SheetTile.dart';
import 'ThemedContainer.dart';

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
  ClipRRect(
    borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
    child: ThemedContainer(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      padding: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: context.colorScheme.onSurface.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
              child: Text(title, style: context.textTheme.titleMedium),
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 12),
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
          ],
        ),
      ),
    ),
  ),
);

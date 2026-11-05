import 'package:flutter/material.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';

import 'AppSheet.dart';
import 'CachedNetworkImage.dart';
import 'CustomBottomDialog.dart';
import 'SheetTile.dart';

class ChoiceOption<T> {
  final T value;
  final String label;
  final String? subtitle;
  final IconData? icon;
  final String? imageUrl;

  const ChoiceOption(
    this.value,
    this.label, {
    this.subtitle,
    this.icon,
    this.imageUrl,
  });
}

Future<T?> showChoiceSheet<T>(
  BuildContext context, {
  required String title,
  required List<ChoiceOption<T>> options,
  required T selected,
  IconData? icon,
}) => showCustomBottomDialog<T>(
  context,
  AppSheet(
    title: title,
    child: Builder(
      builder: (sheet) => ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          for (var i = 0; i < options.length; i++)
            SheetTile(
              tinted: true,
              radius: groupedRadius(i, options.length),
              leading: _Leading(
                option: options[i],
                fallback: icon,
                selected: options[i].value == selected,
              ),
              title: Text(options[i].label),
              subtitle: options[i].subtitle == null
                  ? null
                  : Text(options[i].subtitle!),
              selected: options[i].value == selected,
              onTap: () => popPage(sheet, options[i].value),
            ),
        ],
      ),
    ),
  ),
);

Future<List<T>?> showMultiChoiceSheet<T>(
  BuildContext context, {
  required String title,
  required List<ChoiceOption<T>> options,
  Set<T> initial = const {},
  IconData? icon,
}) {
  final picked = {...initial}.live;
  return showCustomBottomDialog<List<T>>(
    context,
    AppSheet(
      title: title,
      child: Builder(
        builder: (sheet) => Watch(
          () => ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
            children: [
              for (var i = 0; i < options.length; i++)
                SheetTile(
                  tinted: true,
                  radius: groupedRadius(i, options.length),
                  leading: _Leading(
                    option: options[i],
                    fallback: icon,
                    selected: picked.value.contains(options[i].value),
                  ),
                  title: Text(options[i].label),
                  subtitle: options[i].subtitle == null
                      ? null
                      : Text(options[i].subtitle!),
                  selected: picked.value.contains(options[i].value),
                  trailing: Checkbox(
                    value: picked.value.contains(options[i].value),
                    onChanged: null,
                  ),
                  onTap: () {
                    final next = {...picked.value};
                    if (!next.remove(options[i].value)) {
                      next.add(options[i].value);
                    }
                    picked.value = next;
                  },
                ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () => popPage(sheet, [
                  for (final o in options)
                    if (picked.value.contains(o.value)) o.value,
                ]),
                child: Text(getString.done),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class _Leading<T> extends StatelessWidget {
  final ChoiceOption<T> option;
  final IconData? fallback;
  final bool selected;

  const _Leading({
    required this.option,
    required this.fallback,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final icon = option.icon ?? fallback;
    final letter = option.label.trim();
    final color = selected
        ? scheme.onPrimaryContainer
        : scheme.onSecondaryContainer;
    return Container(
      width: 36,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected
            ? scheme.primary.withValues(alpha: 0.18)
            : scheme.secondaryContainer,
        shape: BoxShape.circle,
      ),
      clipBehavior: Clip.antiAlias,
      child: (option.imageUrl ?? '').isNotEmpty
          ? cachedNetworkImage(
              imageUrl: option.imageUrl,
              width: 36,
              height: 36,
              fit: BoxFit.cover,
              errorWidget: (_, _, _) => _letter(context, letter, color),
            )
          : icon != null
          ? Icon(icon, size: 20, color: color)
          : _letter(context, letter, color),
    );
  }

  Widget _letter(BuildContext context, String letter, Color color) => Text(
    letter.isEmpty ? '?' : letter.characters.first.toUpperCase(),
    style: context.textTheme.titleSmall?.copyWith(
      color: color,
      fontWeight: FontWeight.w700,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Core/Shortcuts/KeyBindings.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';

String _groupName(BindingGroup group) => switch (group) {
  BindingGroup.app => getString.shortcutGroupApp,
  BindingGroup.player => getString.shortcutGroupPlayer,
  BindingGroup.reader => getString.shortcutGroupReader,
};

String _groupToggle(BindingGroup group) => switch (group) {
  BindingGroup.app => getString.shortcutsEnableApp,
  BindingGroup.player => getString.shortcutsEnablePlayer,
  BindingGroup.reader => getString.shortcutsEnableReader,
};

IconData _groupIcon(BindingGroup group) => switch (group) {
  BindingGroup.app => Icons.keyboard_rounded,
  BindingGroup.player => Icons.play_circle_outline_rounded,
  BindingGroup.reader => Icons.auto_stories_rounded,
};

String _keys(BindingAction action) {
  final chords = KeyBindings.of(action);
  return chords.isEmpty
      ? getString.shortcutNotSet
      : chords.map((c) => c.label).join('   ·   ');
}

List<Setting> shortcutSettings(BuildContext context) => [
  for (final group in BindingGroup.values) ...[
    Setting.header(_groupName(group)),
    Setting.switchType(
      name: _groupToggle(group),
      description: getString.shortcutsEnableDesc,
      icon: _groupIcon(group),
      isChecked: KeyBindings.enabled(group),
      onSwitchChange: (on) => KeyBindings.setEnabled(group, on),
    ),
    for (final action in KeyBindings.actions(group))
      Setting.normal(
        name: action.label,
        description: _keys(action),
        icon: KeyBindings.isCustom(action)
            ? Icons.edit_rounded
            : Icons.keyboard_command_key_rounded,
        isActivity: true,
        onClick: () => _edit(context, action),
      ),
    if (group == BindingGroup.player)
      Setting.normal(
        name: getString.shortcutSeekPercent,
        description: getString.shortcutSeekPercentKeys,
        icon: Icons.linear_scale_rounded,
      ),
  ],
  Setting.header(getString.shortcutResetAll),
  Setting.normal(
    name: getString.shortcutResetAll,
    description: getString.shortcutResetAllDesc,
    icon: Icons.restart_alt_rounded,
    onClick: KeyBindings.resetAll,
  ),
];

void _edit(BuildContext context, BindingAction action) {
  AlertDialogBuilder(context)
      .setTitle(action.label)
      .setCustomView(_ChordEditor(action: action))
      .setNeutralButton(
        getString.shortcutResetOne,
        () => KeyBindings.reset(action),
      )
      .setPositiveButton(getString.done, null)
      .show<void>();
}

class _ChordEditor extends StatelessWidget {
  final BindingAction action;

  const _ChordEditor({required this.action});

  void _add(BuildContext context) {
    AlertDialogBuilder(context)
        .setTitle(getString.shortcutPress)
        .setCustomView(
          _Capture(
            onChord: (chord) {
              final taken = KeyBindings.bind(action, chord);
              if (taken != null) {
                snackString(getString.shortcutTaken(taken.label));
              }
            },
          ),
        )
        .setNegativeButton(getString.cancel, null)
        .show<void>();
  }

  @override
  Widget build(BuildContext context) => Watch(() {
    final chords = KeyBindings.of(action);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (chords.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: Dimens.gapXs),
            child: Text(
              getString.shortcutNotSet,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        Wrap(
          spacing: Dimens.gap,
          runSpacing: Dimens.gapXs,
          children: [
            for (final chord in chords)
              InputChip(
                label: Text(chord.label),
                onDeleted: () => KeyBindings.unbind(action, chord),
              ),
            ActionChip(
              avatar: const Icon(Icons.add_rounded, size: 18),
              label: Text(getString.shortcutAddKey),
              onPressed: () => _add(context),
            ),
          ],
        ),
        SizedBox(height: Dimens.gap),
        Text(
          getString.shortcutPressHint,
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  });
}

class _Capture extends StatelessWidget {
  final ValueChanged<KeyChord> onChord;

  const _Capture({required this.onChord});

  @override
  Widget build(BuildContext context) => Focus(
    autofocus: true,
    onKeyEvent: (_, event) {
      if (event is KeyUpEvent) return KeyEventResult.handled;
      final chord = KeyChord.of(event);
      if (chord.isModifier) return KeyEventResult.handled;
      onChord(chord);
      popPage(context);
      return KeyEventResult.handled;
    },
    child: Center(
      child: Icon(
        Icons.keyboard_rounded,
        size: 48,
        color: context.colorScheme.primary,
      ),
    ),
  );
}

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_ui/material_ui.dart' as mui;

import '../../Widgets/Components/AlertDialogBuilder.dart';
import 'LanguageSwitcher.dart';

Future<Color?> showColorPickerDialog(
  BuildContext context,
  Color initialColor, {
  bool showTransparent = true,
}) {
  Color selectedColor = initialColor;
  // `Get.overlayContext` so the dialog always has a live MaterialLocalizations
  // ancestor regardless of which screen triggered it.
  final dialogContext = Get.overlayContext ?? context;

  return AlertDialogBuilder(dialogContext)
      .popOnFinish(false)
      .setTitle(getString.pickColor)
      .setCustomView(
        // `material_ui`'s ColorPicker/TextField look up a `mui.Material`
        // ancestor specifically — Flutter's own `Material` (which
        // AlertDialogBuilder already wraps content in) isn't enough.
        mui.Material(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: ColorPicker(
              wheelDiameter: 300,
              wheelWidth: 10,
              borderRadius: 24,
              color: selectedColor,
              onColorChanged: (Color color) {
                selectedColor = color;
              },
              pickersEnabled: const <ColorPickerType, bool>{
                ColorPickerType.primary: false,
                ColorPickerType.accent: true,
                ColorPickerType.wheel: true,
              },
              pickerTypeLabels: <ColorPickerType, String>{
                ColorPickerType.accent: getString.colorPickerDefault,
                ColorPickerType.wheel: getString.colorPickerCustom,
              },
              showColorName: false,
              showColorCode: true,
              colorCodeHasColor: true,
            ),
          ),
        ),
      )
      .setNeutralButton(
        showTransparent ? 'Transparent' : null,
        showTransparent
            ? () => Navigator.of(dialogContext).pop(Colors.transparent)
            : null,
      )
      .setNegativeButton('Cancel', () => Navigator.of(dialogContext).pop())
      .setPositiveButton(
        'Select',
        () => Navigator.of(dialogContext).pop(selectedColor),
      )
      .show<Color>();
}

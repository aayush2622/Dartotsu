import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_ui/material_ui.dart' as mui;

import 'LanguageSwitcher.dart';

Future<Color?> showColorPickerDialog(
  BuildContext context,
  Color initialColor, {
  bool showTransparent = true,
}) async {
  Color selectedColor = initialColor;
  final theme = Theme.of(context).colorScheme;
  final dialogContext = Get.overlayContext ?? context;
  final Color? result = await showDialog<Color>(
    context: dialogContext,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          getString.pickColor,
          style: TextStyle(color: theme.primary, fontWeight: FontWeight.bold),
        ),
        content: mui.Material(
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
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (showTransparent)
                TextButton(
                  child: Text(
                    'Transparent',
                    style: TextStyle(
                      color: theme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    selectedColor = Colors.transparent;
                    Navigator.of(context).pop(selectedColor);
                  },
                ),
              Row(
                children: [
                  TextButton(
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: theme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Select',
                      style: TextStyle(
                        color: theme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(selectedColor);
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      );
    },
  );
  return result;
}

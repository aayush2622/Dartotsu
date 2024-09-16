import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

Future<Color?> showColorPickerDialog(
    BuildContext context, Color initialColor) async {
  Color selectedColor = initialColor;
  var theme = Theme.of(context).colorScheme;
  final Color? result = await showDialog<Color>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Pick a color',style: TextStyle(color: theme.primary, fontWeight: FontWeight.bold)),
        content: SingleChildScrollView(
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
            pickerTypeLabels: const <ColorPickerType, String>{
              ColorPickerType.accent: 'Default',
              ColorPickerType.wheel: 'Custom',
            },
            showColorName: true,
            showColorCode: true,
            colorCodeHasColor: true,
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel',style: TextStyle(color: theme.primary, fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('Select',style: TextStyle(color: theme.primary, fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.of(context).pop(selectedColor);
            },
          ),
        ],
      );
    },
  );
  return result;
}

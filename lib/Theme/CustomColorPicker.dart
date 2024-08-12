import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

Future<Color?> showColorPickerDialog(
    BuildContext context, Color initialColor) async {
  Color selectedColor = initialColor;

  final Color? result = await showDialog<Color>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Pick a color'),
        content: MaterialPicker(
          pickerColor: selectedColor,
          onColorChanged: (Color color) {
            selectedColor = color;
          },
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Select'),
            onPressed: () {
              Navigator.of(context)
                  .pop(selectedColor);
            },
          ),
        ],
      );
    },
  );
  return result;
}

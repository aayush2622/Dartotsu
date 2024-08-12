import 'package:flutter/material.dart';

// Function to create a dropdown menu
Widget buildDropdownMenu({
  required BuildContext context,
  required String currentValue,
  required List<String> options,
  required void Function(String) onChanged,
  String? labelText,
  IconData? prefixIcon,
  double borderRadius = 8.0,
  EdgeInsetsGeometry? padding,
  Color? borderColor,
}) {
  return Padding(
    padding:
        padding ?? const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: InputDecorator(
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor ?? Colors.transparent),
        ),
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: currentValue,
          onChanged: (String? newValue) {
            if (newValue != null) {
              onChanged(newValue);
            }
          },
          items: options.map((String option) {
            final displayName = option[0].toUpperCase() + option.substring(1);
            return DropdownMenuItem<String>(
              value: option,
              child: Text(displayName,
                  style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w700)),
            );
          }).toList(),
        ),
      ),
    ),
  );
}

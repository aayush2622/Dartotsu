import 'package:flutter/material.dart';

class BuildDropdownMenu extends StatelessWidget {
  final String? value;
  final List<String> options;
  final ValueChanged<String?>? onChanged;
  final VoidCallback? onLongPress;
  final String? labelText;
  final IconData? prefixIcon;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Color? borderColor;
  final String? hintText;

  const BuildDropdownMenu({
    super.key,
    required this.options,
    this.value,
    this.onChanged,
    this.onLongPress,
    this.labelText,
    this.prefixIcon,
    this.borderRadius = 14,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.borderColor,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: padding,
      child: GestureDetector(
        onLongPress: onLongPress,
        child: DropdownButtonFormField<String>(
          value: options.contains(value) ? value : null,
          isExpanded: true,
          icon: const Icon(Icons.expand_more_rounded),
          menuMaxHeight: 300,
          dropdownColor: colorScheme.surface,
          hint: hintText != null
              ? Text(
                  hintText!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                )
              : null,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            labelText: labelText,
            filled: true,
            fillColor: colorScheme.surfaceContainerHighest.withOpacity(0.6),
            prefixIcon: prefixIcon != null ? Icon(prefixIcon, size: 20) : null,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: _border(colorScheme, false),
            enabledBorder: _border(colorScheme, false),
            focusedBorder: _border(colorScheme, true),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
          ),
          onChanged: onChanged,
          selectedItemBuilder: (BuildContext context) => options
              .map((String value) => Expanded(
                    child: Text(
                      value,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ))
              .toList(),
          items: options.map(_buildItem).toList(),
        ),
      ),
    );
  }

  OutlineInputBorder _border(ColorScheme scheme, bool focused) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: focused ? scheme.primary : (borderColor ?? Colors.transparent),
        width: focused ? 1.5 : 1,
      ),
    );
  }

  DropdownMenuItem<String> _buildItem(String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Icon(
              Icons.circle,
              size: 6,
              color: Colors.grey.shade400,
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                value,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

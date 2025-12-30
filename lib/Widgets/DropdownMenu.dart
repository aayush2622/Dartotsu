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
        child: DropdownMenu(
          requestFocusOnTap: false,
          enableSearch: false,
          enableFilter: false,
          keyboardType: TextInputType.none,
          focusNode: FocusNode(canRequestFocus: false),
          initialSelection: options.contains(value) ? value : null,
          expandedInsets: EdgeInsets.zero,
          menuHeight: 300,
          leadingIcon: prefixIcon != null ? Icon(prefixIcon, size: 20) : null,
          hintText: hintText,
          textStyle: theme.textTheme.labelLarge,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: theme.cardColor,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: _border(colorScheme, false),
            focusedBorder: _border(colorScheme, true),
          ),
          menuStyle: MenuStyle(
            elevation: const WidgetStatePropertyAll(6),
            backgroundColor: WidgetStatePropertyAll(theme.cardColor),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
          onSelected: onChanged,
          trailingIconFocusNode: null,
          dropdownMenuEntries: options
              .map(
                (e) => DropdownMenuEntry(
                  value: e,
                  label: e,
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    textStyle: WidgetStateProperty.resolveWith(
                      (states) => theme.textTheme.labelMedium?.copyWith(
                        color: states.contains(WidgetState.selected)
                            ? colorScheme.primary
                            : colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
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
}

import 'package:flutter/material.dart';

class AppDropdown extends StatefulWidget {
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

  const AppDropdown({
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
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  final _trailingFocus = FocusNode(
    canRequestFocus: true,
    descendantsAreTraversable: false,
  );

  @override
  void dispose() {
    _trailingFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final options = widget.options;

    return Padding(
      padding: widget.padding,
      child: GestureDetector(
        onLongPress: widget.onLongPress,
        child: DropdownMenu(
          requestFocusOnTap: true,
          enableSearch: false,
          enableFilter: false,
          keyboardType: TextInputType.none,
          initialSelection: options.contains(widget.value)
              ? widget.value
              : null,
          expandedInsets: EdgeInsets.zero,
          menuHeight: 300,
          leadingIcon: widget.prefixIcon != null
              ? Icon(widget.prefixIcon, size: 20)
              : null,
          hintText: widget.hintText,
          textStyle: theme.textTheme.labelLarge,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: theme.cardColor,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: _border(colorScheme, false),
            focusedBorder: _border(colorScheme, true),
          ),
          menuStyle: MenuStyle(
            padding: const WidgetStatePropertyAll(
              EdgeInsetsGeometry.symmetric(vertical: 6),
            ),
            elevation: const WidgetStatePropertyAll(6),
            backgroundColor: WidgetStatePropertyAll(theme.cardColor),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            ),
          ),
          onSelected: (v) {
            widget.onChanged?.call(v);
            FocusManager.instance.primaryFocus?.unfocus();
          },
          trailingIconFocusNode: _trailingFocus,
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
      borderRadius: BorderRadius.circular(widget.borderRadius),
      borderSide: BorderSide(
        color: focused
            ? scheme.primary
            : (widget.borderColor ?? Colors.transparent),
        width: focused ? 1.5 : 1,
      ),
    );
  }
}

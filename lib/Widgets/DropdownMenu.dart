import 'package:flutter/material.dart';

class buildDropdownMenu<T> extends StatefulWidget {
  final T? currentValue;
  final List<T>? options;
  final void Function(T)? onChanged;
  final void Function()? onLongPress;
  final String? labelText;
  final IconData? prefixIcon;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;
  final String? hintText;
  final bool Function(T)? isEnabled;
  final Widget Function(T)? trailingBuilder;
  final String Function(T)? labelBuilder;

  const buildDropdownMenu({
    super.key,
    this.currentValue,
    this.options,
    this.onChanged,
    this.onLongPress,
    this.labelText,
    this.prefixIcon,
    this.borderRadius = 8.0,
    this.padding,
    this.borderColor,
    this.hintText,
    this.isEnabled,
    this.labelBuilder,
    this.trailingBuilder,
  });

  @override
  State<buildDropdownMenu<T>> createState() => _BuildDropdownMenuState<T>();
}

class _BuildDropdownMenuState<T> extends State<buildDropdownMenu<T>> {
  T? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.currentValue;
  }

  @override
  void didUpdateWidget(covariant buildDropdownMenu<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.currentValue != widget.currentValue) {
      _selectedValue = widget.currentValue;
    }
    if (widget.options != null && !_contains(widget.options!, _selectedValue)) {
      _selectedValue = null;
    }
  }

  bool _contains(List<T> list, T? value) {
    if (value == null) return false;
    return list.contains(value);
  }

  @override
  Widget build(BuildContext context) {
    final options = widget.options ?? [];

    final validValue =
        _contains(options, _selectedValue) ? _selectedValue : null;

    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
          prefixIcon:
              widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
            ),
          ),
        ),
        child: GestureDetector(
          onLongPress: widget.onLongPress,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              isExpanded: true,
              focusColor: Colors.transparent,
              value: validValue,
              hint: Text(
                widget.hintText ?? '',
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onChanged: (T? newValue) {
                if (newValue == null) return;

                setState(() {
                  _selectedValue = newValue;
                });

                widget.onChanged?.call(newValue);
              },
              items: options.map((item) {
                final isEnabled = widget.isEnabled?.call(item) ?? true;

                final label =
                    widget.labelBuilder?.call(item) ?? item.toString();

                return DropdownMenuItem<T>(
                  value: item, // ✅ FIXED (no null values)
                  enabled: isEnabled,
                  child: Row(
                    children: [
                      Expanded(
                        child: Opacity(
                          opacity: isEnabled ? 1 : 0.5,
                          child: Text(
                            label,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      if (widget.trailingBuilder != null)
                        widget.trailingBuilder!(item),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

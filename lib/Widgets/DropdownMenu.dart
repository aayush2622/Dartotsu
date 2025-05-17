import 'package:flutter/material.dart';

// Stateful Widget for Dropdown Menu
class buildDropdownMenu extends StatefulWidget {
  final String? currentValue;
  final List<String>? options;
  final void Function(String)? onChanged;
  final String? labelText;
  final IconData? prefixIcon;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;
  final String? hintText;

  const buildDropdownMenu({
    super.key,
    this.currentValue,
    this.options,
    this.onChanged,
    this.labelText,
    this.prefixIcon,
    this.borderRadius = 8.0,
    this.padding,
    this.borderColor,
    this.hintText,
  });

  @override
  buildDropdownMenuState createState() => buildDropdownMenuState();
}

class buildDropdownMenuState extends State<buildDropdownMenu> {
  late String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.currentValue;
  }

  @override
  void didUpdateWidget(covariant buildDropdownMenu oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentValue != widget.currentValue) {
      setState(() {
        _selectedValue = widget.currentValue;
      });
    } else if (_selectedValue != widget.currentValue) {
      setState(() {
        _selectedValue = widget.currentValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
          contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide:
                BorderSide(color: widget.borderColor ?? Colors.transparent),
          ),
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          fillColor: Colors.transparent,
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            focusColor: Colors.transparent,
            hint: Text(
              widget.hintText ?? '',
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            isExpanded: true,
            value: widget.options?.contains(_selectedValue) == true
                ? _selectedValue
                : null,
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  _selectedValue = newValue;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(newValue);
                }
              }
            },
            items: widget.options?.map((String option) {
              final displayName = option[0].toUpperCase() + option.substring(1);
              return DropdownMenuItem(
                value: option,
                child: Text(
                  displayName,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

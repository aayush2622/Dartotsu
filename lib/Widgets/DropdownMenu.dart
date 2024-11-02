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
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: widget.labelText,
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
          child: DropdownButton<String>(
            focusColor: Colors.transparent,
            value: _selectedValue,
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
              return DropdownMenuItem<String>(
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

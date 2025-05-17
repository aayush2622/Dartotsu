import 'package:flutter/material.dart';

import '../../DataClass/Setting.dart';

class SettingItem extends StatefulWidget {
  final Setting setting;

  const SettingItem({super.key, required this.setting});

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    if (!widget.setting.isVisible) return const SizedBox.shrink();

    return ListTile(
      onTap: () {
        widget.setting.onClick?.call();
        setState(() {});
      },
      onLongPress: () {
        widget.setting.onLongClick?.call();
        setState(() {});
      },
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      title: Row(
        children: [
          if (widget.setting.icon != null) ...[
            Icon(widget.setting.icon, color: Theme.of(context).primaryColor),
            const SizedBox(width: 24.0),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.setting.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 6),
                if (widget.setting.description != null)
                  Text(
                    widget.setting.description!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                if (widget.setting.attach != null)
                  widget.setting.attach!(context),
              ],
            ),
          ),
        ],
      ),
      trailing: widget.setting.trailingIcon != null
          ? Icon(
              widget.setting.trailingIcon,
              color: Theme.of(context).primaryColor,
            )
          : widget.setting.isActivity
              ? Icon(
                  Icons.arrow_forward_ios,
                  color: Theme.of(context).primaryColor,
                )
              : null,
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
    );
  }
}

class SettingSwitchItem extends StatefulWidget {
  final Setting setting;

  const SettingSwitchItem({super.key, required this.setting});

  @override
  SettingSwitchItemState createState() => SettingSwitchItemState();
}

class SettingSwitchItemState extends State<SettingSwitchItem> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.setting.isChecked;
  }

  @override
  void didUpdateWidget(covariant SettingSwitchItem oldWidget) {
    if (oldWidget.setting.isChecked != widget.setting.isChecked) {
      setState(() => _isChecked = widget.setting.isChecked);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.setting.isVisible) return const SizedBox.shrink();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          final newValue = !_isChecked;
          setState(() => _isChecked = newValue);
          widget.setting.onSwitchChange?.call(newValue);
        },
        onLongPress: widget.setting.onLongClick,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              if (widget.setting.icon != null) ...[
                Icon(widget.setting.icon,
                    color: Theme.of(context).primaryColor),
                const SizedBox(width: 24.0),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.setting.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          child: Switch(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() => _isChecked = value);
                              widget.setting.onSwitchChange?.call(value);
                            },
                          ),
                        ),
                      ],
                    ),
                    if (widget.setting.description != null)
                      Text(
                        widget.setting.description!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    if (widget.setting.attach != null)
                      widget.setting.attach!(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingSliderItem extends StatefulWidget {
  final Setting setting;

  const SettingSliderItem({super.key, required this.setting});

  @override
  SettingSliderItemState createState() => SettingSliderItemState();
}

class SettingSliderItemState extends State<SettingSliderItem> {
  late int _sliderValue;

  @override
  void initState() {
    super.initState();
    _sliderValue = widget.setting.initialValue ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.setting.isVisible) return const SizedBox.shrink();
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(right: 8),
          title: Row(
            children: [
              if (widget.setting.icon != null) ...[
                Icon(widget.setting.icon,
                    color: Theme.of(context).primaryColor),
                const SizedBox(width: 24.0),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.setting.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: 6),
                    if (widget.setting.description != null)
                      Text(
                        widget.setting.description!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          trailing: Text(
            _sliderValue.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.setting.minValue?.toStringAsFixed(0) ?? '0',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: theme.colorScheme.primary,
                        inactiveTrackColor:
                            theme.colorScheme.onSurface.withOpacity(0.4),
                        thumbColor: theme.colorScheme.primary,
                        overlayColor:
                            theme.colorScheme.primary.withOpacity(0.2),
                        valueIndicatorColor: theme.colorScheme.primary,
                      ),
                      child: Slider.adaptive(
                        min: (widget.setting.minValue ?? 0).toDouble(),
                        max: (widget.setting.maxValue ?? 1).toDouble(),
                        value: _sliderValue.toDouble(),
                        divisions: (widget.setting.maxValue ?? 100.0).toInt(),
                        onChanged: (value) {
                          setState(() {
                            _sliderValue = value.toInt();
                          });
                          widget.setting.onSliderChange?.call(value.toInt());
                        },
                      ),
                    ),
                  ),
                  Text(
                    widget.setting.maxValue?.toStringAsFixed(0) ?? '100',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingInputBoxItem extends StatefulWidget {
  final Setting setting;

  const SettingInputBoxItem({super.key, required this.setting});

  @override
  SettingInputBoxItemState createState() => SettingInputBoxItemState();
}

class SettingInputBoxItemState extends State<SettingInputBoxItem> {
  late int _inputValue;

  @override
  void initState() {
    super.initState();
    _inputValue = widget.setting.initialValue ?? 0;
  }

  void _increaseValue() {
    if (_inputValue < (widget.setting.maxValue ?? double.maxFinite).toInt()) {
      setState(() {
        _inputValue++;
      });
      widget.setting.onInputChange?.call(_inputValue);
    }
  }

  void _decreaseValue() {
    if (_inputValue > (widget.setting.minValue ?? 0)) {
      setState(() {
        _inputValue--;
      });
      widget.setting.onInputChange?.call(_inputValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.setting.isVisible) return const SizedBox.shrink();

    return ListTile(
      title: Row(
        children: [
          if (widget.setting.icon != null) ...[
            Icon(widget.setting.icon, color: Theme.of(context).primaryColor),
            const SizedBox(width: 24.0),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.setting.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 6),
                if (widget.setting.description != null)
                  Text(
                    widget.setting.description!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
      trailing: widget.setting.type == SettingType.inputBox
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon:
                      Icon(Icons.remove, color: Theme.of(context).primaryColor),
                  onPressed: _decreaseValue,
                ),
                Text(
                  _inputValue.toString(),
                  style: const TextStyle(fontSize: 16.0),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Theme.of(context).primaryColor),
                  onPressed: _increaseValue,
                ),
              ],
            )
          : null,
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
    );
  }
}

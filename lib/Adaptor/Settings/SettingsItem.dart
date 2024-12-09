import 'package:flutter/material.dart';

import '../../DataClass/Setting.dart';

class SettingItem extends StatelessWidget {
  final Setting setting;

  const SettingItem({super.key, required this.setting});

  @override
  Widget build(BuildContext context) {
    // setting item type: normal
    if (!setting.isVisible) return const SizedBox.shrink();

    return ListTile(
      onTap: setting.onClick,
      onLongPress: setting.onLongClick,
      hoverColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),

      title: Row(
        children: [
          Icon(setting.icon, color: Theme.of(context).primaryColor),
          const SizedBox(width: 24.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  setting.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  setting.description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                ),
                if (setting.attach != null) setting.attach!(context),
              ],
            ),
          ),
        ],
      ),
      trailing: setting.isActivity
          ? Icon(Icons.arrow_forward_ios, color: Theme.of(context).primaryColor)
          : null,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8.0),
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
  late bool _isChecked; // Local state for the switch
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.setting.isChecked; // Initialize local state
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.setting.isVisible) return const SizedBox.shrink();

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
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
          decoration: BoxDecoration(
            color: _isHovered
                ? Theme.of(context).colorScheme.secondary.withOpacity(0.1)
                : Colors.transparent,
          ),
          child: Row(
            children: [
              Icon(widget.setting.icon, color: Theme.of(context).primaryColor),
              const SizedBox(width: 24.0),
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
                            value: _isChecked, // Use local state
                            onChanged: (value) {
                              setState(() => _isChecked = value); // Update local state
                              widget.setting.onSwitchChange?.call(value); // Trigger callback
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6.0),
                    Text(
                      widget.setting.description,
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

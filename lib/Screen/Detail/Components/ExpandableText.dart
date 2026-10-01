import '../../../Utils/Nav/DpadNav.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _expanded = false;

  void _toggle() => setState(() => _expanded = !_expanded);

  @override
  Widget build(BuildContext context) {
    final long = widget.text.length > 260;
    return DpadFocusable(
      onSelect: _toggle,
      builder: (_, state, child) => AnimatedScale(
        scale: kDpadFocused(state) ? 1.01 : 1.0,
        duration: Durations.short3,
        curve: Curves.easeOutBack,
        child: child,
      ),
      child: GestureDetector(
        onTap: long ? _toggle : null,
        behavior: HitTestBehavior.opaque,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedSize(
              duration: const Duration(milliseconds: 180),
              alignment: Alignment.topCenter,
              child: Text(
                widget.text,
                maxLines: _expanded ? null : 5,
                overflow: _expanded ? null : TextOverflow.ellipsis,
                style: context.textTheme.bodyMedium?.copyWith(height: 1.5),
              ),
            ),
            if (long)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  _expanded ? 'Show less' : 'Read more',
                  style: context.textTheme.labelMedium?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

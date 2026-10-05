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

  @override
  Widget build(BuildContext context) {
    final long = widget.text.length > 260;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 180),
          alignment: Alignment.topCenter,
          child: SelectionArea(
            child: Text(
              widget.text,
              maxLines: _expanded ? null : 5,
              overflow: _expanded ? null : TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium?.copyWith(
                height: 1.55,
                color: context.colorScheme.onSurface,
              ),
            ),
          ),
        ),
        if (long)
          TextButton(
            style: TextButton.styleFrom(
              visualDensity: VisualDensity.compact,
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 36),
            ),
            onPressed: () => setState(() => _expanded = !_expanded),
            child: Text(_expanded ? 'Show less' : 'Read more'),
          ),
      ],
    );
  }
}

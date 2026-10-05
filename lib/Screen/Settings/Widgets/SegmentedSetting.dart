import 'package:flutter/material.dart';

import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/AppControls.dart';

Setting segmentedSetting<T>({
  required String name,
  String? description,
  required IconData icon,
  required String label,
  required T value,
  required List<AppSegment<T>> segments,
  required ValueChanged<T> onChanged,
}) {
  final values = [for (final s in segments) s.value];

  bool onDirection(TraversalDirection direction) {
    final i = values.indexOf(value);
    if (direction == TraversalDirection.left && i > 0) {
      onChanged(values[i - 1]);
      return true;
    }
    if (direction == TraversalDirection.right && i < values.length - 1) {
      onChanged(values[i + 1]);
      return true;
    }
    return false;
  }

  return Setting.custom(
    name: name,
    description: description,
    onDirection: onDirection,
    builder: (context) => Row(
      children: [
        Icon(icon, size: 22, color: context.colorScheme.primary),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            label,
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        AppSegmented<T>(
          expand: false,
          value: value,
          onChanged: onChanged,
          segments: segments,
        ),
      ],
    ),
  );
}

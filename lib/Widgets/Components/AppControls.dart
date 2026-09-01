import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';

/// One choice in an [AppSegmented].
class AppSegment<T> {
  final T value;
  final String? label;
  final IconData? icon;
  const AppSegment(this.value, {this.label, this.icon});
}

/// The app's single-select segmented control — one styling, used everywhere
/// instead of a bare [SegmentedButton].
class AppSegmented<T> extends StatelessWidget {
  final List<AppSegment<T>> segments;
  final T value;
  final ValueChanged<T> onChanged;

  /// Stretch to fill the available width.
  final bool expand;

  const AppSegmented({
    super.key,
    required this.segments,
    required this.value,
    required this.onChanged,
    this.expand = true,
  });

  @override
  Widget build(BuildContext context) {
    final control = SegmentedButton<T>(
      showSelectedIcon: false,
      style: const ButtonStyle(
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      segments: [
        for (final s in segments)
          ButtonSegment<T>(
            value: s.value,
            label: s.label == null ? null : Text(s.label!),
            icon: s.icon == null ? null : Icon(s.icon, size: 18),
            tooltip: s.label,
          ),
      ],
      selected: {value},
      onSelectionChanged: (set) => onChanged(set.first),
    );
    return expand ? SizedBox(width: double.infinity, child: control) : control;
  }
}

/// A labelled slider — name on the left, live value on the right, [Slider]
/// below. Replaces the ad-hoc "Row + Slider" pattern across settings.
class LabeledSlider extends StatelessWidget {
  final String label;
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final String? valueLabel;
  final ValueChanged<double> onChanged;
  final ValueChanged<double>? onChangeEnd;

  const LabeledSlider({
    super.key,
    required this.label,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.divisions,
    this.valueLabel,
    this.onChangeEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Text(label, style: context.textTheme.bodyMedium)),
            if (valueLabel != null)
              Text(
                valueLabel!,
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
          ],
        ),
        Slider(
          value: value.clamp(min, max),
          min: min,
          max: max,
          divisions: divisions,
          onChanged: onChanged,
          onChangeEnd: onChangeEnd,
        ),
      ],
    );
  }
}

/// A single-select group of [ChoiceChip]s — the app's chip picker.
class AppChoiceChips<T> extends StatelessWidget {
  final List<AppSegment<T>> options;
  final T value;
  final ValueChanged<T> onChanged;

  const AppChoiceChips({
    super.key,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final o in options)
          ChoiceChip(
            label: Text(o.label ?? '$o'),
            avatar: o.icon == null ? null : Icon(o.icon, size: 16),
            selected: value == o.value,
            showCheckmark: false,
            onSelected: (_) => onChanged(o.value),
          ),
      ],
    );
  }
}

/// A titled control block used inside settings cards — a label above its child.
class LabeledField extends StatelessWidget {
  final String label;
  final Widget child;
  const LabeledField({super.key, required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            label,
            style: context.textTheme.labelLarge?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        child,
      ],
    );
  }
}

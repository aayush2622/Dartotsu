import 'package:flutter/material.dart';

import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ClickCursor.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Nav/DpadNav.dart';

class AppSegment<T> {
  final T value;
  final String? label;
  final IconData? icon;
  final bool enabled;
  const AppSegment(this.value, {this.label, this.icon, this.enabled = true});
}

class AppSegmented<T> extends StatelessWidget {
  final List<AppSegment<T>> segments;
  final T value;
  final ValueChanged<T> onChanged;

  final bool expand;
  final bool wrap;

  const AppSegmented({
    super.key,
    required this.segments,
    required this.value,
    required this.onChanged,
    this.expand = true,
    this.wrap = false,
  });

  @override
  Widget build(BuildContext context) {
    final last = segments.length - 1;
    if (wrap) {
      return Wrap(
        spacing: 2,
        runSpacing: 2,
        children: [
          for (var i = 0; i <= last; i++)
            _SegmentButton(
              segment: segments[i],
              selected: segments[i].value == value,
              first: i == 0,
              last: i == last,
              onTap: () => onChanged(segments[i].value),
            ),
        ],
      );
    }
    final row = Row(
      mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
      children: [
        for (var i = 0; i <= last; i++) ...[
          if (i > 0) const SizedBox(width: 2),
          _wrap(
            _SegmentButton(
              segment: segments[i],
              selected: segments[i].value == value,
              first: i == 0,
              last: i == last,
              onTap: () => onChanged(segments[i].value),
            ),
          ),
        ],
      ],
    );
    return expand ? SizedBox(width: double.infinity, child: row) : row;
  }

  Widget _wrap(Widget child) => expand ? Expanded(child: child) : child;
}

class _SegmentButton<T> extends StatelessWidget {
  final AppSegment<T> segment;
  final bool selected;
  final bool first;
  final bool last;
  final VoidCallback onTap;

  const _SegmentButton({
    required this.segment,
    required this.selected,
    required this.first,
    required this.last,
    required this.onTap,
  });

  static const _outer = 18.0;
  static const _inner = 6.0;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final radius = selected
        ? BorderRadius.circular(_outer)
        : BorderRadiusDirectional.horizontal(
            start: Radius.circular(first ? _outer : _inner),
            end: Radius.circular(last ? _outer : _inner),
          );
    final foreground = selected
        ? scheme.onPrimary
        : scheme.onSecondaryContainer;
    return AnimatedContainer(
      duration: animDuration(220),
      curve: Curves.easeOutCubic,
      height: 36,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: selected
            ? scheme.primary
            : scheme.onSurface.withValues(alpha: segment.enabled ? 0.08 : 0.03),
        borderRadius: radius,
      ),
      foregroundDecoration: segment.enabled
          ? null
          : BoxDecoration(
              color: scheme.surface.withValues(alpha: 0.35),
              borderRadius: radius,
            ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: segment.enabled ? onTap : null,
          borderRadius: radius.resolve(Directionality.of(context)),
          focusColor: foreground.withValues(alpha: 0.16),
          mouseCursor: kClickCursor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (segment.icon != null)
                  Icon(segment.icon, size: 16, color: foreground),
                if (segment.icon != null && segment.label != null)
                  const SizedBox(width: 6),
                if (segment.label != null)
                  Flexible(
                    child: Text(
                      segment.label!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelMedium?.copyWith(
                        color: foreground,
                        fontWeight: selected
                            ? FontWeight.w700
                            : FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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

class AppChoiceChips<T> extends StatelessWidget {
  final List<AppSegment<T>> options;
  final T value;
  final ValueChanged<T> onChanged;
  final bool scrollable;

  const AppChoiceChips({
    super.key,
    required this.options,
    required this.value,
    required this.onChanged,
    this.scrollable = false,
  });

  Widget _chip(AppSegment<T> o) => ChoiceChip(
    mouseCursor: kClickCursor,
    label: Text(o.label ?? '$o'),
    avatar: o.icon == null ? null : Icon(o.icon, size: 16),
    selected: value == o.value,
    showCheckmark: false,
    onSelected: (_) => onChanged(o.value),
  );

  @override
  Widget build(BuildContext context) {
    if (scrollable) {
      return DpadRegion(
        horizontalEdge: DpadEdgeBehavior.stop,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var i = 0; i < options.length; i++) ...[
                if (i > 0) const SizedBox(width: 8),
                _chip(options[i]),
              ],
            ],
          ),
        ),
      );
    }
    return DpadRegion(
      horizontalEdge: DpadEdgeBehavior.stop,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [for (final o in options) _chip(o)],
      ),
    );
  }
}

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

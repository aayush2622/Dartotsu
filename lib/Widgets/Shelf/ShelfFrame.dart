import 'package:flutter/material.dart';

import '../../Utils/Extensions/Responsive.dart';
import '../Components/SectionCard.dart';
import '../Components/ThemedContainer.dart';

class ShelfFlat extends InheritedWidget {
  const ShelfFlat({super.key, required super.child});

  static bool of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ShelfFlat>() != null;

  @override
  bool updateShouldNotify(ShelfFlat oldWidget) => false;
}

class ShelfFrame extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final VoidCallback? onTitleTap;
  final VoidCallback? onTitleLongPress;
  final Widget child;

  const ShelfFrame({
    super.key,
    this.title,
    this.trailing,
    this.onTitleTap,
    this.onTitleLongPress,
    required this.child,
  });

  bool get _hasTitle => title != null && title!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    if (ShelfFlat.of(context)) return _flat();
    final scheme = Theme.of(context).colorScheme;
    return RepaintBoundary(
      child: ThemedContainer(
        blur: false,
        margin: EdgeInsets.symmetric(
          horizontal: Dimens.gap,
          vertical: Dimens.gapSm / 2,
        ),
        padding: EdgeInsets.zero,
        borderRadius: Dimens.border,
        border: Border.all(
          color: scheme.outlineVariant.withValues(alpha: 0.5),
          width: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_hasTitle) ...[
              Padding(
                padding: EdgeInsets.fromLTRB(
                  Dimens.cardPad + 8,
                  Dimens.cardPad,
                  8,
                  0,
                ),
                child: SectionHeader(
                  title: title!,
                  onTap: onTitleTap,
                  onLongPress: onTitleLongPress,
                  trailing: trailing,
                ),
              ),
              SizedBox(height: Dimens.gapSm),
            ] else
              SizedBox(height: Dimens.cardPad),
            child,
            SizedBox(height: Dimens.cardPad),
          ],
        ),
      ),
    );
  }

  Widget _flat() => RepaintBoundary(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_hasTitle)
          Padding(
            padding: EdgeInsets.fromLTRB(Dimens.pagePad, 0, Dimens.gapSm, 0),
            child: SectionHeader(
              title: title!,
              onTap: onTitleTap,
              onLongPress: onTitleLongPress,
              trailing: trailing,
            ),
          ),
        if (_hasTitle) SizedBox(height: Dimens.gapSm),
        child,
      ],
    ),
  );
}

import 'package:flutter/material.dart';

import '../../Utils/Extensions/Responsive.dart';
import '../Components/SectionCard.dart';
import '../Components/ThemedContainer.dart';

class ShelfFrame extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final VoidCallback? onTitleTap;
  final Widget child;

  const ShelfFrame({
    super.key,
    this.title,
    this.trailing,
    this.onTitleTap,
    required this.child,
  });

  bool get _hasTitle => title != null && title!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ThemedContainer(
        margin: EdgeInsets.symmetric(
          horizontal: Dimens.gap,
          vertical: Dimens.gapSm / 2,
        ),
        padding: EdgeInsets.zero,
        borderRadius: Dimens.border,
        border: const Border.fromBorderSide(BorderSide.none),
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
}

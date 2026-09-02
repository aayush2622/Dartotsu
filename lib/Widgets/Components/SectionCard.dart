import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import 'ThemedContainer.dart';

class SectionCard extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTitleTap;

  const SectionCard({
    super.key,
    required this.child,
    this.title,
    this.trailing,
    this.padding,
    this.margin,
    this.onTitleTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = child;
    if (title != null) {
      content = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionHeader(title: title!, trailing: trailing, onTap: onTitleTap),
          SizedBox(height: Dimens.gapSm),
          child,
        ],
      );
    }

    return ThemedContainer(
      margin: margin,
      padding: padding ?? Dimens.cardInsets,
      borderRadius: Dimens.border,
      child: content,
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  const SectionHeader({
    super.key,
    required this.title,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final text = Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    );
    return Row(
      children: [
        Expanded(
          child: onTap == null
              ? text
              : GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: onTap,
                  child: text,
                ),
        ),
        ?trailing,
      ],
    );
  }
}

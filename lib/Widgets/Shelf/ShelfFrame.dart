import 'package:flutter/material.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/State/State.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Nav/DpadLayers.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../Components/SectionCard.dart';
import '../Components/ThemedContainer.dart';

class ShelfFrame extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final VoidCallback? onTitleTap;
  final VoidCallback? onTitleLongPress;
  final VoidCallback? onHeaderSelect;
  final Widget child;

  const ShelfFrame({
    super.key,
    this.title,
    this.trailing,
    this.onTitleTap,
    this.onTitleLongPress,
    this.onHeaderSelect,
    required this.child,
  });

  bool get _hasTitle => title != null && title!.isNotEmpty;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    if (!PrefName.shelfFrame.rx.value) return _bare(context);
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
                padding: EdgeInsetsDirectional.fromSTEB(
                  Dimens.cardPad + 8,
                  Dimens.cardPad,
                  8,
                  0,
                ),
                child: _header(context),
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

  Widget _bare(BuildContext context) {
    return RepaintBoundary(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimens.gapSm / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_hasTitle) ...[
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                  Dimens.gap + 8,
                  Dimens.gapSm,
                  Dimens.gap,
                  0,
                ),
                child: _header(context),
              ),
              SizedBox(height: Dimens.gapSm),
            ],
            child,
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    final header = SectionHeader(
      title: title!,
      onTap: onTitleTap,
      onLongPress: onTitleLongPress,
      trailing: trailing,
    );
    final select = onHeaderSelect;
    if (select == null) return header;
    return DpadRow(
      child: DpadFocusable(
        onSelect: select,
        builder: (context, state, child) => DecoratedBox(
          decoration: BoxDecoration(
            color: kDpadFocused(state)
                ? Theme.of(context).colorScheme.secondaryContainer
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: child,
        ),
        child: ExcludeFocus(child: header),
      ),
    );
  }
}

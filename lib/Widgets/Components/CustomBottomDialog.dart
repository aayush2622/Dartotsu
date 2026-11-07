import '../../Utils/Nav/DpadNav.dart';

import 'package:flutter/material.dart';

import '../../Utils/Nav/DpadLayers.dart';

import 'ThemedContainer.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import 'ScrollConfig.dart';
import 'SheetDragScope.dart';
import 'SheetHandle.dart';
import '../../Core/State/State.dart';

class CustomBottomDialog extends StatefulWidget {
  final List<Widget> viewList;
  final String? title;
  final String? checkText;
  final bool checkChecked;
  final void Function(bool)? checkCallback;
  final String? negativeText;
  final VoidCallback? negativeCallback;
  final String? positiveText;
  final VoidCallback? positiveCallback;

  const CustomBottomDialog({
    super.key,
    this.viewList = const [],
    this.title,
    this.checkText,
    this.checkChecked = false,
    this.checkCallback,
    this.negativeText,
    this.negativeCallback,
    this.positiveText,
    this.positiveCallback,
  });

  @override
  State<CustomBottomDialog> createState() => _CustomBottomDialogState();
}

class _CustomBottomDialogState extends State<CustomBottomDialog> {
  late final Live<bool> isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.checkChecked.live;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = ContextExtensions(context).textTheme;
    final buttonStyle = OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      side: BorderSide(color: colorScheme.primary),
    );

    return SheetDragScope(
      child: ThemedContainer(
        blur: true,
        color: colorScheme.surface,
        border: Border.all(
          width: 0,
          color: colorScheme.onSurface.withValues(alpha: 0.2),
        ),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        padding: EdgeInsets.only(
          bottom: 24.0 + MediaQuery.viewPaddingOf(context).bottom,
          top: 12.0,
        ),
        child: Material(
          type: MaterialType.transparency,
          child: CustomScrollConfig(
            context,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              const SliverToBoxAdapter(child: SheetHandle()),
              if (widget.title != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Text(
                        widget.title!,
                        textAlign: TextAlign.center,
                        style: textTheme.titleMedium,
                      ),
                    ),
                  ),
                ),

              if (widget.viewList.isNotEmpty)
                SliverList(
                  delegate: SliverChildListDelegate(
                    widget.viewList,
                    addAutomaticKeepAlives: false,
                    addRepaintBoundaries: false,
                  ),
                ),
              if (widget.checkText != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Watch(() {
                      return Row(
                        children: [
                          Checkbox(
                            value: isChecked.value,
                            activeColor: colorScheme.primary,
                            onChanged: (value) {
                              final v = value ?? false;
                              isChecked.value = v;
                              widget.checkCallback?.call(v);
                            },
                          ),
                          Expanded(
                            child: Text(
                              widget.checkText!,
                              style: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),

              if (widget.negativeText != null || widget.positiveText != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        if (widget.negativeText != null) ...[
                          Expanded(
                            child: DpadFocusable(
                              onSelect: widget.negativeCallback,
                              child: OutlinedButton(
                                onPressed: widget.negativeCallback,
                                style: buttonStyle,
                                child: Text(
                                  widget.negativeText!,
                                  style: textTheme.labelLarge,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 18.0),
                        ],
                        if (widget.positiveText != null) ...[
                          Expanded(
                            child: DpadFocusable(
                              onSelect: widget.positiveCallback,
                              child: OutlinedButton(
                                onPressed: widget.positiveCallback,
                                style: buttonStyle,
                                child: Text(
                                  widget.positiveText!,
                                  style: textTheme.labelLarge,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    ).animateSheetIn();
  }
}

Future<T?> showCustomBottomDialog<T>(
  BuildContext context,
  Widget child, {
  VoidCallback? onDismissed,
}) {
  return showModalBottomSheet<T>(
    enableDrag: true,
    isScrollControlled: true,
    context: context,
    backgroundColor: Colors.transparent,
    useSafeArea: true,
    elevation: 2,
    sheetAnimationStyle: AnimationStyle(
      duration: animDuration(300),
      reverseDuration: animDuration(200),
    ),
    builder: (context) => Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: MediaQuery.removeViewInsets(
        context: context,
        removeBottom: true,
        child: DpadEnter(child: child),
      ),
    ),
  ).whenComplete(() => onDismissed?.call());
}

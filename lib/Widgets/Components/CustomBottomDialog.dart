import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/ThemeManager/ThemeManager.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/AppShortcuts.dart';
import 'ScrollConfig.dart';

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
  late final RxBool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.checkChecked.obs;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = ContextExtensions(context).textTheme;
    final buttonStyle = OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      side: BorderSide(color: colorScheme.primary),
    );

    return ThemedContainer(
      color: colorScheme.surface,
      context: context,
      border:
          Border.all(width: 0, color: colorScheme.onSurface.withOpacity(0.2)),
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
      padding: const EdgeInsets.only(bottom: 24.0, top: 12.0),
      child: CustomScrollConfig(
        context,
        shrinkWrap: true,
        children: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: DpadFocusable(
                autofocus: true,
                isEntryPoint: true,
                builder: (context, isFocused, child) {
                  var focus = isFocused && usingKeyboard;
                  return Center(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 120),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        color: focus
                            ? colorScheme.onSurface.withOpacity(0.08)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        border: focus
                            ? Border.all(
                                color: colorScheme.onSurface.withOpacity(0.25),
                                width: 1,
                              )
                            : null,
                      ),
                      child: Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: colorScheme.onSurface.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          if (widget.title != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
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
                child: Obx(() {
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

          // Buttons
          if (widget.negativeText != null || widget.positiveText != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    if (widget.negativeText != null) ...[
                      Expanded(
                        child: DpadFocusable(
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
    );
  }
}

void showCustomBottomDialog(BuildContext context, CustomBottomDialog dialog,
    {VoidCallback? onDismissed}) {
  showModalBottomSheet(
    enableDrag: true,
    isScrollControlled: true,
    context: context,
    backgroundColor: Colors.transparent,
    useSafeArea: true,
    elevation: 2,
    builder: (context) => dialog,
  ).whenComplete(() => onDismissed?.call());
}

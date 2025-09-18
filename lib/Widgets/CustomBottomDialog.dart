import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Theme/ThemeManager.dart';
import 'package:flutter/material.dart';

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
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.checkChecked;
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return ThemedContainer(
      context: context,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          if (widget.title != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                child: Center(
                  child: Text(
                    widget.title!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: false,
              addRepaintBoundaries: false,
              (context, index) {
                return widget.viewList[index];
              },
              childCount: widget.viewList.length,
            ),
          ),
          if (widget.checkText != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (checked) {
                        setState(() {
                          isChecked = checked ?? false;
                        });
                        widget.checkCallback?.call(checked ?? false);
                      },
                      activeColor: theme.primary,
                    ),
                    Text(
                      widget.checkText!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          // Buttons
          if (widget.negativeText != null || widget.positiveText != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    if (widget.negativeText != null) ...[
                      Expanded(
                        child: OutlinedButton(
                          onPressed: widget.negativeCallback,
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 28.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: BorderSide(color: theme.primary),
                          ),
                          child: Text(
                            widget.negativeText!,
                            style: TextStyle(
                              color: theme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                    ],
                    if (widget.positiveText != null) ...[
                      Expanded(
                        child: OutlinedButton(
                          onPressed: widget.positiveCallback,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 28.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: BorderSide(color: theme.primary),
                          ),
                          child: Text(
                            widget.positiveText!,
                            style: TextStyle(
                              color: theme.primary,
                              fontWeight: FontWeight.bold,
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

void showCustomBottomDialog(BuildContext context, Widget dialog) {
  showModalBottomSheet(
    enableDrag: true,
    isScrollControlled: true,
    context: context,
    backgroundColor: Colors.transparent,
    useSafeArea: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
    ),
    builder: (context) => dialog,
  );
}

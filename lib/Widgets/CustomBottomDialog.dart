import 'package:dartotsu/Functions/Extensions.dart';
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
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: theme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.title != null) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  widget.title!,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
            ],
            const SizedBox(height: 16.0),
            ...widget.viewList,
            if (widget.checkText != null) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (checked) {
                        setState(() {
                          isChecked = checked ?? false;
                        });
                        if (widget.checkCallback != null) {
                          widget.checkCallback!(checked ?? false);
                        }
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
              const SizedBox(height: 16.0),
            ],
            if (widget.negativeText != null || widget.positiveText != null) ...[
              const SizedBox(height: 16.0),
            ],
            Padding(
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
            SizedBox(height: 0.bottomBar()),
          ],
        ),
      ),
    );
  }
}

void showCustomBottomDialog(BuildContext context, Widget dialog) {
  showModalBottomSheet(
    enableDrag: true,
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (context) => dialog,
  );
}

import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/MarkupText.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Core/State/State.dart';

enum ComposerKind { activity, message, reply }

class ActivityComposer extends StatefulWidget {
  final SocialScreenView view;
  final ComposerKind kind;
  final String? userId;
  final String? activityId;
  final String? editId;
  final String initial;
  final bool initialPrivate;

  const ActivityComposer({
    super.key,
    required this.view,
    required this.kind,
    this.userId,
    this.activityId,
    this.editId,
    this.initial = '',
    this.initialPrivate = false,
  });

  @override
  State<ActivityComposer> createState() => _ActivityComposerState();
}

class _ActivityComposerState extends State<ActivityComposer> {
  late final _controller = TextEditingController(text: widget.initial);
  final _preview = false.live;
  final _busy = false.live;
  late final _private = widget.initialPrivate.live;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String get _title {
    final editing = widget.editId != null;
    return switch (widget.kind) {
      ComposerKind.activity => editing ? 'Edit activity' : 'New activity',
      ComposerKind.message => editing ? 'Edit message' : 'Write a message',
      ComposerKind.reply => editing ? 'Edit reply' : 'Reply',
    };
  }

  void _wrap(String before, [String? after]) {
    final value = _controller.value;
    final selection = value.selection;
    final start = selection.isValid ? selection.start : value.text.length;
    final end = selection.isValid ? selection.end : value.text.length;
    final text = value.text;
    final inner = text.substring(start, end);
    final closing = after ?? before;
    final next = text.replaceRange(start, end, '$before$inner$closing');
    _controller.value = TextEditingValue(
      text: next,
      selection: TextSelection.collapsed(
        offset: start + before.length + inner.length,
      ),
    );
  }

  Future<void> _submit() async {
    final text = _controller.text.trim();
    if (text.isEmpty || _busy.value) return;
    _busy.value = true;
    final view = widget.view;
    final edit = widget.editId;
    final ok = switch (widget.kind) {
      ComposerKind.activity => await view.postActivity(text, edit: edit),
      ComposerKind.message => await view.postMessage(
        widget.userId!,
        text,
        edit: edit,
        isPrivate: _private.value,
      ),
      ComposerKind.reply => await view.postReply(
        widget.activityId!,
        text,
        edit: edit,
      ),
    };
    if (!mounted) return;
    if (ok) {
      snackString(edit == null ? 'Posted' : 'Saved');
      popPage(context, true);
    } else {
      _busy.value = false;
      snackString('Could not post');
    }
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    return AppSheet(
      title: _title,
      trailing: IconButton(
        tooltip: _preview.value ? 'Edit' : 'Preview',
        icon: Icon(
          _preview.value ? Icons.edit_rounded : Icons.visibility_rounded,
        ),
        onPressed: () => _preview.value = !_preview.value,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (_preview.value)
              Container(
                constraints: const BoxConstraints(minHeight: 120),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: scheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: _controller.text.trim().isEmpty
                    ? Text(
                        'Nothing to preview',
                        style: TextStyle(color: scheme.onSurfaceVariant),
                      )
                    : MarkupText(text: _controller.text, collapsible: false),
              )
            else ...[
              Wrap(
                spacing: 2,
                children: [
                  _tool(Icons.format_bold_rounded, 'Bold', () => _wrap('__')),
                  _tool(
                    Icons.format_italic_rounded,
                    'Italic',
                    () => _wrap('_'),
                  ),
                  _tool(
                    Icons.visibility_off_rounded,
                    'Spoiler',
                    () => _wrap('~!', '!~'),
                  ),
                  _tool(
                    Icons.link_rounded,
                    'Link',
                    () => _wrap('[', '](https://)'),
                  ),
                  _tool(Icons.image_rounded, 'Image', () => _wrap('img(', ')')),
                ],
              ),
              TextField(
                controller: _controller,
                autofocus: true,
                minLines: 4,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Write something… AniList markdown works here',
                ),
              ),
            ],
            if (widget.kind == ComposerKind.message)
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                title: const Text('Private message'),
                value: _private.value,
                onChanged: (v) => _private.value = v,
              ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton.icon(
                onPressed: _busy.value ? null : _submit,
                icon: _busy.value
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.send_rounded, size: 18),
                label: Text(widget.editId == null ? 'Post' : 'Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tool(IconData icon, String tip, VoidCallback onTap) => IconButton(
    tooltip: tip,
    visualDensity: VisualDensity.compact,
    icon: Icon(icon, size: 20),
    onPressed: onTap,
  );
}

Future<bool> showActivityComposer(
  BuildContext context,
  SocialScreenView view, {
  required ComposerKind kind,
  String? userId,
  String? activityId,
  String? editId,
  String initial = '',
  bool isPrivate = false,
}) async {
  final done = await showCustomBottomDialog<bool>(
    context,
    ActivityComposer(
      view: view,
      kind: kind,
      userId: userId,
      activityId: activityId,
      editId: editId,
      initial: initial,
      initialPrivate: isPrivate,
    ),
  );
  return done == true;
}

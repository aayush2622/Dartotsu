import '../../../Widgets/Components/ScrollConfig.dart';

import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/MarkupText.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'ComposerState.dart';
import '../../../Widgets/Components/AppSpinner.dart';
export 'ComposerState.dart' show ComposerKind;

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

class _ActivityComposerState extends State<ActivityComposer>
    with ScreenStateHost<ActivityComposer, ComposerState> {
  @override
  ComposerState buildState() => ComposerState(
    view: widget.view,
    kind: widget.kind,
    userId: widget.userId,
    activityId: widget.activityId,
    editId: widget.editId,
    initial: widget.initial,
    initialPrivate: widget.initialPrivate,
  );

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    return AppSheet(
      title: state.title,
      trailing: IconButton(
        tooltip: state.preview.value ? getString.edit : getString.preview,
        icon: Icon(
          state.preview.value ? Icons.edit_rounded : Icons.visibility_rounded,
        ),
        onPressed: () => state.preview.value = !state.preview.value,
      ),
      child: ScrollConfig(
        context,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (state.preview.value)
                Container(
                  constraints: const BoxConstraints(minHeight: 120),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: scheme.surfaceContainerHigh,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: state.controller.text.trim().isEmpty
                      ? Text(
                          getString.nothingToPreview,
                          style: TextStyle(color: scheme.onSurfaceVariant),
                        )
                      : MarkupText(
                          text: state.controller.text,
                          collapsible: false,
                        ),
                )
              else ...[
                Wrap(
                  spacing: 2,
                  children: [
                    _tool(
                      Icons.format_bold_rounded,
                      'Bold',
                      () => state.wrap('__'),
                    ),
                    _tool(
                      Icons.format_italic_rounded,
                      'Italic',
                      () => state.wrap('_'),
                    ),
                    _tool(
                      Icons.visibility_off_rounded,
                      'Spoiler',
                      () => state.wrap('~!', '!~'),
                    ),
                    _tool(
                      Icons.link_rounded,
                      'Link',
                      () => state.wrap('[', '](https://)'),
                    ),
                    _tool(
                      Icons.image_rounded,
                      'Image',
                      () => state.wrap('img(', ')'),
                    ),
                  ],
                ),
                TextField(
                  controller: state.controller,
                  autofocus: true,
                  minLines: 4,
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: getString.writeSomethingHint,
                  ),
                ),
              ],
              if (widget.kind == ComposerKind.message)
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  title: Text(getString.privateMessage),
                  value: state.private.value,
                  onChanged: (v) => state.private.value = v,
                ),
              const SizedBox(height: 12),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: FilledButton.icon(
                  onPressed: state.busy.value ? null : state.submit,
                  icon: state.busy.value
                      ? const AppSpinner(size: 16)
                      : const Icon(Icons.send_rounded, size: 18),
                  label: Text(
                    widget.editId == null ? getString.post : getString.save,
                  ),
                ),
              ),
            ],
          ),
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

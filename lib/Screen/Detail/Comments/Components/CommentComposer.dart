import '../../../../Utils/Extensions/Responsive.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Components/Clickable.dart';
import '../../../../Widgets/Components/UserAvatar.dart';
import '../CommentsState.dart';
import 'GifPickerSheet.dart';
import '../../../../Widgets/Components/AppSpinner.dart';

class CommentComposer extends StatefulWidget {
  final String hint;
  final String initial;
  final bool autofocus;
  final bool tagging;
  final bool compact;
  final String? avatar;
  final String name;
  final Future<bool> Function(String text, int? tag) onSend;
  final VoidCallback? onCancel;
  final Future<int?> Function()? pickTag;
  final Live<int?>? tag;

  const CommentComposer({
    super.key,
    required this.hint,
    required this.onSend,
    this.initial = '',
    this.autofocus = false,
    this.tagging = false,
    this.compact = false,
    this.avatar,
    this.name = '',
    this.onCancel,
    this.pickTag,
    this.tag,
  });

  @override
  State<CommentComposer> createState() => _CommentComposerState();
}

class _CommentComposerState extends State<CommentComposer> {
  late final _controller = TextEditingController(text: widget.initial);
  final _focus = FocusNode();
  final _spoiler = false.live;
  final _busy = false.live;
  final _empty = true.live;
  late final Live<int?> _tag = widget.tag ?? Live<int?>(null);

  @override
  void initState() {
    super.initState();
    _empty.value = widget.initial.trim().isEmpty;
    _controller.addListener(
      () => _empty.value = _controller.text.trim().isEmpty,
    );
    if (widget.autofocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _focus.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focus.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    var text = _controller.text.trim();
    if (text.isEmpty) {
      snackString(getString.commentsEmptyText);
      return;
    }
    if (_busy.value) return;
    if (_spoiler.value) text = '||$text||';
    _busy.value = true;
    try {
      final ok = await widget.onSend(text, _tag.value);
      if (ok && mounted) {
        _controller.clear();
        _spoiler.value = false;
        _tag.value = null;
        _focus.unfocus();
      }
    } finally {
      if (mounted) _busy.value = false;
    }
  }

  Future<void> _gif() async {
    final url = await showGifPicker(context);
    if (url == null || !mounted) return;
    final current = _controller.text;
    final next = current.isEmpty ? '![gif]($url)' : '$current\n![gif]($url)';
    _controller.value = TextEditingValue(
      text: next,
      selection: TextSelection.collapsed(offset: next.length),
    );
    _focus.requestFocus();
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final busy = _busy.value;
    final tagged = _tag.value;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
          Dimens.gap,
          Dimens.gapSm,
          Dimens.gapSm,
          Dimens.gapSm,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!widget.compact) ...[
                  Padding(
                    padding: EdgeInsets.only(top: Dimens.gapXs),
                    child: UserAvatar(
                      url: widget.avatar,
                      name: widget.name,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: Dimens.gap),
                ],
                Expanded(
                  child: TextField(
                    controller: _controller,
                    focusNode: _focus,
                    minLines: 1,
                    maxLines: 6,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(commentMaxLength),
                    ],
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      hintText: widget.hint,
                      filled: false,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: Dimens.gapSm,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 4,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.tagging)
                      _action(
                        context,
                        icon: tagged == null
                            ? Icons.label_outline_rounded
                            : Icons.label_rounded,
                        label: tagged?.toString(),
                        active: tagged != null,
                        tooltip: getString.commentsTagButton,
                        onTap: () async {
                          final pick = widget.pickTag;
                          if (pick == null) return;
                          final answer = await pick();
                          if (answer != -1 && mounted) _tag.value = answer;
                        },
                      ),
                    _action(
                      context,
                      icon: _spoiler.value
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      active: _spoiler.value,
                      tooltip: getString.commentsSpoiler,
                      onTap: () => _spoiler.value = !_spoiler.value,
                    ),
                    _action(
                      context,
                      icon: Icons.gif_box_rounded,
                      tooltip: getString.commentsGif,
                      onTap: () => unawaited(_gif()),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.onCancel != null)
                      TextButton(
                        onPressed: busy ? null : widget.onCancel,
                        child: Text(getString.cancel),
                      ),
                    FilledButton(
                      onPressed: busy || _empty.value ? null : _send,
                      style: FilledButton.styleFrom(
                        minimumSize: const Size(0, 36),
                        padding: EdgeInsets.symmetric(horizontal: Dimens.gapLg),
                      ),
                      child: busy
                          ? const AppSpinner(size: 16)
                          : Text(getString.commentsSend),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _action(
    BuildContext context, {
    required IconData icon,
    required VoidCallback onTap,
    required String tooltip,
    bool active = false,
    String? label,
  }) {
    final scheme = context.colorScheme;
    return Tooltip(
      message: tooltip,
      child: Clickable(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(Dimens.gapSm),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 20,
                color: active ? scheme.primary : scheme.onSurfaceVariant,
              ),
              if (label != null) ...[
                SizedBox(width: Dimens.gapXs),
                Text(
                  label,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: scheme.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

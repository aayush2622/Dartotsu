import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Screens/DetailCache.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../Widgets/ScreenWidgetView.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Core/State/State.dart';

CustomBottomDialog _editorDialog(
  BuildContext context, {
  required Media media,
  required ListEditorScreenView view,
  required Mutations mutations,
  required Future<void> Function() onSaved,
}) {
  final draft = ListEditorDraft(media, customLists: view.customLists(media));

  Future<void> run(Future<void> Function() action, String done) async {
    if (context.mounted) popPage(context);
    try {
      await action();
      await onSaved();
      snackString(done);
    } catch (e) {
      snackString('$e');
    }
  }

  return CustomBottomDialog(
    title: media.mainName,
    viewList: [
      for (final w in view.build(media, draft)) ScreenWidgetView(w),
      const SizedBox(height: 12),
    ],
    positiveText: 'Save',
    positiveCallback: () => run(() async {
      draft.applyTo(media);
      await mutations.editList(
        media,
        customList: view.advanced ? draft.selectedCustomLists : null,
      );
    }, 'Saved to your list'),
    negativeText: media.userListId == null ? null : 'Remove',
    negativeCallback: () =>
        run(() => mutations.deleteFromList(media), 'Removed from your list'),
  );
}

void showListEditor(
  BuildContext context, {
  required Media media,
  required ListEditorScreenView view,
  required Mutations mutations,
  required Future<void> Function() onSaved,
}) {
  showCustomBottomDialog(
    context,
    _editorDialog(
      context,
      media: media,
      view: view,
      mutations: mutations,
      onSaved: onSaved,
    ),
  );
}

void showQuickListEditor(
  BuildContext context,
  MediaService service,
  Media media,
) {
  final mutations = service.getMutations;
  if (mutations == null) {
    snackString('${service.name} has no list to edit');
    return;
  }
  unawaited(HapticFeedback.mediumImpact());
  showCustomBottomDialog(
    context,
    _QuickListEditor(service: service, media: media, mutations: mutations),
  );
}

class _QuickListEditor extends StatefulWidget {
  final MediaService service;
  final Media media;
  final Mutations mutations;

  const _QuickListEditor({
    required this.service,
    required this.media,
    required this.mutations,
  });

  @override
  State<_QuickListEditor> createState() => _QuickListEditorState();
}

class _QuickListEditorState extends State<_QuickListEditor> {
  late final String _key = '${widget.service.id}/${widget.media.id}';
  late final ListEditorScreenView _view = widget.service.detailView.listEditor;
  final _full = Live<Media?>(null);

  @override
  void initState() {
    super.initState();
    _full.value = DetailCache.get(_key);
    if (_full.value == null) unawaited(_load());
  }

  Future<void> _load() async {
    Media? loaded;
    try {
      loaded = await widget.service.getQueries?.mediaDetails(widget.media);
      if (loaded != null) DetailCache.put(_key, loaded);
    } catch (_) {}
    if (mounted) _full.value = loaded ?? widget.media;
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final full = _full.value;
    if (full != null) {
      return _editorDialog(
        context,
        media: full,
        view: _view,
        mutations: widget.mutations,
        onSaved: () async => DetailCache.remove(_key),
      );
    }
    final draft = ListEditorDraft(
      widget.media,
      customLists: _view.customLists(widget.media),
    );
    return CustomBottomDialog(
      title: widget.media.mainName,
      viewList: [
        Skeletonizer(
          child: Column(
            children: [
              for (final w in _view.build(widget.media, draft))
                ScreenWidgetView(w),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }
}

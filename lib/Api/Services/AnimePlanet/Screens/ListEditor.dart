import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Widgets/Components/ListEditorFields.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import '../Auth.dart';
import '../Mutations.dart';

class AnimePlanetListEditorView extends ListEditorScreenView {
  AnimePlanetListEditorView(super.service);

  @override
  bool get advanced => true;

  @override
  Map<String, String> statuses({required bool anime}) => {
    'CURRENT': anime ? getString.watching : getString.reading,
    'PLANNING': anime ? getString.planToWatch : getString.planToRead,
    'COMPLETED': getString.completed,
    'PAUSED': getString.paused,
    'DROPPED': getString.dropped,
    'WONT': anime
        ? getString.animePlanetWontWatch
        : getString.animePlanetWontRead,
  };

  @override
  List<ScreenWidget> build(Media media, ListEditorDraft draft) => [
    ScreenWidget.extra(
      ListStatusField(
        draft: draft,
        statuses: statuses(anime: media.isAnime),
      ),
    ),
    ScreenWidget.extra(
      ListProgressField(draft: draft, total: media.totalUnits),
    ),
    ScreenWidget.extra(ListScoreField(draft: draft)),
    if (media.isAnime)
      ScreenWidget.extra(
        ListRepeatField(draft: draft, label: getString.timesRewatched),
      ),
    ScreenWidget.extra(
      _CustomListsField(key: ValueKey('cl-${media.id}'), media, draft),
    ),
  ];
}

class _CustomListsField extends StatefulWidget {
  final Media media;
  final ListEditorDraft draft;

  const _CustomListsField(this.media, this.draft, {super.key});

  @override
  State<_CustomListsField> createState() => _CustomListsFieldState();
}

class _CustomListsFieldState extends State<_CustomListsField> {
  final choices = Live<List<AnimePlanetListChoice>?>(null);
  final extra = <String>[].liveList;
  final name = TextEditingController();

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    if (!animePlanetAuth.isLoggedIn) {
      choices.value = const [];
      return;
    }
    try {
      final got = await animePlanetAuth.mutations.customListChoices(
        widget.media,
      );
      for (final c in got) {
        if (c.onList) widget.draft.customLists[c.name] = true;
      }
      choices.value = got;
    } catch (_) {
      choices.value = const [];
    }
  }

  @override
  void dispose() {
    name.dispose();
    super.dispose();
  }

  void _addNew() {
    final text = name.text.trim();
    if (text.isEmpty) return;
    if (!extra.contains(text)) extra.add(text);
    widget.draft.customLists[text] = true;
    name.clear();
  }

  Widget _build(BuildContext context) {
    final all = choices.value;
    if (all == null) return const SizedBox.shrink();
    final on = [
      for (final c in all)
        if (widget.draft.customLists[c.name] ?? false) c.name,
      for (final n in extra)
        if (widget.draft.customLists[n] ?? false) n,
    ];
    return ListEditorPad(
      child: SectionCard(
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            leading: const Icon(Icons.playlist_add_rounded),
            title: Text(getString.customLists),
            subtitle: on.isEmpty ? null : Text(on.join(', ')),
            children: [
              for (final c in all)
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(c.name),
                  value: widget.draft.customLists[c.name] ?? false,
                  onChanged: (v) => widget.draft.customLists[c.name] = v,
                ),
              for (final n in extra)
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(n),
                  value: widget.draft.customLists[n] ?? false,
                  onChanged: (v) => widget.draft.customLists[n] = v,
                ),
              TextField(
                controller: name,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) => _addNew(),
                decoration: InputDecoration(
                  labelText: getString.animePlanetNewList,
                  prefixIcon: const Icon(Icons.add_rounded),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.check_rounded,
                      color: context.colorScheme.primary,
                    ),
                    onPressed: _addNew,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));
}

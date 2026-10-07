import 'package:flutter/material.dart';

import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../Auth.dart';
import '../Data/User.dart';
import '../../../../Core/State/State.dart';

class CustomListsSheet extends StatefulWidget {
  final bool anime;

  const CustomListsSheet({super.key, required this.anime});

  @override
  State<CustomListsSheet> createState() => _CustomListsSheetState();
}

class _CustomListsSheetState extends State<CustomListsSheet> {
  late final List<String> _saved = _current();
  late final _names = _saved
      .map((n) => TextEditingController(text: n))
      .toList()
      .liveList;
  final _busy = false.live;

  List<String> _current() {
    final user = anilistAuth.user.value as AnilistUser?;
    return List.of(
      (widget.anime ? user?.animeCustomLists : user?.mangaCustomLists) ??
          const <String>[],
    );
  }

  @override
  void dispose() {
    for (final c in _names) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _remove(int index) async {
    final name = _names[index].text.trim();
    if (name.isNotEmpty && _saved.contains(name)) {
      _busy.value = true;
      final ok = await anilistAuth.mutations.deleteCustomList(
        name,
        anime: widget.anime,
      );
      _busy.value = false;
      if (!ok) {
        snackString('Failed to delete custom list');
        return;
      }
      _saved.remove(name);
      await anilistAuth.refreshUser();
    }
    if (!mounted) return;
    _names.removeAt(index).dispose();
  }

  Future<void> _save() async {
    final names = {
      for (final c in _names)
        if (c.text.trim().isNotEmpty) c.text.trim(),
    }.toList();
    _busy.value = true;
    final ok = await anilistAuth.mutations.updateCustomLists(
      anime: widget.anime ? names : null,
      manga: widget.anime ? null : names,
    );
    _busy.value = false;
    if (!ok) {
      snackString('Failed to save custom lists');
      return;
    }
    await anilistAuth.refreshUser();
    snackString('Custom lists saved');
    if (mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final kind = widget.anime ? 'Anime' : 'Manga';
    return AppSheet(
      title: '$kind custom lists',
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (var i = 0; i < _names.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextField(
                        controller: _names[i],
                        decoration: InputDecoration(
                          labelText: 'List name',
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.delete_outline_rounded),
                            onPressed: () => _remove(i),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () => _names.add(TextEditingController()),
                  icon: const Icon(Icons.add_rounded),
                  label: const Text('Add list'),
                ),
                const Spacer(),
                Watch(
                  () => FilledButton(
                    onPressed: _busy.value ? null : _save,
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> showCustomListsSheet(
  BuildContext context, {
  required bool anime,
}) => showCustomBottomDialog<void>(context, CustomListsSheet(anime: anime));

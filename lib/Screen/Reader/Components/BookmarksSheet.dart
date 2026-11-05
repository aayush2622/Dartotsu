import 'package:flutter/material.dart';

import '../../Detail/Watch/Data/Media/MediaRecord.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/EmptyState.dart';

Future<void> showBookmarks(
  BuildContext context, {
  required MediaRecord record,
  required Live<int> tick,
  required String Function(Bookmark) detail,
  required void Function(Bookmark) onOpen,
  required void Function(Bookmark) onRemove,
}) => showCustomBottomDialog<void>(
  context,
  AppSheet(
    title: getString.readerBookmarks,
    heightFactor: 0.7,
    child: Watch(() {
      tick.value;
      final list = record.bookmarks.toList()
        ..sort((a, b) => b.at.compareTo(a.at));
      if (list.isEmpty) {
        return EmptyState(
          icon: Icons.bookmark_border_rounded,
          title: getString.readerBookmarksEmpty,
        );
      }
      return ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, i) {
          final b = list[i];
          return ListTile(
            leading: const Icon(Icons.bookmark_rounded),
            title: Text(b.label),
            subtitle: Text(detail(b)),
            trailing: IconButton(
              tooltip: getString.readerBookmarkRemove,
              icon: const Icon(Icons.delete_outline_rounded),
              onPressed: () => onRemove(b),
            ),
            onTap: () {
              popPage(context);
              onOpen(b);
            },
          );
        },
      );
    }),
  ),
);

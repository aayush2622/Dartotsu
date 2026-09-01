import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';

/// Lightweight title bar for the browse feeds (Anime / Manga tabs).
class FeedHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onSearch;

  const FeedHeader({super.key, required this.title, this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 18, 12, 2),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: context.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (onSearch != null)
            IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: onSearch,
            ),
        ],
      ),
    );
  }
}

import 'package:dartotsu/Functions/Extensions/StringExtensions.dart';
import 'package:flutter/material.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Screens/Detail/Tabs/Watch/Manga/Widget/DateFormat.dart';

class ChapterListView extends StatelessWidget {
  final DEpisode chapter;
  final Media mediaData;
  final bool isWatched;

  ChapterListView({
    super.key,
    required this.chapter,
    required this.mediaData,
  }) : isWatched =
            (mediaData.userProgress != null && mediaData.userProgress! > 0)
                ? mediaData.userProgress!.toString().toDouble() >=
                    chapter.episodeNumber.toDouble()
                : false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Opacity(
      opacity: isWatched ? 0.5 : 1.0,
      child: Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        elevation: 4,
        child: SizedBox(
          height: 84,
          child: _buildChapterHeader(
            context,
            theme,
          ),
        ),
      ),
    );
  }

  Widget _buildChapterHeader(BuildContext context, ColorScheme theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  chapter.name ?? '',
                  maxLines: 1,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (chapter.scanlator != null && chapter.scanlator != '')
                  const SizedBox(height: 4),
                _buildDescription(theme, context),
              ],
            ),
          ),
        ),
        if (isWatched)
          Icon(
            Icons.remove_red_eye,
            color: theme.onSurface,
            size: 26,
          ),
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildDescription(ColorScheme theme, BuildContext context) {
    final List<TextSpan> spans = [];
    if (chapter.dateUpload != null) {
      spans.add(
        TextSpan(
          text: dateFormat(chapter.dateUpload, context: context),
        ),
      );
    }
    if (chapter.dateUpload != null && chapter.scanlator != null) {
      spans.add(
        const TextSpan(
          text: ' • ',
        ),
      );
    }
    if (chapter.scanlator != null) {
      spans.add(
        TextSpan(
          text: chapter.scanlator?.replaceAll('_', ' ') ?? '',
        ),
      );
    }
    return Flexible(
      child: RichText(
        maxLines: 1,
        text: TextSpan(
          children: spans,
          style: TextStyle(
            color: theme.onSurface,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

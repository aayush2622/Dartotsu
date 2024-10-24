import 'package:dantotsu/Theme/Colors.dart';
import 'package:dantotsu/Theme/ThemeProvider.dart';
import 'package:dantotsu/Widgets/CachedNetworkImage.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../DataClass/Episode.dart';

class EpisodeListView extends StatelessWidget {
  final Episode episode;

  const EpisodeListView({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final themeManager = Provider.of<ThemeNotifier>(context);
    final isDark = themeManager.isDarkMode;

    Color cardColor = (episode.filler ?? false) ?
    (isDark ? fillerDark : fillerLight) :
    theme.surfaceContainerLowest;

    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      color: cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildEpisodeHeader(context, theme),
          if (episode.desc != null && episode.desc!.isNotEmpty)
            _buildEpisodeDescription(theme),
        ],
      ),
    );
  }

  Widget _buildEpisodeHeader(BuildContext context, ColorScheme theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildThumbnail(theme),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (episode.filler ?? false)
                  const Text(
                    "Filler",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Poppins',
                    ),
                  ),
                Text(
                  episode.title ?? '',
                  maxLines: 5,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildThumbnail(ColorScheme theme) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      color: theme.surfaceContainerLowest,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const CircularProgressIndicator(),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: cachedNetworkImage(
              imageUrl: episode.thumb ?? '',
              fit: BoxFit.cover,
              width: 164,
              height: 109,
              placeholder: (context, url) => Container(
                color: Colors.white12,
                width: 164,
                height: 109,
              ),
            ),
          ),
          Positioned(
            top: -4,
            left: -4,
            child: Card(
              color: theme.onSurface,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16.0),
                  topLeft: Radius.circular(17.0),
                  bottomLeft: Radius.circular(-1.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6.0, vertical: 4.0,
                ),
                child: Text(
                  episode.number,
                  style: TextStyle(
                    fontSize: 20,
                    color: theme.surface,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEpisodeDescription(ColorScheme theme) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ExpandableText(
        episode.desc!,
        style: TextStyle(
          color: theme.onSurface,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        maxLines: 3,
        expandText: 'show more',
        collapseText: 'show less',
      ),
    );
  }
}

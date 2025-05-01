import 'package:blur/blur.dart';
import 'package:dartotsu/DataClass/User.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Theme/ThemeProvider.dart';
import '../../Widgets/CachedNetworkImage.dart';

class UserLargeViewHolder extends StatelessWidget {
  final userData user;
  final String tag;

  const UserLargeViewHolder({super.key, required this.user, required this.tag});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      color: theme.surfaceContainerLow,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28.0),
        child: SizedBox(
          height: 120,
          child: Stack(
            children: [
              _buildBackgroundImage(context, theme),
              _buildContent(context, theme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage(BuildContext context, ColorScheme theme) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme.surfaceContainerLow]
        : [Colors.white.withValues(alpha: 0.2), theme.surfaceContainerLow];

    return SizedBox(
      height: 105,
      child: Stack(
        children: [
          SizedBox(
            height: 105,
            width: double.infinity,
            child: cachedNetworkImage(
              imageUrl: user.banner ?? user.pfp ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 105,
            ),
          ),
          _buildGradientOverlay(gradientColors),
          _buildBlurEffect(),
        ],
      ),
    );
  }

  Widget _buildGradientOverlay(List<Color> gradientColors) {
    return Container(
      width: double.infinity,
      height: 107,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _buildBlurEffect() {
    return Blur(
      colorOpacity: 0.0,
      blur: 2,
      blurColor: Colors.transparent,
      child: Container(),
    );
  }

  Widget _buildContent(BuildContext context, ColorScheme theme) {
    return Padding(
      padding: EdgeInsets.only(
        left: Directionality.of(context) == TextDirection.rtl ? 0.0 : 16.0,
        right: Directionality.of(context) == TextDirection.rtl ? 16.0 : 0.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMediaInfoRow(context, theme),
        ],
      ),
    );
  }

  Widget _buildMediaInfoRow(BuildContext context, ColorScheme theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            _buildMediaCover(),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMediaCover() {
    return Hero(
      tag: tag,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Material(
          elevation: 2,
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: 92,
            height: 92,
            color: Colors.transparent,
            child: cachedNetworkImage(
              imageUrl: user.pfp.toString(),
              fit: BoxFit.cover,
              height: 92,
              width: 92,
            ),
          ),
        ),
      ),
    );
  }
}

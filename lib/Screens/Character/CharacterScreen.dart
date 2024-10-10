import 'package:blur/blur.dart';
import 'package:dantotsu/Adaptor/Charactes/Widgets/EntitySection.dart';
import 'package:dantotsu/Adaptor/Media/Widgets/MediaSection.dart';
import 'package:dantotsu/DataClass/Character.dart';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:dantotsu/Theme/ThemeProvider.dart';
import 'package:dantotsu/Widgets/CachedNetworkImage.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';
import 'package:html/parser.dart' as html_parser;

class CharacterScreen extends StatefulWidget {
  final character characterInfo;

  const CharacterScreen({super.key, required this.characterInfo});

  @override
  CharacterScreenState createState() => CharacterScreenState();
}

class CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final theme = Theme.of(context).colorScheme;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme.surface]
        : [Colors.white.withOpacity(0.2), theme.surface];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _buildCharacterSection()),
          SliverToBoxAdapter(
            child: _buildUtilButtons(),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
                padding: const EdgeInsets.symmetric(),
                child: Column(
                  children: [
                    _buildDescriptionSection(
                      "Details",
                      widget.characterInfo.description,
                      widget.characterInfo.age ?? "null",
                      widget.characterInfo.gender ?? "null",
                      widget.characterInfo.dateOfBirth.toString(),
                    ),
                    entitySection(
                      context: context,
                      type: EntityType.Staff,
                      title: "Voice Actors",
                      staffList: widget.characterInfo.voiceActor,
                    ),
                    if (widget.characterInfo.roles?.isNotEmpty ?? false)
                    MediaSection(
                      context: context,
                      type: 0,
                      title: "Roles",
                      mediaList: widget.characterInfo.roles,
                      isLarge: true,
                    ),
                  ],
                ))
          ]))
        ],
      ),
    );
  }

  Widget _buildUtilButtons() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFavoriteButton(),
              _buildShareButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFavoriteButton() {
    return IconButton(
      icon: widget.characterInfo.isFav ?? false
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border),
      iconSize: 32,
      onPressed: () {
        // Favorite action
      },
    );
  }

  Widget _buildShareButton() {
    return IconButton(
      icon: const Icon(Icons.share),
      iconSize: 32,
      onPressed: () {
        // Share action
      },
    );
  }

  Widget _buildCharacterSection() {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;
    final theme = Theme.of(context).colorScheme;
    final gradientColors = isDarkMode
        ? [Colors.transparent, theme.surface]
        : [Colors.white.withOpacity(0.2), theme.surface];

    return SizedBox(
      height: 384 + (0.statusBar() * 2),
      child: Stack(
        children: [
          KenBurns(
            maxScale: 2.5,
            minAnimationDuration: const Duration(milliseconds: 6000),
            maxAnimationDuration: const Duration(milliseconds: 20000),
            child: cachedNetworkImage(
              imageUrl: widget.characterInfo.banner ??
                  widget.characterInfo.image ??
                  '',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 384 + (0.statusBar() * 2),
            ),
          ),
          Container(
            width: double.infinity,
            height: 384 + (0.statusBar() * 2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Blur(
            colorOpacity: 0.0,
            blur: 10,
            blurColor: Colors.transparent,
            child: Container(),
          ),
          _buildCloseButton(theme),
          _buildCoverImage(theme),
        ],
      ),
    );
  }

  Positioned _buildCloseButton(ColorScheme theme) {
    return Positioned(
      top: 14.statusBar(),
      right: 24,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Card(
          elevation: 7,
          color: theme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            width: 32,
            height: 32,
            child: Center(
              child: Icon(Icons.close, size: 24, color: theme.onSurface),
            ),
          ),
        ),
      ),
    );
  }

  Column _buildCharacterInfo(ColorScheme theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.characterInfo.name ?? " ",
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 8),
        Text(
          widget.characterInfo.role ?? " ",
          style: TextStyle(
            fontSize: 14,
            color: theme.primary,
            fontWeight: FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _buildDescriptionSection(String title, String? content, String age,
      String gender, String birthday) {
    var theme = Theme.of(context).colorScheme;
    if (content == null || content.isEmpty) {
      return Text("Character Description not Available ",
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: theme.onSurface.withOpacity(0.4),
          ));
    }
    final document = html_parser.parse(content);
    final String markdownContent = document.body?.text ?? " ";
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: theme.onSurface,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            "Age: $age \n"
            "Birthday: $birthday \n"
            "Gender: $gender \n",
            style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: theme.onSurface.withOpacity(0.4)),
          ),
          ExpandableText(
            markdownContent,
            maxLines: 3,
            expandText: 'show more',
            collapseText: 'show less',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: theme.onSurface.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }

  Positioned _buildCoverImage(ColorScheme theme) {
    return Positioned(
      bottom: 64,
      left: 32,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: cachedNetworkImage(
              imageUrl: widget.characterInfo.image ?? '',
              fit: BoxFit.cover,
              width: 108,
              height: 160,
              placeholder: (context, url) => Container(
                color: Colors.white12,
                width: 108,
                height: 160,
              ),
            ),
          ),
          const SizedBox(width: 16),
          _buildCharacterInfo(theme),
        ],
      ),
    );
  }
}

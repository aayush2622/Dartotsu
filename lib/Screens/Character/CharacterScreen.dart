import 'package:dartotsu/Adaptor/Charactes/Widgets/EntitySection.dart';
import 'package:dartotsu/Adaptor/Media/Widgets/MediaSection.dart';
import 'package:dartotsu/DataClass/Character.dart';
import 'package:dartotsu/Theme/ThemeProvider.dart';
import 'package:dartotsu/Widgets/CachedNetworkImage.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

import '../../Functions/Function.dart';

class CharacterScreen extends StatefulWidget {
  final character characterInfo;

  const CharacterScreen({super.key, required this.characterInfo});

  @override
  CharacterScreenState createState() => CharacterScreenState();
}

class CharacterScreenState extends State<CharacterScreen> {
  late ColorScheme theme;
  late double statusBarHeight;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = Theme.of(context).colorScheme;
    statusBarHeight = MediaQuery.of(context).padding.top;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _buildCharacterSection()),
          SliverToBoxAdapter(child: _buildUtilButtons()),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDescriptionSection(),
                  if (widget.characterInfo.voiceActor?.isNotEmpty ?? false)
                    entitySection(
                      context: context,
                      type: EntityType.Staff,
                      title: "Voice Actors",
                      list: widget.characterInfo.voiceActor,
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
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildUtilButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildFavoriteButton(),
          _buildShareButton(),
        ],
      ),
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
      onPressed: () =>
          shareLink('https://anilist.co/character/${widget.characterInfo.id}'),
    );
  }

  Widget _buildCharacterSection() {
    final gradientColors = Provider.of<ThemeNotifier>(context).isDarkMode
        ? [Colors.transparent, theme.surface]
        : [Colors.white.withValues(alpha: 0.2), theme.surface];

    return SizedBox(
      height: 384 + (statusBarHeight * 2),
      child: Stack(
        children: [
          _buildKenBurnsBackground(),
          _buildGradientOverlay(gradientColors),
          _buildCloseButton(),
          _buildCoverImage(),
        ],
      ),
    );
  }

  Widget _buildKenBurnsBackground() {
    return KenBurns(
      maxScale: 2.5,
      minAnimationDuration: const Duration(milliseconds: 6000),
      maxAnimationDuration: const Duration(milliseconds: 20000),
      child: cachedNetworkImage(
        imageUrl:
            widget.characterInfo.banner ?? widget.characterInfo.image ?? '',
        fit: BoxFit.cover,
        width: double.infinity,
        height: 384 + (statusBarHeight * 2),
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget _buildGradientOverlay(List<Color> gradientColors) {
    return Container(
      width: double.infinity,
      height: 384 + (statusBarHeight * 2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Positioned _buildCloseButton() {
    return Positioned(
      top: statusBarHeight + 14,
      right: 24,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Card(
          elevation: 7,
          color: theme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: const SizedBox(
            width: 32,
            height: 32,
            child: Center(child: Icon(Icons.close, size: 24)),
          ),
        ),
      ),
    );
  }

  Positioned _buildCoverImage() {
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
              placeholder: (context, url) => const SizedBox(
                  width: 108, height: 160, child: CircularProgressIndicator()),
            ),
          ),
          const SizedBox(width: 16),
          _buildCharacterInfo(),
        ],
      ),
    );
  }

  Column _buildCharacterInfo() {
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

  String convertSpoilers(String content) {
    final spoilerRegex = RegExp(r'~!(.*?)!~');
    return content.replaceAllMapped(spoilerRegex, (match) {
      return '||${match.group(1)}||';
    });
  }

  Widget _buildDescriptionSection() {
    var content = widget.characterInfo.description ?? '';
    var age = widget.characterInfo.age ?? "";
    var gender = widget.characterInfo.gender ?? "";
    var birthday = widget.characterInfo.dateOfBirth.toString();

    if (content.isEmpty) {
      return Text(
        "Character Description not Available",
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          color: theme.onSurface.withValues(alpha: 0.4),
        ),
      );
    }

    final document = html_parser.parse(content);
    String markdownContent = document.body?.text ?? " ";
    markdownContent = convertSpoilers(markdownContent);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Details",
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: theme.onSurface,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Age: $age \nBirthday: $birthday \nGender: $gender \n",
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: theme.onSurface.withValues(alpha: 0.4),
            ),
          ),
          ExpandableText(
            markdownContent.replaceAll('__', ''),
            maxLines: 3,
            expandText: 'show more',
            collapseText: 'show less',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: theme.onSurface.withValues(alpha: 0.4),
            ),
          ),
        ],
      ),
    );
  }
}

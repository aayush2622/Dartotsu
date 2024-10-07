import 'package:blur/blur.dart';
import 'package:dantotsu/DataClass/Character.dart';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:dantotsu/Theme/ThemeProvider.dart';
import 'package:dantotsu/Widgets/CachedNetworkImage.dart';
import 'package:flutter/material.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:provider/provider.dart';

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
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      KenBurns(
                          maxScale: 2.5,
                          minAnimationDuration:
                              const Duration(milliseconds: 6000),
                          maxAnimationDuration:
                              const Duration(milliseconds: 20000),
                          child: cachedNetworkImage(
                            imageUrl: widget.characterInfo.banner ??
                                widget.characterInfo.image ??
                                " ",
                            width: double.infinity,
                            height: 384 + (0.statusBar() * 2),
                            fit: BoxFit.cover,
                          )),
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
                      Positioned(
                        top: 40,
                        right: 16,
                        child: Card(
                          shape: const CircleBorder(),
                          elevation: 4,
                          child: IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 64,
                        left: 32,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 8,
                          child: SizedBox(
                            width: 172,
                            height: 256,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: cachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl:
                                    widget.characterInfo.image ?? " ")),
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.characterInfo.name ?? " ",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: theme.onSurface,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

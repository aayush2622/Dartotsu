import 'package:cached_network_image/cached_network_image.dart';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';

import '../../DataClass/Media.dart';

class MediaInfoPage extends StatefulWidget {
  final media mediaData;

  const MediaInfoPage(
    this.mediaData, {
    super.key,
  });

  @override
  MediaInfoPageState createState() => MediaInfoPageState();
}

class MediaInfoPageState extends State<MediaInfoPage> {
  @override
  Widget build(BuildContext context) {
    var mediaData = widget.mediaData;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
                height: 384 + (0.statusBar() * 2), child: _buildMediaSection()),
            /*FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  KenBurns(
                      maxScale: 1.5,
                      child: CachedNetworkImage(
                        imageUrl: mediaData.banner.toString(),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 108,
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 48.0,
                          //change this to change the transparent black box
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.66),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 108.0,
                                height: 160.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      16.0), // Similar to roundedImageView
                                  child: CachedNetworkImage(
                                    imageUrl: mediaData.cover.toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                mediaData.userPreferredName, // Replace with your title
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                mediaData.status.toString(), // Replace with your status
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              backgroundColor: Colors.transparent,
                              side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            child: Text(
                              'Add to List',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),*/
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Watched 10 out of 10', // Replace with your text
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {
                          // Favorite action
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.share),
                        onPressed: () {
                          // Share action
                        },
                      ),
                    ],
                  ),
                ),

                // Add your ViewPager2 equivalent widget here
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildMediaSection() {
    return Stack(
      children: [
        Positioned(
          child: KenBurns(
              maxScale: 2.5,
              minAnimationDuration : const Duration(milliseconds: 6000),
              maxAnimationDuration : const Duration(milliseconds: 20000),
              child: CachedNetworkImage(
                imageUrl: widget.mediaData.banner ?? '',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 384.statusBar(),
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 48.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.66),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

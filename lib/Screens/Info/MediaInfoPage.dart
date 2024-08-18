import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../Widgets/Info/InfoWidget.dart';
import '../../DataClass/Media.dart';

class MediaInfoPage extends StatelessWidget {
  final String mediaTitle;
  final String? cover;
  final String? banner;
  final String? status;
  final List<media> mediaList;
  const MediaInfoPage(
      {super.key,
      required this.mediaTitle,
      required this.cover,
      required this.banner,
      required this.status,
      required this.mediaList,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 384.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  KenBurns(
                      maxScale: 1.5,
                      child: CachedNetworkImage(
                        imageUrl: banner.toString(),
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
                          height: 48.0, //change this to change the transparent black box
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
                                    imageUrl: cover.toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                mediaTitle, // Replace with your title
                                style: GoogleFonts.poppins(
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
                                status.toString(), // Replace with your status
                                style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0 ),
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
                              style: GoogleFonts.poppins(
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
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ],
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
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon:const  Icon(Icons.favorite_border),
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
                InfoWidget(mediaTitle: mediaTitle , mediaList: mediaList,),
                // Add your ViewPager2 equivalent widget here
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const  [
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your comment action here
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

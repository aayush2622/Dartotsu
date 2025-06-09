import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:flutter/material.dart';

import '../../Widgets/CachedNetworkImage.dart';

class Developers {
  static List<Developer> get getDevelopersList {
    return [
      Developer(
        name: 'aayush262',
        pfp: 'https://s4.anilist.co/file/anilistcdn/user/avatar/large/b5144645-vGCFGixZUVSY.png',
        banner: 'https://s4.anilist.co/file/anilistcdn/user/banner/b5144645-aRu1A0QFBin4.jpg',
        uri: "https://github.com/aayush2622",
        role: "Lead Developer",
      ),
      Developer(
        name: "Rintaro",
        pfp: "https://i.ibb.co/MxWNVHvN/rintaro.jpg",
        banner:
            "https://i.ibb.co/s9J0GSNK/torii-gate-autumn-trees-moewalls-com-7018934.png",
        uri: "https://github.com/grayankit",
        role: "Developer",
      ),
      Developer(
        name: "itsmechinmoy",
        pfp: "https://files.catbox.moe/o45l03.gif",
        banner: "https://files.catbox.moe/gp3m17.gif",
        uri: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
        role: "Marketer & Discord Moderator",
      ),
      Developer(
        name: "Sheby",
        pfp: "https://s4.anilist.co/file/anilistcdn/user/avatar/large/b5724017-EKLuuBbOkt8Z.png",
        banner:
        "https://s4.anilist.co/file/anilistcdn/user/banner/b5724017-owslY4fmWD6L.jpg",
        uri: "https://anilist.co/user/ASheby/",
        role: "Discord Moderator",
      ),
      Developer(
        name: "SunglassJerry",
        pfp: "https://i.ibb.co/5hKgrZnx/9b2983d1dd5c4a6d8988c0ba24ddd6da.png",
        banner: "https://files.catbox.moe/2uibuz.jpg",
        uri: "https://youtu.be/SfT4FMkh1-w",
        role: "Discord Moderator",
      ),
      Developer(
        name: "Xerus",
        pfp: "https://i.ibb.co/gF6HSFqZ/20250517-100044.png",
        banner: "https://i.ibb.co/zhy5G1Tv/Walpaper-1.png",
        uri: "https://sxenon.carrd.co/",
        role: "Designer",
      ),
      Developer(
        name: "Th3 A6add0n1",
        pfp: "https://i.postimg.cc/hG9LcwnT/b2c6de2bef5542189c004789112b21c9-Comfy-UI-116902-transformed.png",
        banner: "https://i.postimg.cc/qM09rVdX/Abaddon.jpg",
        uri: "https://github.com/Th3-A6add0n",
        role: "Donor",
      ),

    ];
  }

  static List<Widget> getDevelopersWidget(BuildContext context) {
    return getDevelopersList.map((dev) {
      return InkWell(
        onTap: () async => openLinkInBrowser(dev.uri),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              if (dev.banner != null)
                cachedNetworkImage(
                  imageUrl: dev.banner,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 86,
                ),
              Container(
                width: double.infinity,
                height: 86,
                color: Colors.black.withOpacity(0.5),
              ),
              SizedBox(
                height: 86,
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: dev.pfp.isNotEmpty
                              ? CachedNetworkImageProvider(dev.pfp)
                              : null,
                          backgroundColor: Colors.transparent,
                          child: dev.pfp.isEmpty
                              ? Icon(
                                  Icons.person,
                                  size: 28,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                )
                              : null,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dev.name,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                dev.role,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }
}

class Developer {
  final String name;
  final String pfp;
  final String? banner;
  final String uri;
  final String role;

  Developer({
    required this.name,
    required this.pfp,
    this.banner,
    required this.uri,
    required this.role,
  });
}

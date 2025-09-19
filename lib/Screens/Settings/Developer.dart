import 'dart:convert';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:http/http.dart' as http;

import '../../Widgets/CachedNetworkImage.dart';

class Developers {
  static const List<String> excludedContributorIds = [
    '1607653',
    '65916846',
    '164009357',
    '62310815',
  ];

  static const List<String> defaultBanners = [
    'https://files.catbox.moe/mdn05t.png',
    'https://files.catbox.moe/zduba9.jpg',
    'https://files.catbox.moe/hqmdfx.png',
    'https://files.catbox.moe/n8pdqc.png',
  ];

  static Future<List<Developer>> get getDevelopersList async {
    final List<Developer> hardcodedDevelopers = [
      Developer(
        name: 'aayush262',
        githubId: '99584765',
        pfp:
            'https://s4.anilist.co/file/anilistcdn/user/avatar/large/b5144645-vGCFGixZUVSY.png',
        banner:
            'https://s4.anilist.co/file/anilistcdn/user/banner/b5144645-aRu1A0QFBin4.jpg',
        uri: 'https://github.com/aayush2622',
        role: 'Lead Developer',
        contributions: 0,
      ),
      Developer(
        name: 'Rintaro',
        githubId: '75238549',
        pfp: 'https://i.ibb.co/MxWNVHvN/rintaro.jpg',
        banner:
            'https://i.ibb.co/s9J0GSNK/torii-gate-autumn-trees-moewalls-com-7018934.png',
        uri: 'https://github.com/grayankit',
        role: 'Developer',
        contributions: 0,
      ),
      Developer(
        name: 'itsmechinmoy',
        githubId: '167056923',
        pfp: 'https://files.catbox.moe/o45l03.gif',
        banner: 'https://files.catbox.moe/gp3m17.gif',
        uri: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
        role: 'Marketer & Discord Moderator',
        contributions: 0,
      ),
      Developer(
        name: 'Sheby',
        githubId: '83452219',
        pfp:
            'https://s4.anilist.co/file/anilistcdn/user/avatar/large/b5724017-EKLuuBbOkt8Z.png',
        banner:
            'https://s4.anilist.co/file/anilistcdn/user/banner/b5724017-owslY4fmWD6L.jpg',
        uri: 'https://anilist.co/user/ASheby/',
        role: 'Discord Moderator',
        contributions: 0,
      ),
      Developer(
        name: 'SunglassJerry',
        githubId: '96760535',
        pfp: 'https://i.ibb.co/5hKgrZnx/9b2983d1dd5c4a6d8988c0ba24ddd6da.png',
        banner: 'https://files.catbox.moe/2uibuz.jpg',
        uri: 'https://youtu.be/SfT4FMkh1-w',
        role: 'Discord Moderator',
        contributions: 0,
      ),
      Developer(
        name: 'Xerus',
        githubId: '74928953',
        pfp: 'https://i.ibb.co/gF6HSFqZ/20250517-100044.png',
        banner: 'https://i.ibb.co/zhy5G1Tv/Walpaper-1.png',
        uri: 'https://sxenon.carrd.co/',
        role: 'Designer',
        contributions: 0,
      ),
      Developer(
        name: 'Th3 A6add0n1',
        githubId: '34588916',
        pfp:
            'https://i.postimg.cc/hG9LcwnT/b2c6de2bef5542189c004789112b21c9-Comfy-UI-116902-transformed.png',
        banner: 'https://i.postimg.cc/qM09rVdX/Abaddon.jpg',
        uri: 'https://github.com/Th3-A6add0n',
        role: 'Donor',
        contributions: 0,
      ),
    ];

    final List<Developer> fetchedContributors =
        await _fetchGitHubContributors();

    final Map<String, int> contributionMap = {
      for (final c in fetchedContributors) c.githubId: c.contributions,
    };

    final updatedHardcodedDevelopers = [
      for (final dev in hardcodedDevelopers)
        dev..contributions = contributionMap[dev.githubId] ?? dev.contributions
    ];

    final hardcodedIds = updatedHardcodedDevelopers
        .map((dev) => dev.githubId)
        .where((id) => id.isNotEmpty)
        .toSet();

    fetchedContributors
        .sort((a, b) => b.contributions.compareTo(a.contributions));

    final List<Developer> combinedList = [
      ...updatedHardcodedDevelopers,
      ...fetchedContributors
          .where((dev) => !hardcodedIds.contains(dev.githubId)),
    ];

    return combinedList;
  }

  static Future<List<Developer>> _fetchGitHubContributors() async {
    final List<Developer> contributors = [];
    int page = 1;
    const String apiUrl =
        'https://api.github.com/repos/aayush2622/Dartotsu/contributors?per_page=100';
    final random = Random();

    try {
      while (true) {
        final response = await http.get(
          Uri.parse('$apiUrl&page=$page'),
          headers: {'Accept': 'application/vnd.github.v3+json'},
        );

        if (response.statusCode != 200) {
          debugPrint('Error fetching contributors: ${response.statusCode}');
          break;
        }

        final List<dynamic> data = jsonDecode(response.body);
        if (data.isEmpty) break;

        for (var contributor in data) {
          final String githubId = contributor['id'].toString();
          if (excludedContributorIds.contains(githubId)) continue;

          contributors.add(Developer(
            name: contributor['login'],
            githubId: githubId,
            pfp: contributor['avatar_url'] ?? '',
            banner: defaultBanners[random.nextInt(defaultBanners.length)],
            uri: contributor['html_url'] ?? 'https://github.com',
            role: 'Contributor',
            contributions: contributor['contributions'] ?? 0,
          ));
        }

        page++;
      }
    } catch (e) {
      debugPrint('Error fetching contributors: $e');
    }

    return contributors;
  }

  static Widget getDevelopersWidget(BuildContext context) {
    return FutureBuilder(
      future: getDevelopersList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No developers found.'));
        } else {
          final developers = snapshot.data!;
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: developers.length,
            itemBuilder: (context, index) {
              final dev = developers[index];
              final card = InkWell(
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
                          imageUrl: dev.banner!,
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                        )
                                      : null,
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      if (dev.contributions > 0)
                                        Text(
                                          '${dev.contributions} contribution${dev.contributions == 1 ? '' : 's'}',
                                          style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            color: Colors.white60,
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

              // animate each item
              return card
                  .animate()
                  .fadeIn(duration: 400.ms, delay: (index * 50).ms)
                  .slide(begin: const Offset(0, 0.1));
            },
          );
        }
      },
    );
  }
}

class Developer {
  final String name;
  final String githubId;
  final String pfp;
  final String? banner;
  final String uri;
  final String role;
  int contributions;

  Developer({
    required this.name,
    required this.githubId,
    required this.pfp,
    this.banner,
    required this.uri,
    required this.role,
    required this.contributions,
  });
}

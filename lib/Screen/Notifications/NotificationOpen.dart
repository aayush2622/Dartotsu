import 'package:flutter/material.dart';

import '../../Api/Services/Anilist/AnilistService.dart';
import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Anime.dart';
import '../../Core/Services/Model/Manga.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../Detail/DetailScreen.dart';
import '../Social/SocialNavigation.dart';

bool canOpenNotification(ServiceNotification n) =>
    n.mediaId != null || n.activityId != null || n.userId != null;

void openNotification(
  BuildContext context,
  MediaService service,
  ServiceNotification n,
) {
  if (n.mediaId == null) {
    if (n.activityId != null) {
      return openActivityFeed(context, service, activityId: n.activityId);
    }
    if (n.userId != null) {
      return openProfile(context, service, id: n.userId);
    }
    return;
  }
  final anime = n.mediaIsAnime ?? true;
  navigateToPage(
    context,
    DetailScreen(
      media: Media(
        id: n.mediaId!,
        userPreferredName: n.title,
        cover: n.imageUrl,
        anime: anime ? Anime() : null,
        manga: anime ? null : Manga(),
        shareLink: service.id == anilistServiceId
            ? 'https://anilist.co/${anime ? 'anime' : 'manga'}/${n.mediaId}'
            : '',
      ),
      view: service.detailView,
      mutations: service.getMutations,
    ),
    hero: true,
  );
}

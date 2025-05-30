import 'package:dartotsu/Api/Sources/Model/Source.dart';

import '../../../../../DataClass/Anime.dart';
import '../../../../../DataClass/Manga.dart';
import '../../../../../DataClass/Media.dart';
import '../../../../../Preferences/PrefManager.dart';
import 'm_manga.dart';

class MPages {
  List<MManga> list;
  bool hasNextPage;

  MPages({required this.list, this.hasNextPage = false});

  factory MPages.fromJson(Map<String, dynamic> json) {
    return MPages(
      list: json['list'] != null
          ? (json['list'] as List).map((e) => MManga.fromJson(e)).toList()
          : [],
      hasNextPage: json['hasNextPage'],
    );
  }

  Map<String, dynamic> toJson() => {
        'list': list.map((v) => v.toJson()).toList(),
        'hasNextPage': hasNextPage,
      };
}

extension M on MPages {
  List<Media> toMedia({bool isAnime = false, Source? source}) {
    return list.map((e) {
      var id = loadCustomData<int>('${source?.name}-${e.link}');
      if (id == null) {
        var hash = e.hashCode;
        saveCustomData('${source?.name}-${e.link}', hash);
        id = hash;
      }
      return Media(
        id: id,
        name: e.name,
        cover: e.imageUrl,
        nameRomaji: e.name ?? '',
        userPreferredName: e.name ?? '',
        isAdult: false,
        shareLink: e.link,
        minimal: true,
        anime: isAnime ? Anime() : null,
        manga: isAnime ? null : Manga(),
        sourceData: source,
        relation: source?.name ?? '',
      );
    }).toList();
  }
}

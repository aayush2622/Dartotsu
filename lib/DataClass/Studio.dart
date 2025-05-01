import 'package:json_annotation/json_annotation.dart';

import 'Media.dart';

@JsonSerializable()
class studio {
  int id;
  String? name;
  bool? isAnimationStudio;
  String? siteUrl;
  Map<String, List<Media>>? media;
  bool? isFavourite;
  int? favourites;
  String? imageUrl;

  studio({
    required this.id,
    this.name,
    this.isAnimationStudio,
    this.siteUrl,
    this.media,
    this.isFavourite,
    this.favourites,
    this.imageUrl,
  });
}

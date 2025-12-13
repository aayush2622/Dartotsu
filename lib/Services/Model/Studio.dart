import 'package:json_annotation/json_annotation.dart';
import 'Media.dart';
part 'Generated/Studio.g.dart';

@JsonSerializable()
class Studio {
  String id;
  String name;
  String? url;
  bool? isAnimationStudio;
  List<Media>? media;
  bool? isFav;
  int? favourites;

  Studio({
    required this.id,
    required this.name,
    this.isAnimationStudio,
    this.url,
    this.media,
    this.isFav,
    this.favourites,
  });
  factory Studio.fromJson(Map<String, dynamic> json) => _$StudioFromJson(json);
  Map<String, dynamic> toJson() => _$StudioToJson(this);
}

import 'package:isar/isar.dart';

part 'ShowResponse.g.dart';

@collection
class ShowResponse {
  Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  late String key;

  final String? name;
  final String? link;
  final String? coverUrl;
  final List<String> otherNames;
  final int? total;

  ShowResponse({
    this.name,
    this.link,
    this.coverUrl,
    this.otherNames = const [],
    this.total,
  });

  factory ShowResponse.fromJson(Map<String, dynamic> json) {
    return ShowResponse(
      name: json['name'],
      link: json['link'],
      coverUrl: json['coverUrl'],
      otherNames: json['otherNames'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'link': link,
      'coverUrl': coverUrl,
      'otherNames': otherNames,
      'total': total,
    };
  }
}

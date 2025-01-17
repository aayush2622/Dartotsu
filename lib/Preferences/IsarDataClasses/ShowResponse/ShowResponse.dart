
import 'package:isar/isar.dart';
part 'ShowResponse.g.dart';

@collection
class ShowResponse {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String key;

  final String name;
  final String link;
  final String coverUrl;
  final List<String> otherNames;
  final int? total;

  ShowResponse({
    required this.name,
    required this.link,
    required this.coverUrl,
    this.otherNames = const [],
    this.total
  });
}

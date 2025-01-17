
import 'package:isar/isar.dart';
part 'Selected.g.dart';

@collection
class Selected {
  Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  late String key;

  int window;
  int recyclerStyle;
  bool recyclerReversed;
  int chip;
  int sourceIndex;
  int langIndex;
  bool preferDub;
  String? server;
  int video;
  double latest;
  List<String>? scanlators;

  Selected({
    this.window = 0,
    this.recyclerStyle = 0,
    this.recyclerReversed = false,
    this.chip = 0,
    this.sourceIndex = 0,
    this.langIndex = 0,
    this.preferDub = false,
    this.server,
    this.video = 0,
    this.latest = 0.0,
    this.scanlators,
  });
}

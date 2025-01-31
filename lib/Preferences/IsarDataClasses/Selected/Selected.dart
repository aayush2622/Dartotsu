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

  factory Selected.fromJson(Map<String, dynamic> json) {
    return Selected(
      window: json['window'],
      recyclerStyle: json['recyclerStyle'],
      recyclerReversed: json['recyclerReversed'],
      chip: json['chip'],
      sourceIndex: json['sourceIndex'],
      langIndex: json['langIndex'],
      preferDub: json['preferDub'],
      server: json['server'],
      video: json['video'],
      latest: json['latest'],
      scanlators: json['scanlators'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'window': window,
      'recyclerStyle': recyclerStyle,
      'recyclerReversed': recyclerReversed,
      'chip': chip,
      'sourceIndex': sourceIndex,
      'langIndex': langIndex,
      'preferDub': preferDub,
      'server': server,
      'video': video,
      'latest': latest,
      'scanlators': scanlators,
    };
  }
}

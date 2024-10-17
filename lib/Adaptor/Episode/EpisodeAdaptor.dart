
import 'package:flutter/widgets.dart';

import '../../DataClass/Episode.dart';

class EpisodeAdaptor extends StatefulWidget {
  final int type;
  final List<Episode> episodeList;

  const EpisodeAdaptor({super.key, required this.type, required this.episodeList});

  @override
  EpisodeAdaptorState createState() => EpisodeAdaptorState();

}

class EpisodeAdaptorState extends State<EpisodeAdaptor> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
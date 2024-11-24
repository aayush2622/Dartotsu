import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import '../../DataClass/Media.dart';
import 'BaseMediaScreen.dart';

abstract class BaseAnimeScreen extends BaseMediaScreen{
  var trending = Rxn<List<Media>>();

  void loadTrending(int page);

  List<Widget> mediaContent(BuildContext context);
}
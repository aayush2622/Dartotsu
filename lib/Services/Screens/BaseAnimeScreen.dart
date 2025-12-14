import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Services/Model/Media.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'BaseMediaScreen.dart';

abstract class BaseAnimeScreen extends BaseMediaScreen {
  var trending = Rxn<List<Media>>();

  void loadTrending(int page);
}

import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Services/Model/Media.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'BaseMediaScreen.dart';

abstract class BaseMangaScreen extends BaseMediaScreen {
  var trending = Rxn<List<Media>>();

  void loadTrending(String type);
}

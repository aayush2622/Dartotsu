import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Adaptor/Media/Widgets/Chips.dart';
import '../../DataClass/Media.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'BaseMediaScreen.dart';

abstract class BaseAnimeScreen extends BaseMediaScreen {
  var trending = Rxn<List<Media>>();

  void loadTrending(int page);

  List<ChipData> get trendingChips => [
    ChipData(label: getString.thisSeason, action: () => loadTrending(1)),
    ChipData(label: getString.nextSeason, action: () => loadTrending(2)),
    ChipData(label: getString.previousSeason, action: () => loadTrending(0)),
  ];
}
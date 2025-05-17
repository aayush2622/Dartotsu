import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Adaptor/Media/Widgets/Chips.dart';
import '../../DataClass/Media.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'BaseMediaScreen.dart';

abstract class BaseMangaScreen extends BaseMediaScreen {
  var trending = Rxn<List<Media>>();

  void loadTrending(String type);

  List<ChipData> get trendingChips => [
        ChipData(
          label: getString.trending(getString.manga),
          action: () => loadTrending('MANGA'),
        ),
        ChipData(
          label: getString.trending(getString.manhwa),
          action: () => loadTrending('MANHWA'),
        ),
        ChipData(
          label: getString.trending(getString.novel),
          action: () => loadTrending('NOVEL'),
        ),
      ];
}

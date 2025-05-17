import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../Adaptor/Media/Widgets/Chips.dart';
import '../../Adaptor/Media/Widgets/MediaCard.dart';
import '../../DataClass/Media.dart';
import '../../Functions/Function.dart';
import '../../Screens/Calendar/CalendarScreen.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'BaseMediaScreen.dart';

abstract class BaseAnimeScreen extends BaseMediaScreen {
  var trending = Rxn<List<Media>>();

  void loadTrending(int page);

  List<ChipData> get trendingChips => [
        ChipData(label: getString.thisSeason, action: () => loadTrending(1)),
        ChipData(label: getString.nextSeason, action: () => loadTrending(2)),
        ChipData(
            label: getString.previousSeason, action: () => loadTrending(0)),
      ];

  List<Widget> trendingCards(BuildContext context) => [
        MediaCard(
          context,
          getString.genres.toUpperCase(),
          "https://s4.anilist.co/file/anilistcdn/media/anime/banner/16498-8jpFCOcDmneX.jpg",
          onTap: () {},
        ),
        MediaCard(
          context,
          getString.calendar.toUpperCase(),
          "https://s4.anilist.co/file/anilistcdn/media/anime/banner/125367-hGPJLSNfprO3.jpg",
          onTap: () => navigateToPage(context, const CalendarScreen()),
        ),
      ];
}

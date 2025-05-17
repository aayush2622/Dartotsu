import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';

import '../../Api/Anilist/Anilist.dart';
import '../../DataClass/Media.dart';

class CalendarViewModel extends GetxController {
  var calendarData = Rxn<Map<String, List<Media>>>();
  var cachedAllCalendarData = Rxn<Map<String, List<Media>>>();
  var cachedLibraryCalendarData = Rxn<Map<String, List<Media>>>();
  var isLoading = false.obs;

  Future<void> loadAll({bool showOnlyLibrary = false}) async {
    try {
      isLoading.value = true;
      if (cachedAllCalendarData.value == null ||
          cachedLibraryCalendarData.value == null) {
        final res = await Anilist.query!.getCalendarData();

        final DateFormat df = DateFormat.yMMMMEEEEd();
        final Map<String, List<Media>> allMap = {};
        final Map<String, List<Media>> libraryMap = {};
        final Map<String, List<int>> idMap = {};

        final int userId = Anilist.userid ?? 0;
        final userLibrary =
            await Anilist.query!.getMediaLists(userId: userId, anime: true);
        final libraryMediaIds =
            userLibrary.values.expand((list) => list).map((m) => m.id).toList();

        for (var item in res) {
          final List<int> v =
              item.relation?.split(",").map((e) => int.parse(e)).toList() ?? [];
          final String dateInfo =
              df.format(DateTime.fromMillisecondsSinceEpoch(v[1] * 1000));

          final list = allMap.putIfAbsent(dateInfo, () => []);
          final List<Media>? libraryList = libraryMediaIds.contains(item.id)
              ? libraryMap.putIfAbsent(dateInfo, () => [])
              : null;
          final idList = idMap.putIfAbsent(dateInfo, () => []);

          item.relation = "Episode ${v[0]}";
          if (!idList.contains(item.id)) {
            idList.add(item.id);
            list.add(item);
            libraryList?.add(item);
          }
        }

        cachedAllCalendarData.value = allMap;
        cachedLibraryCalendarData.value = libraryMap;
      }

      calendarData.value = (showOnlyLibrary
          ? cachedLibraryCalendarData.value ?? {}
          : cachedAllCalendarData.value ?? {});
    } finally {
      isLoading.value = false;
    }
  }
}

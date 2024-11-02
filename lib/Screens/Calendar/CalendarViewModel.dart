import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';

import '../../DataClass/Media.dart';
import '../../api/Anilist/Anilist.dart';

class CalendarViewModel extends GetxController {
  var calendarData =  Rxn<Map<String, List<media>>>();
  var calendar = RxMap<String, List<media>>();

  Map<String, List<media>>? cachedAllCalendarData;
  Map<String, List<media>>? cachedLibraryCalendarData;
  var isLoading = false.obs;
  Future<void> loadAll({bool showOnlyLibrary = false}) async {
    try{
      isLoading.value = true;
      if (cachedAllCalendarData == null || cachedLibraryCalendarData == null) {
        final res = await Anilist.query.getCalendarData();

        final DateFormat df = DateFormat.yMMMMEEEEd();
        final Map<String, List<media>> allMap = {};
        final Map<String, List<media>> libraryMap = {};
        final Map<String, List<int>> idMap = {};

        final int userId = Anilist.userid ?? 0;
        final userLibrary = await Anilist.query.getMediaLists(userId: userId, anime: true);
        final libraryMediaIds = userLibrary.values.expand((list) => list).map((m) => m.id).toList();

        for (var item in res) {
          final List<int> v = item.relation?.split(",").map((e) => int.parse(e)).toList() ?? [];
          final String dateInfo = df.format(DateTime.fromMillisecondsSinceEpoch(v[1] * 1000));

          final list = allMap.putIfAbsent(dateInfo, () => []);
          final List<media>? libraryList = libraryMediaIds.contains(item.id) ? libraryMap.putIfAbsent(dateInfo, () => []) : null;
          final idList = idMap.putIfAbsent(dateInfo, () => []);

          item.relation = "Episode ${v[0]}";
          if (!idList.contains(item.id)) {
            idList.add(item.id);
            list.add(item);
            libraryList?.add(item);
          }
        }

        cachedAllCalendarData = allMap;
        cachedLibraryCalendarData = libraryMap;
      }

      calendarData.value = (showOnlyLibrary ? cachedLibraryCalendarData ?? {} : cachedAllCalendarData ?? {});
    }finally{
      isLoading.value = false;
    }
  }



}

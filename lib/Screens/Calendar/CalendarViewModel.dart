import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../DataClass/Media.dart';
import '../../api/Anilist/Anilist.dart';

class CalendarViewModel extends GetxController {
  var calendarData =  Rxn<List<media>>();
  var isLoading = false.obs;
  Future<void> loadAll() async {
    try{
      isLoading.value = true;
      var res = await Anilist.query
      .getCalendarData();
      calendarData.value = res;
      // print(res);
    }finally{
      isLoading.value = false;
    }
  }
}

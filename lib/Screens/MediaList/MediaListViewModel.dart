import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../DataClass/Media.dart';
import '../../api/Anilist/Anilist.dart';

class MediaListViewModel extends GetxController {
  var mediaList= Rxn<Map<String, List<media>>>();
  var isLoading = false.obs;
  Future<void> loadAll({
    required bool anime,
    required int userId,
    String? sortOrder,
  }) async {
    try {
      isLoading.value = true;
      var res = await Anilist.query
          .getMediaLists(anime: anime, userId: userId, sortOrder: sortOrder);
      mediaList.value = res;
    } finally {
      isLoading.value = false;
    }
  }
}

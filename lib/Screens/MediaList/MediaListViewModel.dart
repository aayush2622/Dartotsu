import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Api/Anilist/Anilist.dart';
import '../../DataClass/Media.dart';

class MediaListViewModel extends GetxController {
  var mediaList = Rxn<Map<String, List<Media>>>();
  var isLoading = false.obs;

  Future<void> loadAll({
    required bool anime,
    required int userId,
    String? sortOrder,
  }) async {
    try {
      if (mediaList.value != null) return;
      isLoading.value = true;
      mediaList.value = await Anilist.query!
          .getMediaLists(anime: anime, userId: userId, sortOrder: sortOrder);
    } finally {
      isLoading.value = false;
    }
  }
}

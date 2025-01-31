part of '../ExtensionsQueries.dart';

extension on ExtensionsQueries {
  Future<Map<String, List<Media>>> _initHomePage() async {
    /*var onMediaTap: (i, m) {
      try {
        final localData = loadCustomData<String>('extensions_media_lists')?.trim();
        final list = (localData?.isNotEmpty ?? false)
            ? MediaMapWrapper.fromJson(jsonDecode(localData!))
            : MediaMapWrapper(mediaMap: {'Continue Watching': []});

        final continueWatching = list.mediaMap.putIfAbsent('Continue Watching', () => []);

        if (!continueWatching.any((element) => element.name == m.name)) {
          continueWatching.add(m);
          saveCustomData('extensions_media_lists', jsonEncode(list));
          debugPrint(jsonEncode(list));
        }
      } catch (e) {
        debugPrint("Error decoding JSON: $e");
      }
    },*/
    var localData = loadCustomData<String>('extensions_media_lists');
    if (localData != null && localData.trim().isNotEmpty) {
      List<int> hidden = [];
      Map<String, List<Media>> list =
          MediaMapWrapper.fromJson(jsonDecode(localData)).mediaMap;

      List<Media> hiddenList = list.values.expand((mediaList) {
        return mediaList.where((media) => hidden.contains(media.id)).toList();
      }).toList();

      list.forEach((key, mediaList) {
        mediaList.removeWhere((media) => hidden.contains(media.id));
      });

      if (hiddenList.isNotEmpty) {
        list['hidden'] = hiddenList;
      }

      return list;
    }

    return {};
  }
}

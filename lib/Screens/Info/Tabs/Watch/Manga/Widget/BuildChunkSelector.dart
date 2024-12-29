import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../../DataClass/Chapter.dart';
import '../../../../../../Widgets/ScrollConfig.dart';

(List<List<Chapter>> chunks, RxInt selectedChunkIndex) buildChunks(
  BuildContext context,
  List<Chapter> chapterList,
  String selectedEpisode,
) {
  final chunks = _chunkEpisodes(chapterList, _calculateChunkSize(chapterList));
  final selectedChunkIndex = _findSelectedChunkIndex(
    chunks,
    selectedEpisode,
  );
  return (chunks, selectedChunkIndex);
}

int _calculateChunkSize(List<Chapter> chapterList) {
  final total = chapterList.length;
  final divisions = total / 10;
  return (divisions < 25)
      ? 25
      : (divisions < 50)
          ? 50
          : 100;
}

List<List<Chapter>> _chunkEpisodes(List<Chapter> chapterList, int chunkSize) {
  return List.generate(
      (chapterList.length / chunkSize).ceil(),
      (index) => chapterList.sublist(
            index * chunkSize,
            (index + 1) * chunkSize > chapterList.length
                ? chapterList.length
                : (index + 1) * chunkSize,
          ));
}

RxInt _findSelectedChunkIndex(
    List<List<Chapter>> chunks, String targetEpisodeNumber) {
  for (var chunkIndex = 0; chunkIndex < chunks.length; chunkIndex++) {
    if (chunks[chunkIndex]
        .any((episode) => episode.number == targetEpisodeNumber)) {
      return chunkIndex.obs;
    }
  }
  return 0.obs;
}

Widget buildChunkSelector(
  BuildContext context,
  List<List<Chapter>> chunks,
  RxInt selectedChunkIndex,
  RxBool isReversed,
) {
  if (chunks.length < 2) {
    return const SizedBox();
  }
  return ScrollConfig(
    context,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          chunks.length,
          (index) {
            return Padding(
              padding: EdgeInsets.only(
                left: Directionality.of(context) == TextDirection.rtl
                    ? (index == chunks.length - 1 ? 32.0 : 6.0)
                    : (index == 0 ? 32.0 : 6.0),
                right: Directionality.of(context) == TextDirection.rtl
                    ? (index == 0 ? 32.0 : 6.0)
                    : (index == chunks.length - 1 ? 32.0 : 6.0),
              ),
              child: Obx(
                () => ChoiceChip(
                  showCheckmark: false,
                  label: Text(
                    !isReversed.value
                        ? '${chunks[index].first.number} - ${chunks[index].last.number}'
                        : '${chunks[index].last.number} - ${chunks[index].first.number}',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  selected: selectedChunkIndex.value == index,
                  onSelected: (bool selected) {
                    if (selected) {
                      selectedChunkIndex.value = index;
                    }
                  },
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}

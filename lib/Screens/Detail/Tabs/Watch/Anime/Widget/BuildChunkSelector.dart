import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../../Widgets/ScrollConfig.dart';

(List<List<DEpisode>> chunks, RxInt selectedChunkIndex) buildChunks(
  BuildContext context,
  Map<String, DEpisode> episodeList,
  String selectedEpisode,
) {
  final chunks = _chunkEpisodes(episodeList, _calculateChunkSize(episodeList));
  final selectedChunkIndex = _findSelectedChunkIndex(
    chunks,
    selectedEpisode,
  );
  return (chunks, selectedChunkIndex);
}

int _calculateChunkSize(Map<String, DEpisode> episodeList) {
  final total = episodeList.values.length;
  final divisions = total / 10;
  return (divisions < 25)
      ? 25
      : (divisions < 50)
          ? 50
          : 100;
}

List<List<DEpisode>> _chunkEpisodes(
    Map<String, DEpisode> episodeList, int chunkSize) {
  final episodeValues = episodeList.values.toList();
  return List.generate(
      (episodeValues.length / chunkSize).ceil(),
      (index) => episodeValues.sublist(
            index * chunkSize,
            (index + 1) * chunkSize > episodeValues.length
                ? episodeValues.length
                : (index + 1) * chunkSize,
          ));
}

RxInt _findSelectedChunkIndex(
    List<List<DEpisode>> chunks, String targetEpisodeNumber) {
  for (var chunkIndex = 0; chunkIndex < chunks.length; chunkIndex++) {
    if (chunks[chunkIndex]
        .any((episode) => episode.episodeNumber == targetEpisodeNumber)) {
      return chunkIndex.obs;
    }
  }
  return 0.obs;
}

Widget ChunkSelector(
  BuildContext context,
  List<List<DEpisode>> chunks,
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
                          ? '${chunks[index].first.episodeNumber} - ${chunks[index].last.episodeNumber}'
                          : '${chunks[index].last.episodeNumber} - ${chunks[index].first.episodeNumber}',
                      style: const TextStyle(
                          fontFamily: 'Poppins', fontWeight: FontWeight.bold)),
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

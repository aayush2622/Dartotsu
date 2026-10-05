import 'package:get/get.dart';

import '../Model/Media.dart';

class DetailHost {
  final Rx<Media> media;
  final String? heroTag;
  final void Function(Media media, String? heroTag) open;
  final Future<void> Function() refresh;
  final RxBool loading;

  DetailHost({
    required Media media,
    required this.loading,
    required this.heroTag,
    required this.open,
    required this.refresh,
  }) : media = media.obs;

  void update(Media next) {
    media.value = next;
    media.refresh();
  }
}

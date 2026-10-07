import '../Model/Media.dart';
import '../../State/State.dart';

class DetailHost {
  final Live<Media> media;
  final String? heroTag;
  final void Function(Media media, String? heroTag) open;
  final Future<void> Function() refresh;
  final Live<bool> loading;
  final void Function(String query) search;
  bool cached;

  DetailHost({
    required Media media,
    required this.loading,
    required this.heroTag,
    required this.open,
    required this.search,
    this.cached = false,
    required this.refresh,
  }) : media = media.live;

  void update(Media next) {
    media.value = next;
    media.refresh();
  }
}

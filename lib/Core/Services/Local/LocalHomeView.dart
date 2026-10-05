import '../MediaService.dart';

class LocalHomeView implements HomeScreenView {
  final MediaService service;

  LocalHomeView(this.service);

  Future<SectionMap> localSections() async {
    final anime = service.localStore(anime: true);
    final manga = service.localStore(anime: false);
    if (anime.serviceId == manga.serviceId) return anime.sections();
    return {...anime.sections(anime: true), ...manga.sections(anime: false)};
  }

  @override
  Stream<List<ScreenWidget>> screenStream() async* {
    final sections = await localSections();
    yield [
      for (final e in sections.entries) ScreenWidget.media(e.key, e.value),
    ];
  }

  @override
  Future<List<String?>> bannerImages() => Future.value(const [null, null]);
}

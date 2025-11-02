import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dartotsu/Downloader/Util/EpisodeRecognition.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

class AnimeLocalSource extends Source implements HasSourceMethods {
  AnimeLocalSource() : super();

  @override
  String get name => "Local";

  @override
  String get id => "local_source_anime";

  @override
  String get lang => "all";

  @override
  ItemType get itemType => ItemType.anime;

  @override
  SourceMethods get methods => AnimeLocalSourceMethods(this);
}

class AnimeLocalSourceMethods implements SourceMethods {
  @override
  Source source;

  AnimeLocalSourceMethods(this.source);

  Future<Directory?> getAnimeDirectory() {
    return PrefManager.getDirectory(
        subPath: "local/anime", useCustomPath: true, useSystemPath: false);
  }

  Future<List<DMedia>> _getAllMedia() async {
    List<DMedia> mediaList = [];

    final dir = await getAnimeDirectory();

    if (dir == null || !await dir.exists()) {
      return mediaList;
    }

    await for (var entity in dir.list(recursive: false, followLinks: false)) {
      if (entity is Directory) {
        final dirName = entity.path.split(Platform.pathSeparator).last;

        String? coverPath;

        await for (var file in entity.list()) {
          if (file is File &&
              file.path.split(Platform.pathSeparator).last.contains("cover") &&
              file.path.isImage()) {
            coverPath = file.path;
            break;
          }
        }

        mediaList.add(
          DMedia(
            title: dirName,
            cover: coverPath,
            url: entity.path,
          ),
        );
      }
    }

    return mediaList;
  }

  @override
  Future<DMedia> getDetail(DMedia media) async {
    if (media.url == null) {
      throw Exception("Media URL is null");
    }

    Directory animeDirectory = Directory(media.url!);

    if (!await animeDirectory.exists()) {
      throw Exception("Anime directory does not exist");
    }

    List<DEpisode> episodes = [];

    await for (var entity
        in animeDirectory.list(recursive: false, followLinks: false)) {
      if (entity is File && entity.path.isMediaVideo()) {
        final fileName = entity.path.split(Platform.pathSeparator).last;
        final episodeName = fileName.substring(0, fileName.lastIndexOf('.'));

        final episodeNumber = EpisodeRecognition.parseEpisodeNumber(
            media.title ?? "", episodeName);

        episodes.add(
          DEpisode(
            episodeNumber: episodeNumber.toInt().toString(),
            name: fileName,
            url: entity.path,
          ),
        );
      }
    }

    return DMedia(
      title: media.title,
      cover: media.cover,
      url: media.url,
      episodes: episodes.sorted((a, b) {
        final aNum = double.tryParse(a.episodeNumber.toString()) ?? 0.0;
        final bNum = double.tryParse(b.episodeNumber.toString()) ?? 0.0;
        return bNum.compareTo(aNum);
      }),
    );
  }

  @override
  Future<Pages> getPopular(int page) async {
    List<DMedia> mediaList = await _getAllMedia();

    mediaList.sort((a, b) => (a.title ?? "").compareTo(b.title ?? ""));

    return Pages(list: mediaList);
  }

  @override
  Future<List<Video>> getVideoList(DEpisode episode) {
    return Future.value([
      Video(
        "Local File",
        episode.url!,
        "Local File",
      ),
    ]);
  }

  @override
  Future<Pages> search(String query, int page, List filters) async {
    return Pages(list: await _getAllMedia());
  }

  @override
  Future<List<SourcePreference>> getPreference() {
    return Future.value([]);
  }

  @override
  Future<bool> setPreference(SourcePreference pref, value) {
    throw true;
  }

  @override
  Future<Pages> getLatestUpdates(int page) {
    //not used for anime
    throw UnimplementedError();
  }

  @override
  Future<String?> getNovelContent(String chapterTitle, String chapterId) {
    //not used for anime
    throw UnimplementedError();
  }

  @override
  Future<List<PageUrl>> getPageList(DEpisode episode) {
    //not used for anime
    throw UnimplementedError();
  }
}

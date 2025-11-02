import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

//Source: https://github.com/aniyomiorg/aniyomi/blob/main/domain/src/main/java/tachiyomi/domain/items/episode/service/EpisodeRecognition.kt
class EpisodeRecognition {
  static const String _numberPattern = r'([0-9]+)(\.[0-9]+)?(\.?[a-z]+)?';

  /// All cases with e.xx, exx, episode xx, or ep xx
  /// kaguya-sama wa kokurasetai - s01e01v2 (BD 1080p HEVC) -R> 01
  static final RegExp _basic =
      RegExp(r'(?<=\be\.|\be|episode|\bep) *' + _numberPattern);

  /// Example: Bleach 567: Down With Snowwhite -R> 567
  static final RegExp _number = RegExp(_numberPattern);

  /// Regex to remove tags
  /// Example: [flugel] kaguya-sama wa kokurasetai - s01e01v2 (bd 1080p hevc) [multi audio] [80ac7b2e] ->
  /// -> kaguya-sama wa kokurasetai - s01e01v2
  static final RegExp _tagRegex =
      RegExp(r'^\[[^\]]+\]|\[[^\]]+\]\s*$|^\([^\)]+\)|\([^\)]+\)\s*$');

  /// Regex used to remove unwanted tags
  /// Example kaguya-sama wa kokurasetai - s01e01v2 1080p ->
  static final RegExp _unwanted =
      RegExp(r'\b(?:v|ver|version|season|s)[^a-z]?[0-9]+|\b\d+p\b|hi10');

  /// Regex used to remove unwanted whitespace
  /// Example One Piece 12 special -R> One Piece 12special
  static final RegExp _unwantedWhiteSpace =
      RegExp(r'\s(?=extra|special|omake)');

  static double parseEpisodeNumber(String animeTitle, String episodeName,
      [double? episodeNumber]) {
    // If episode number is known return.
    if (episodeNumber != null &&
        (episodeNumber == -2.0 || episodeNumber > -1.0)) {
      return episodeNumber;
    }

    // Get episode title with lower case
    String cleanEpisodeName = episodeName
        .toLowerCase()
        // Remove anime title from episode title.
        .replaceAll(animeTitle.toLowerCase(), "")
        .trim()
        // Remove comma's or hyphens.
        .replaceAll(',', '.')
        .replaceAll('-', '.')
        // Remove unwanted white spaces.
        .replaceAll(_unwantedWhiteSpace, "");

    // Remove all tags while they exist
    while (_tagRegex.hasMatch(cleanEpisodeName)) {
      cleanEpisodeName = cleanEpisodeName.replaceAll(_tagRegex, "");
    }

    final Iterable<RegExpMatch> numberMatches =
        _number.allMatches(cleanEpisodeName);

    if (numberMatches.isEmpty) {
      return episodeNumber ?? -1.0;
    } else if (numberMatches.length > 1) {
      // Remove unwanted tags.
      String name = cleanEpisodeName.replaceAll(_unwanted, "");

      // Check base case ep.xx
      RegExpMatch? basicMatch = _basic.firstMatch(name);
      if (basicMatch != null) {
        return _getEpisodeNumberFromMatch(basicMatch);
      }

      // need to find again first number might already removed
      RegExpMatch? numberMatch = _number.firstMatch(name);
      if (numberMatch != null) {
        return _getEpisodeNumberFromMatch(numberMatch);
      }
    }

    return _getEpisodeNumberFromMatch(numberMatches.first);
  }

  /// Check if episode number is found and return it
  /// @param match result of regex
  /// @return episode number if found else null
  static double _getEpisodeNumberFromMatch(RegExpMatch match) {
    final double initial = double.parse(match.group(1)!);
    final String? subEpisodeDecimal = match.group(2);
    final String? subEpisodeAlpha = match.group(3);
    final double addition =
        _checkForDecimal(subEpisodeDecimal, subEpisodeAlpha);
    return initial + addition;
  }

  /// Check for decimal in received strings
  /// @param decimal decimal value of regex
  /// @param alpha alpha value of regex
  /// @return decimal/alpha float value
  static double _checkForDecimal(String? decimal, String? alpha) {
    if (decimal != null && decimal.isNotEmpty) {
      return double.parse(decimal);
    }

    if (alpha != null && alpha.isNotEmpty) {
      if (alpha.contains("extra")) {
        return 0.99;
      }

      if (alpha.contains("omake")) {
        return 0.98;
      }

      if (alpha.contains("special")) {
        return 0.97;
      }

      final String trimmedAlpha = alpha.replaceFirst(RegExp(r'^\.'), '');
      if (trimmedAlpha.length == 1) {
        return _parseAlphaPostFix(trimmedAlpha.codeUnitAt(0));
      }
    }

    return 0.0;
  }

  /// x.a -> x.1, x.b -> x.2, etc
  static double _parseAlphaPostFix(int alphaCode) {
    final int number = alphaCode - ('a'.codeUnitAt(0) - 1);
    if (number >= 10) return 0.0;
    return number / 10.0;
  }
}

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
    print("Anime Local Source Directory: ${dir?.path}");

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

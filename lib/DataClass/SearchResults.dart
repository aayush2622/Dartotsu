import 'package:json_annotation/json_annotation.dart';

import 'Author.dart';
import 'Character.dart';
import 'Media.dart';
import 'Studio.dart';
import 'User.dart';

part 'Data/SearchResults.g.dart';

@JsonSerializable()
class SearchResults {
  SearchType type;
  bool? isAdult;
  bool? onList;
  int? perPage;
  String? search;
  String? countryOfOrigin;
  String? sort;
  List<String>? genres;
  List<String>? excludedGenres;
  List<String>? tags;
  List<String>? excludedTags;
  String? status;
  String? source;
  String? format;
  int? seasonYear;
  int? startYear;
  String? season;
  int? page;
  List<Media>? results;
  List<character>? characters;
  List<author>? staff;
  List<userData>? users;
  List<studio>? studios;
  bool? hasNextPage;
  int? id;
  bool? hdCover;

  SearchResults({
    this.type = SearchType.ANIME,
    this.isAdult,
    this.onList,
    this.perPage,
    this.search,
    this.countryOfOrigin,
    this.sort,
    this.genres,
    this.excludedGenres,
    this.tags,
    this.excludedTags,
    this.status,
    this.source,
    this.format,
    this.seasonYear,
    this.startYear,
    this.season,
    this.page = 1,
    this.results = const [],
    this.characters = const [],
    this.staff = const [],
    this.users = const [],
    this.hasNextPage = false,
    this.hdCover,
    this.id,
  });

  List<SearchChip> toChipList() {
    final List<SearchChip> list = [];
    if (sort != null) {
      list.add(SearchChip("SORT", "Sort: $sort"));
    }
    if (status != null) {
      list.add(SearchChip("STATUS", "Status: $status"));
    }
    if (source != null) {
      list.add(SearchChip("SOURCE", "Source: $source"));
    }
    if (format != null) {
      list.add(SearchChip("FORMAT", "Format: $format"));
    }
    if (countryOfOrigin != null) {
      list.add(SearchChip("COUNTRY", "Country of Origin: $countryOfOrigin"));
    }
    if (season != null) {
      list.add(SearchChip("SEASON", "Season: $season"));
    }
    if (startYear != null) {
      list.add(SearchChip("START_YEAR", "Start Year: $startYear"));
    }
    if (seasonYear != null) {
      list.add(SearchChip("SEASON_YEAR", "Season Year: $seasonYear"));
    }
    genres?.forEach((genre) {
      list.add(SearchChip("GENRE", genre));
    });
    excludedGenres?.forEach((excludedGenre) {
      list.add(SearchChip("EXCLUDED_GENRE", "Exclude Genre: $excludedGenre"));
    });
    tags?.forEach((tag) {
      list.add(SearchChip("TAG", tag));
    });
    excludedTags?.forEach((excludedTag) {
      list.add(SearchChip("EXCLUDED_TAG", "Exclude Tag: $excludedTag"));
    });
    return list;
  }

  void removeChip(SearchChip chip) {
    switch (chip.type) {
      case "SORT":
        sort = null;
        break;
      case "STATUS":
        status = null;
        break;
      case "SOURCE":
        source = null;
        break;
      case "FORMAT":
        format = null;
        break;
      case "COUNTRY":
        countryOfOrigin = null;
        break;
      case "SEASON":
        season = null;
        break;
      case "START_YEAR":
        startYear = null;
        break;
      case "SEASON_YEAR":
        seasonYear = null;
        break;
      case "GENRE":
        genres?.remove(chip.text);
        break;
      case "EXCLUDED_GENRE":
        excludedGenres?.remove(chip.text);
        break;
      case "TAG":
        tags?.remove(chip.text);
        break;
      case "EXCLUDED_TAG":
        excludedTags?.remove(chip.text);
        break;
    }
  }

  factory SearchResults.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultsToJson(this);
}

class SearchChip {
  final String type;
  final String text;

  SearchChip(this.type, this.text);
}

enum SearchType {
  ANIME,
  MANGA,
  NOVEL,
  MOVIES,
  SERIES,
  CHARACTER,
  STAFF,
  STUDIO,
  USER
}

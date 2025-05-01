import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../Adaptor/Media/Widgets/Chips.dart';
import '../../../../DataClass/SearchResults.dart';
import '../../../../Widgets/CustomBottomDialog.dart';
import '../../../../Widgets/DropdownMenu.dart';
import '../../Anilist.dart';

class SearchFilter extends StatefulWidget {
  final SearchType type;
  final SearchResults searchResults;

  final void Function(SearchResults) onFilterChanged;

  const SearchFilter({
    super.key,
    required this.type,
    required this.searchResults,
    required this.onFilterChanged,
  });

  @override
  State<StatefulWidget> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  late SearchResults searchResults;

  Rx<String?> source = Rx(null);
  Rx<String?> format = Rx(null);
  Rx<String?> status = Rx(null);
  Rx<String?> filter = Rx(null);
  Rx<String?> season = Rx(null);
  Rx<String?> country = Rx(null);

  Rx<int?> seasonYear = Rx(null);
  Rx<int?> startYear = Rx(null);

  Rx<List<String>?> tags = Rx(null);

  Rx<List<String>?> genres = Rx(null);

  @override
  void initState() {
    super.initState();
    searchResults = widget.searchResults;
    source.value = searchResults.source;
    format.value = searchResults.format;
    status.value = searchResults.status;
    filter.value = searchResults.sort;
    country.value = searchResults.countryOfOrigin;
    season.value = searchResults.season;
    seasonYear.value = searchResults.seasonYear;
    startYear.value = searchResults.startYear;
    tags.value = searchResults.tags;
    genres.value = searchResults.genres;
  }

  @override
  Widget build(BuildContext context) =>
      animeAndMangaFilter(context, widget.type);

  void reset() {
    searchResults = SearchResults(search: searchResults.search);
    source.value = null;
    format.value = null;
    status.value = null;
    season.value = null;
    seasonYear.value = null;
    startYear.value = null;
    tags.value = null;
    genres.value = null;
    filter.value = null;
    country.value = null;
  }

  void save() {
    searchResults = searchResults
      ..source = source.value
      ..format = format.value
      ..status = status.value
      ..season = season.value
      ..seasonYear = seasonYear.value
      ..startYear = startYear.value
      ..tags = tags.value
      ..genres = genres.value
      ..sort = filter.value
      ..countryOfOrigin = country.value;

    widget.onFilterChanged(searchResults);
  }

  Widget animeAndMangaFilter(BuildContext context, SearchType mediaType) {
    return ElevatedButton.icon(
      onPressed: () {
        showCustomBottomDialog(
          context,
          CustomBottomDialog(
            viewList: [
              Obx(() {
                return Column(
                  children: [
                    _buildHeader(),
                    const SizedBox(height: 16),
                    _buildDropdowns(mediaType),
                    const SizedBox(height: 16),
                    _buildGenreAndTags(),
                  ],
                );
              })
            ],
            positiveCallback: () {
              save();
              Navigator.pop(context);
            },
            negativeCallback: () => Navigator.pop(context),
            negativeText: 'Cancel',
            positiveText: 'Apply',
          ),
        );
      },
      icon: const Icon(Icons.filter_alt_rounded, size: 24),
      label: const Text(
        'Filter',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Poppins-SemiBold'),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Text(
          'Filter',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 24),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: reset,
              icon: const Icon(Icons.close, size: 32),
            ),
            const SizedBox(width: 32 * 2 + 16),
            Row(
              children: [
                PopupMenuButton<String?>(
                  icon: const Icon(Icons.ac_unit, size: 32),
                  onSelected: (value) => country.value = value,
                  itemBuilder: (context) {
                    const options = {
                      null: "Global",
                      'CN': "China",
                      'JP': "Japan",
                      'KR': "Korea",
                      'TW': "Taiwan",
                    };
                    return options.entries
                        .map(
                          (e) => PopupMenuItem(
                            value: e.key,
                            child: Text(
                              e.value,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: 'Poppins-SemiBold',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                        .toList();
                  },
                ),
                PopupMenuButton<String?>(
                  icon: const Icon(Icons.filter_list_alt, size: 32),
                  onSelected: (value) => filter.value = value,
                  itemBuilder: (context) {
                    var options = {
                      Anilist.sortBy[0]: "Score",
                      Anilist.sortBy[1]: "Popular",
                      Anilist.sortBy[2]: "Trending",
                      Anilist.sortBy[3]: "New Released",
                      Anilist.sortBy[4]: "A-Z",
                      Anilist.sortBy[5]: "Z-A",
                      Anilist.sortBy[6]: "Pure Pain",
                    };
                    return options.entries
                        .map(
                          (e) => PopupMenuItem(
                            value: e.key,
                            child: Text(
                              e.value,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: 'Poppins-SemiBold',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                        .toList();
                  },
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _buildDropdowns(SearchType mediaType) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: buildDropdownMenu(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                borderRadius: 16,
                options: Anilist.source,
                hintText: 'Source',
                onChanged: (value) => source.value = value,
                currentValue: source.value,
              ),
            ),
            Expanded(
              child: buildDropdownMenu(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                borderRadius: 16,
                options: mediaType == SearchType.ANIME
                    ? Anilist.animeFormats
                    : Anilist.mangaFormats,
                hintText: 'Format',
                onChanged: (value) => format.value = value,
                currentValue: format.value,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: buildDropdownMenu(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                borderRadius: 16,
                options: mediaType == SearchType.ANIME
                    ? Anilist.animeStatus
                    : Anilist.mangaStatus,
                hintText: 'Status',
                onChanged: (value) => status.value = value,
                currentValue: status.value,
              ),
            ),
            if (mediaType == SearchType.ANIME)
              Expanded(
                child: buildDropdownMenu(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  borderRadius: 16,
                  options: Anilist.seasons,
                  hintText: 'Season',
                  onChanged: (value) => season.value = value,
                  currentValue: season.value,
                ),
              ),
            Expanded(
              child: buildDropdownMenu(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                borderRadius: 16,
                options: List.generate(
                  (DateTime.now().year + 2) - 1970,
                  (index) => (1970 + index).toString(),
                ).reversed.toList(),
                hintText: 'Year',
                onChanged: (value) {
                  if (mediaType == SearchType.ANIME) {
                    seasonYear.value = int.parse(value);
                  } else {
                    startYear.value = int.parse(value);
                  }
                },
                currentValue: mediaType == SearchType.ANIME
                    ? seasonYear.value?.toString()
                    : startYear.value?.toString(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGenreAndTags() {
    var allTags = Anilist.tags?[searchResults.isAdult ?? false];
    var allGenres = Anilist.genres;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        _buildSectionTitle('Genres'),
        const SizedBox(height: 8),
        ChipsWidget(
          chips: allGenres
                  ?.map(
                    (label) => ChipData(
                      label: label.replaceAll("_", " "),
                      isSelected: genres.value?.contains(label) ?? false,
                      action: () {
                        if (genres.value?.contains(label) ?? false) {
                          genres.value = List.from(genres.value ?? [])
                            ..remove(label);
                        } else {
                          genres.value = [...(genres.value ?? []), label];
                        }
                      },
                    ),
                  )
                  .toList() ??
              [],
        ),
        const SizedBox(height: 16),
        _buildSectionTitle('Tags'),
        const SizedBox(height: 8),
        ChipsWidget(
          chips: allTags
                  ?.map(
                    (label) => ChipData(
                      label: label.replaceAll("_", " "),
                      isSelected: tags.value?.contains(label) ?? false,
                      action: () {
                        if (tags.value?.contains(label) ?? false) {
                          tags.value = List.from(tags.value ?? [])
                            ..remove(label);
                        } else {
                          tags.value = [...(tags.value ?? []), label];
                        }
                      },
                    ),
                  )
                  .toList() ??
              [],
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Text(
        title,
        style: const TextStyle(fontFamily: 'Poppins-SemiBold', fontSize: 16),
      ),
    );
  }
}

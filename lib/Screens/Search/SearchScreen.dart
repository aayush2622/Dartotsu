import 'dart:async';

import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Services/Screens/BaseSearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';

import '../../DataClass/SearchResults.dart';
import '../../Services/MediaService.dart';
import '../../Theme/Colors.dart';
import '../../Theme/ThemeProvider.dart';
import '../../Widgets/ScrollConfig.dart';

class SearchScreen extends StatefulWidget {
  final SearchType title;
  final SearchResults? args;
  final bool forceSearch;

  const SearchScreen(
      {super.key, required this.title, this.args, this.forceSearch = false});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  Timer? _debounce;
  late MediaService service;
  late BaseSearchScreen screen;

  @override
  void dispose() {
    super.dispose();
    _debounce?.cancel();
    screen.remove();
  }

  @override
  void initState() {
    super.initState();
    service = context.currentService(listen: false);
    if (service.searchScreen != null) {
      screen = service.searchScreen!;
      screen.title.value = widget.title;
      screen.init(s: widget.args);
    } else {
      snackString("Service not implemented");
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildContent(),
          _buildScrollToTopButton(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    var key =
        "${service.getName}${widget.title.name.toUpperCase()}_searchHistory";
    var theme = context.theme.colorScheme;
    List<String> searchHistory = (loadCustomData(key) ?? []);
    return CustomScrollConfig(
      context,
      controller: screen.scrollController,
      children: [
        SliverToBoxAdapter(child: _buildSearchBar()),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Obx(() {
                if (screen.showHistory.value) {
                  return Column(
                    children: [
                      ...screen.headerWidget(context),
                      ListView.builder(
                        reverse: true,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: searchHistory.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 24.0,
                            ),
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                title: Text(
                                  searchHistory[index],
                                  style: TextStyle(
                                    color: theme.onSurface,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.only(
                                  right: 8,
                                  bottom: 4,
                                  top: 4,
                                  left: 16,
                                ),
                                trailing: IconButton(
                                  icon: const Icon(
                                    FontAwesome.trash_solid,
                                    size: 18,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      var list =
                                          List<String>.from(searchHistory);
                                      list.removeAt(index);
                                      saveCustomData(key, list);
                                    });
                                  },
                                ),
                                onTap: () {
                                  _searchController.text = searchHistory[index];
                                  _onSearchChanged(searchHistory[index]);
                                },
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      ...screen.headerWidget(context),
                      ...screen.searchWidget(context),
                      if (screen.paging)
                        SizedBox(
                          height: 64,
                          child: Center(
                            child: !screen.loadMore.value &&
                                    screen.canLoadMore.value
                                ? const CircularProgressIndicator()
                                : const SizedBox(height: 64),
                          ),
                        ),
                    ],
                  );
                }
              }),
            ),
          ]),
        ),
      ],
    );
  }

  final TextEditingController _searchController = TextEditingController();

  Widget _buildSearchBar() {
    var theme = context.theme.colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24.statusBar(), left: 24, right: 24),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Expanded(
                child: TextField(
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                  controller: _searchController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    hintText: widget.title.name,
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Icon(Icons.search, color: theme.onSurface),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(
                        color: theme.primaryContainer,
                        width: 2.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                  ),
                  onChanged: _onSearchChanged,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildScrollToTopButton() {
    var theme = Provider.of<ThemeNotifier>(context);
    return Positioned(
      bottom: 32.bottomBar(),
      left: (0.screenWidthWithContext(context) / 2) - 24.0,
      child: Obx(() => screen.scrollToTop.value
          ? Container(
              decoration: BoxDecoration(
                color: theme.isDarkMode ? greyNavDark : greyNavLight,
                borderRadius: BorderRadius.circular(64.0),
              ),
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_upward),
                onPressed: () => screen.scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
              ),
            )
          : const SizedBox()),
    );
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      var key =
          "${service.getName}${widget.title.name.toUpperCase()}_searchHistory";
      List<String> searchHistory = loadCustomData(key) ?? [];
      if (!searchHistory.contains(value.trim().toLowerCase()) &&
          value.isNotEmpty) {
        var list = List<String>.from(searchHistory);
        list.add(value.trim().toLowerCase());
        saveCustomData(key, list);
      }

      screen.searchResults.value = screen.searchResults.value
        ..search = value.isEmpty ? null : value;

      if (value.isNotEmpty ||
          screen.searchResults.value.toChipList().isNotEmpty) {
        screen.search();
      } else {
        screen.showHistory.value = true;
      }
    });
  }
}

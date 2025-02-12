import 'dart:async';

import 'package:dantotsu/Functions/Extensions.dart';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:dantotsu/Services/Screens/BaseSearchScreen.dart';
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
  final String title;
  final SearchResults? args;

  const SearchScreen({super.key, required this.title, this.args});

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  Timer? _debounce;
  late MediaService service;

  @override
  void dispose() {
    super.dispose();
    _debounce?.cancel();
    var screen = service.searchScreen;
    if (screen != null) screen.remove();
  }

  void _onSearchChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      var screen = service.searchScreen;
      var key = "${service.getName}${widget.title}_searchHistory";
      List<String> searchHistory = loadCustomData(key) ?? [];
      if (!searchHistory.contains(value.trim().toLowerCase()) &&
          value.isNotEmpty) {
        var list = List<String>.from(searchHistory);
        list.add(value.trim().toLowerCase());
        saveCustomData(key, list);
      }
      screen?.searchQuery.value = value;
      screen?.searchResults.value = screen.searchResults.value..search = value;
      if (value.isNotEmpty) screen?.search();
    });
  }

  @override
  void initState() {
    super.initState();
    service = context.currentService(listen: false);
    var screen = service.searchScreen;
    if (screen != null) screen.init(s: widget.args);
  }

  @override
  Widget build(BuildContext context) {
    var screen = service.searchScreen;
    if (screen == null) {
      return service.notImplemented(widget.runtimeType.toString());
    }
    screen.init();
    return Scaffold(
      body: Stack(
        children: [
          _buildContent(screen),
          _buildScrollToTopButton(screen),
        ],
      ),
    );
  }

  Widget _buildContent(BaseSearchScreen screen) {
    var key = "${service.getName}${widget.title}_searchHistory";
    var theme = context.theme.colorScheme;
    List<String> searchHistory = loadCustomData(key) ?? [];

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
                if (screen.searchQuery.value.isEmpty) {
                  return ListView.builder(
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
                            trailing: IconButton(
                              icon: Icon(
                                FontAwesome.trash_solid,
                                size: 18,
                              ),
                              onPressed: () {
                                setState(() {
                                  searchHistory.removeAt(index);
                                  saveCustomData(key, searchHistory);
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
                  );
                } else {
                  return Column(
                    children: [
                      ...screen.searchWidget(context),
                      SizedBox(
                        height: 64,
                        child: Center(
                          child: !service.searchScreen!.loadMore.value &&
                                  service.searchScreen!.canLoadMore.value
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
                icon: Icon(Icons.arrow_back_ios),
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
                    hintText: widget.title,
                    hintStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                    suffixIcon: Icon(Icons.search, color: theme.onSurface),
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

  Widget _buildScrollToTopButton(BaseSearchScreen service) {
    var theme = Provider.of<ThemeNotifier>(context);
    return Positioned(
      bottom: 32.bottomBar(),
      left: (0.screenWidthWithContext(context) / 2) - 24.0,
      child: Obx(() => service.scrollToTop.value
          ? Container(
              decoration: BoxDecoration(
                color: theme.isDarkMode ? greyNavDark : greyNavLight,
                borderRadius: BorderRadius.circular(64.0),
              ),
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_upward),
                onPressed: () => service.scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                ),
              ),
            )
          : const SizedBox()),
    );
  }
}

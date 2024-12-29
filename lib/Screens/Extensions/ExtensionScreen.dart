import 'package:dantotsu/Screens/Extensions/ExtensionList.dart';
import 'package:dantotsu/Widgets/AlertDialogBuilder.dart';
import 'package:dantotsu/api/Mangayomi/Model/Source.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';

import '../../Preferences/PrefManager.dart';
import '../../Preferences/Preferences.dart';
import '../../StorageProvider.dart';
import '../../Widgets/ScrollConfig.dart';
import '../../api/Mangayomi/Model/Manga.dart';
import '../../main.dart';
import '../../Theme/LanguageSwitcher.dart';
import '../Settings/language.dart';

class ExtensionScreen extends ConsumerStatefulWidget {
  const ExtensionScreen({super.key});

  @override
  ConsumerState<ExtensionScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends ConsumerState<ExtensionScreen>
    with TickerProviderStateMixin {
  late TabController _tabBarController;

  @override
  void initState() {
    super.initState();
    _checkPermission();
    _tabBarController = TabController(length: 6, vsync: this);
    _tabBarController.animateTo(0);
    _tabBarController.addListener(() {
      setState(() {
        _textEditingController.clear();
        //_isSearch = false;
      });
    });
  }

  _checkPermission() async {
    await StorageProvider().requestPermission();
  }

  final _textEditingController = TextEditingController();
  late var _selectedLanguage = 'all';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return ScrollConfig(
      context,
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(getString.extensions,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: theme.primary,
              ),
            ),
            iconTheme: IconThemeData(color: theme.primary),
            actions: [
              IconButton(
                icon: Icon(Icons.language_rounded, color: theme.primary),
                onPressed: () {
                  AlertDialogBuilder(context)
                    ..setTitle(getString.language)
                    ..singleChoiceItems(
                      sortedLanguagesMap.keys.toList(),
                      sortedLanguagesMap.keys
                          .toList()
                          .indexOf(_selectedLanguage),
                      (index) {
                        setState(() => _selectedLanguage =
                            sortedLanguagesMap.keys.elementAt(index));
                      },
                    )
                    ..show();
                },
              ),
              SizedBox(width: 8.0),
            ],
          ),
          body: Column(
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                controller: _tabBarController,
                dragStartBehavior: DragStartBehavior.start,
                tabs: [
                  _buildTab(
                      context, ItemType.anime, getString.installedAnime, false, true),
                  _buildTab(
                      context, ItemType.anime, getString.availableAnime, false, false),
                  _buildTab(
                      context, ItemType.manga, getString.installedManga, true, true),
                  _buildTab(
                      context, ItemType.manga, getString.availableManga, true, false),
                  _buildTab(
                      context, ItemType.novel, getString.installedNovel, false, true),
                  _buildTab(
                      context, ItemType.novel, getString.availableNovel, false, false),
                ],
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: theme.onSurface,
                  ),
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    hintText: getString.search,
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: theme.onSurface,
                    ),
                    suffixIcon: Icon(Icons.search, color: theme.onSurface),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(
                        color: theme.primaryContainer,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                  ),
                  onChanged: (value) => setState(() {}),
                ),
              ),
              const SizedBox(height: 8.0),
              Expanded(
                child: TabBarView(
                  controller: _tabBarController,
                  children: [
                    Extension(
                      installed: true,
                      query: _textEditingController.text,
                      itemType: ItemType.anime,
                      selectedLanguage: _selectedLanguage,
                    ),
                    Extension(
                      installed: false,
                      query: _textEditingController.text,
                      itemType: ItemType.anime,
                      selectedLanguage: _selectedLanguage,
                    ),
                    Extension(
                      installed: true,
                      query: _textEditingController.text,
                      itemType: ItemType.manga,
                      selectedLanguage: _selectedLanguage,
                    ),
                    Extension(
                      installed: false,
                      query: _textEditingController.text,
                      itemType: ItemType.manga,
                      selectedLanguage: _selectedLanguage,
                    ),
                    Extension(
                      installed: true,
                      query: _textEditingController.text,
                      itemType: ItemType.novel,
                      selectedLanguage: _selectedLanguage,
                    ),
                    Extension(
                      installed: false,
                      query: _textEditingController.text,
                      itemType: ItemType.novel,
                      selectedLanguage: _selectedLanguage,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(BuildContext context, ItemType itemType, String label,
      bool isManga, bool installed) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          const SizedBox(width: 8),
          _extensionUpdateNumbers(
              context, itemType, installed, _selectedLanguage),
        ],
      ),
    );
  }
}

Widget _extensionUpdateNumbers(BuildContext context, ItemType itemType,
    bool installed, String selectedLanguage) {
  return StreamBuilder(
    stream: isar.sources
        .filter()
        .idIsNotNull()
        .and()
        .isAddedEqualTo(installed)
        .isActiveEqualTo(true)
        .itemTypeEqualTo(itemType)
        .watch(fireImmediately: true),
    builder: (context, snapshot) {
      if (snapshot.hasData && snapshot.data!.isNotEmpty) {
        final entries = snapshot.data!
            .where(
              (element) => PrefManager.getVal(PrefName.NSFWExtensions)
                  ? true
                  : element.isNsfw == false,
            )
            .where(
              (element) => selectedLanguage != 'all'
                  ? element.lang!.toLowerCase() ==
                      completeLanguageCode(selectedLanguage)
                  : true,
            )
            .toList();
        return entries.isEmpty
            ? Container()
            : Text(
                "(${entries.length.toString()})",
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              );
      }
      return Container();
    },
  );
}

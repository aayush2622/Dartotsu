import 'package:dartotsu/Widgets/AlertDialogBuilder.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    hide ExtensionList;
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Theme/LanguageSwitcher.dart';
import '../Settings/language.dart';
import 'ExtensionList.dart';

class ExtensionScreen extends StatefulWidget {
  const ExtensionScreen({super.key});

  @override
  State<ExtensionScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends ExtensionManagerScreen<ExtensionScreen> {
  @override
  Text get title => Text(
        getString.extension(2),
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Theme.of(context).colorScheme.primary,
        ),
      );

  @override
  List<Widget> extensionActions(
    BuildContext context,
    TabController tabController,
    String currentLanguage,
    Future<void> Function(List<String> repoUrl, ItemType type) onRepoSaved,
    void Function(String currentLanguage) onLanguageChanged,
  ) {
    var theme = Theme.of(context).colorScheme;
    return [
      IconButton(
        icon: const Icon(Bootstrap.github),
        onPressed: () {
          var tabIndex = tabController.index;
          var type = tabIndex == 0 || tabIndex == 1
              ? ItemType.anime
              : tabIndex == 2 || tabIndex == 3
                  ? ItemType.manga
                  : ItemType.novel;
          var text = '';

          AlertDialogBuilder(context)
            ..setTitle('${type.toString()} ${getString.source}s')
            ..setCustomView(Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: const InputDecoration(hintText: 'Repo URL'),
                  onChanged: (value) => text = value,
                ),
              ],
            ))
            ..setPositiveButton(getString.ok, () => onRepoSaved([text], type))
            ..show();
        },
      ),
      IconButton(
        icon: Icon(Icons.language_rounded, color: theme.primary),
        onPressed: () {
          var language = completeLanguageName(currentLanguage);

          AlertDialogBuilder(context)
            ..setTitle(getString.language)
            ..singleChoiceItems(
              sortedLanguagesMap.keys.toList(),
              sortedLanguagesMap.keys.toList().indexOf(language),
              (index) {
                onLanguageChanged(
                  completeLanguageCode(
                    sortedLanguagesMap.keys.elementAt(index),
                  ),
                );
              },
            )
            ..show();
        },
      ),
    ];
  }

  @override
  Widget searchBar(
    BuildContext context,
    TextEditingController textEditingController,
    void Function() onChanged,
  ) {
    var theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          color: theme.onSurface,
        ),
        controller: textEditingController,
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
        onChanged: (value) => onChanged(),
      ),
    );
  }

  @override
  Widget tabWidget(BuildContext context, String label, int count) {
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
          Text(
            "($count)",
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  @override
  ExtensionScreenBuilder get extensionScreenBuilder => (
        ItemType itemType,
        bool isInstalled,
        String searchQuery,
        String selectedLanguage,
      ) {
        return ExtensionList(
          itemType: itemType,
          isInstalled: isInstalled,
          searchQuery: searchQuery,
          selectedLanguage: selectedLanguage,
        );
      };
}

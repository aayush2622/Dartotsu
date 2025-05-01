import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Screens/WebView/WebView.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:dartotsu/Widgets/AlertDialogBuilder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../Api/Sources/Model/Source.dart';
import '../../../../../../DataClass/Media.dart';
import '../../../../../../Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';

class MangaCompactSettings {
  final BuildContext context;
  final Media media;
  final Source? source;
  final List<String>? scanlators;

  List<bool>? toggledScanlators;
  final Function(MediaSettings settings, List<bool>? toggledScanlators)
      onFinished;
  final ColorScheme theme;

  MangaCompactSettings(
    this.context,
    this.media,
    this.source,
    this.scanlators,
    this.toggledScanlators,
    this.onFinished,
  ) : theme = Theme.of(context).colorScheme;

  late MediaSettings settings;

  var viewType = 0.obs;
  var reverse = false.obs;

  void get _initialiseSettings {
    settings = media.settings;
    viewType.value = settings.viewType;
    reverse.value = settings.isReverse;
  }

  Future showDialog() async {
    _initialiseSettings;
    AlertDialogBuilder(context)
      ..setTitle(getString.options)
      ..setCustomView(
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLayoutSettings(),
            const SizedBox(height: 12),
            _buildSortSettings(),
            const SizedBox(height: 12),
            _buildWebViewSettings(),
            const SizedBox(height: 12),
            _buildScanlatorSettings(),
          ],
        ),
      )
      ..setPositiveButton(
        getString.ok,
        () => onFinished(settings, toggledScanlators),
      )
      ..setNegativeButton(
        getString.cancel,
        () {},
      )
      ..show();
  }

  Widget _buildLayoutSettings() {
    final icons = [
      Icons.view_list_sharp,
      Icons.view_comfy_rounded,
    ];
    final descriptions = [
      getString.listView,
      getString.compactView,
    ];

    return Obx(
      () {
        final currentViewType = viewType.value;
        return Row(
          children: [
            _buildInfo(getString.layout, descriptions[currentViewType]),
            Row(
              children: List.generate(
                icons.length,
                (index) {
                  final isSelected = currentViewType == index;
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                      icon: Transform(
                        alignment: Alignment.center,
                        transform: index == 0
                            ? Matrix4.rotationY(3.14159)
                            : Matrix4.identity(),
                        child: Icon(icons[index]),
                      ),
                      iconSize: 24,
                      color: isSelected
                          ? theme.onSurface
                          : theme.onSurface.withOpacity(0.33),
                      onPressed: () {
                        if (!isSelected) {
                          settings.viewType = index;
                          viewType.value = index;
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSortSettings() {
    final icons = [
      Icons.keyboard_arrow_up_rounded,
      Icons.keyboard_arrow_down_rounded,
    ];
    final descriptions = [
      getString.utd,
      getString.dtu,
    ];

    return Obx(
      () {
        final currentSortType = reverse.value;
        return Row(
          children: [
            _buildInfo(getString.sort, descriptions[currentSortType ? 1 : 0]),
            IconButton(
              onPressed: () {
                reverse.value = !reverse.value;
                settings.isReverse = reverse.value;
              },
              icon: Icon(
                icons[currentSortType ? 1 : 0],
                size: 24,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildWebViewSettings() {
    return Row(
      children: [
        _buildInfo("Web View", source?.baseUrl ?? ''),
        IconButton(
          onPressed: () => navigateToPage(
            context,
            MangaWebView(url: source!.baseUrl!, title: ''),
          ),
          icon: const Icon(
            Icons.open_in_new_rounded,
            size: 24,
          ),
        ),
      ],
    );
  }

  Widget _buildScanlatorSettings() {
    return Row(
      children: [
        _buildInfo(getString.scanlators, scanlators?.length.toString() ?? '0'),
        IconButton(
          onPressed: toggleScanlators,
          icon: const Icon(
            Icons.notes_rounded,
            size: 24,
          ),
        ),
      ],
    );
  }

  void toggleScanlators() {
    if (scanlators == null || scanlators?.length == 1) return;
    var t = <bool>[];
    AlertDialogBuilder(context)
      ..setTitle(getString.scanlators)
      ..multiChoiceItems(
          scanlators!, toggledScanlators, (selected) => t = selected)
      ..setPositiveButton(getString.ok, () => toggledScanlators = t)
      ..setNegativeButton(getString.cancel, () {})
      ..show();
  }

  Widget _buildInfo(String title, String description) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: theme.onSurface.withOpacity(0.5),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          ),
          Text(
            description,
            style: TextStyle(
              color: theme.secondary,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 14,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}

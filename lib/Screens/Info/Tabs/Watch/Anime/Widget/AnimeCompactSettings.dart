import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:dartotsu/Widgets/AlertDialogBuilder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../../../DataClass/Media.dart';
import '../../../../../../Preferences/HiveDataClasses/Selected/Selected.dart';
import '../../../../../../Preferences/PrefManager.dart';
import '../../../../../../Services/ServiceSwitcher.dart';

class AnimeCompactSettings {
  final BuildContext context;
  final Media media;
  final Function(Selected settings) onFinished;

  final ColorScheme theme;

  AnimeCompactSettings(this.context, this.media, this.onFinished)
      : theme = Theme.of(context).colorScheme;

  late Selected settings;

  var viewType = 0.obs;
  var reverse = false.obs;

  void get _initialiseSettings {
    settings = loadSelected();
    viewType.value = settings.recyclerStyle!;
    reverse.value = settings.recyclerReversed;
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
            SizedBox(height: 12),
            _buildSortSettings(),
          ],
        ),
      )
      ..setPositiveButton(
        getString.ok,
        () => onFinished(settings),
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
      Icons.grid_view_rounded,
      Icons.view_comfy_rounded,
    ];
    final descriptions = [
      getString.list,
      getString.grid,
      getString.compact,
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
                          settings.recyclerStyle = index;
                          viewType.value = index;
                          saveSelected();
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
      'Up to Down',
      'Down to Up',
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
                settings.recyclerReversed = reverse.value;
                saveSelected();
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

  void saveSelected() {
    var sourceName =
        Provider.of<MediaServiceProvider>(Get.context!, listen: false)
            .currentService
            .getName;
    PrefManager.setCustomVal("Selected-${media.id}-$sourceName", settings);
  }

  Selected loadSelected() {
    var sourceName =
        Provider.of<MediaServiceProvider>(Get.context!, listen: false)
            .currentService
            .getName;
    return PrefManager.getCustomVal("Selected-${media.id}-$sourceName") ??
        Selected();
  }
}

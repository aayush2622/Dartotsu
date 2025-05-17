import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../Api/Sources/Model/Source.dart';
import '../../../../Functions/Function.dart';
import '../../../../Preferences/PrefManager.dart';
import '../../Widgets/Releasing.dart';
import 'BaseParser.dart';
import 'Widgets/SourceSelector.dart';

abstract class BaseWatchScreen<T extends StatefulWidget> extends State<T> {
  BaseParser get viewModel;

  Media get mediaData;

  List<Widget> widgetList = [];

  void onSourceChange(Source source) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        viewModel.source.value = source;
        viewModel.searchMedia(source, mediaData);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!viewModel.sourcesLoaded.value) {
      viewModel.initSourceList(mediaData);
    }
    return Obx(() {
      if (viewModel.sourcesLoaded.value == false) {
        return const Center(child: CircularProgressIndicator());
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...releasingIn(mediaData, context),
          _buildContent(),
          Container(
            constraints: const BoxConstraints(
              minHeight: 300,
            ),
            child: Column(
              children: [
                if (viewModel.source.value != null)
                  ...widgetList
                else
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 32.0,
                    ),
                    child: Center(
                      child: Text(
                        '${getString.installSourceToStart} ${mediaData.anime != null ? getString.watching : getString.reading}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget _buildContent() {
    var theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ..._buildYouTubeButton(),
          Obx(() {
            return Text(
              viewModel.status.value ?? '',
              style: TextStyle(
                color: theme.onSurface,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            );
          }),
          const SizedBox(height: 12),
          SourceSelector(
            currentSource: viewModel.source.value,
            onSourceChange: onSourceChange,
            mediaData: mediaData,
            sourceList: viewModel.sourceList,
          ),
          const SizedBox(height: 16),
          if (viewModel.source.value != null) _buildWrongTitle(),
        ],
      ),
    );
  }

  Widget _buildWrongTitle() {
    var theme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () => viewModel.wrongTitle(context, mediaData, null),
          child: Text(
            getString.wrongTitle,
            style: TextStyle(
              color: theme.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              decoration: TextDecoration.underline,
              decorationColor: theme.secondary,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
        )
      ],
    );
  }

  List<Widget> _buildYouTubeButton() {
    if (mediaData.anime?.youtube == null || !loadData(PrefName.showYtButton)) {
      return [];
    }

    return [
      SizedBox(
        height: 48,
        child: ElevatedButton(
          onPressed: () => openLinkInBrowser(mediaData.anime!.youtube!),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFF0000),
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.play_circle_fill, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                getString.youTube,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 32),
    ];
  }
}

import 'package:dartotsu/DataClass/Media.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../Functions/Function.dart';
import '../../../../Preferences/PrefManager.dart';
import '../../../../Preferences/Preferences.dart';
import '../../../../api/Mangayomi/Model/Source.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...releasingIn(mediaData, context),
        _buildContent(),
        if (viewModel.source.value != null)
          ...widgetList
        else
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Center(
              child: Text(
                'Install a source from extension page to start ${mediaData.anime != null ? 'watching' : 'reading'}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildContent() {
    var theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ..._buildYouTubeButton(),
          Obx(() => Text(
                viewModel.status.value ?? '',
                style: TextStyle(
                  color: theme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              )),
          const SizedBox(height: 12),
          SourceSelector(
            currentSource: viewModel.source.value,
            onSourceChange: onSourceChange,
            mediaData: mediaData,
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
            'Wrong Title?',
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
    if (mediaData.anime?.youtube == null ||
        !PrefManager.getVal(PrefName.showYtButton)) {
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.play_circle_fill, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'Play on YouTube',
                style: TextStyle(
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

import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/Widgets/SourceSelector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../../../DataClass/Media.dart';
import '../../../../Preferences/PrefManager.dart';
import '../../../../Preferences/Preferences.dart';
import '../../../../Theme/Colors.dart';
import '../../../../api/Mangayomi/Model/Source.dart';
import '../../Widgets/Releasing.dart';
import 'WatchPageViewModel.dart';
import '../../Widgets/Countdown.dart';

class WatchPage extends ConsumerStatefulWidget {
  final media mediaData;

  const WatchPage({super.key, required this.mediaData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WatchPageState();
}

class _WatchPageState extends ConsumerState<WatchPage> {
  Source? source;
  final _viewModel = Get.put(WatchPageViewModel());

  @override
  void initState() {
    super.initState();
    _viewModel.reset();
  }

  void onSourceChange(Source source) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        this.source = source;
        _viewModel.searchMedia(source, widget.mediaData);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...releasingIn(widget.mediaData),
          ..._buildYouTubeButton(),
          Obx(
            () => Text(
              _viewModel.status.value ?? '',
              style: TextStyle(
                  color: theme.onSurface, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          SourceSelector(
            currentSource: source,
            onSourceChange: onSourceChange,
            mediaData: widget.mediaData,
          ),
          const SizedBox(height: 16),
          _buildWrongTitle(),
          /*Flexible(
          child: Obx(() {
            var selectedMedia = _viewModel.selectedMedia.value;
            return selectedMedia?.chapters != null
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: selectedMedia?.chapters!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(selectedMedia?.chapters![index].name ?? ''),
                        subtitle: Text(
                            selectedMedia?.chapters![index].dateUpload ?? ''),
                      );
                    },
                  )
                : const Center(
                    child:
                        CircularProgressIndicator()); // Show a message if no chapters
          }),
        ),*/
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
          onTap: null,
          child: Text(
            'Wrong title?',
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
    return [
      if (widget.mediaData.anime?.youtube != null &&
          PrefManager.getVal(PrefName.showYtButton)) ...[
        SizedBox(
          height: 48,
          child: ElevatedButton(
            onPressed: () =>
                openLinkInBrowser(widget.mediaData.anime!.youtube!),
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
                Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'Play on YouTube',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    ];
  }
}

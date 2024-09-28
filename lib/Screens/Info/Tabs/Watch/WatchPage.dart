import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/Widgets/SourceSelector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../DataClass/Media.dart';
import '../../../../Preferences/PrefManager.dart';
import '../../../../Preferences/Preferences.dart';
import '../../../../Theme/Colors.dart';
import '../../../../api/Mangayomi/Model/Source.dart';
import 'WatchPageViewModel.dart';
import 'Widgets/Countdown.dart';

class WatchPage extends ConsumerStatefulWidget {
  final media mediaData;

  const WatchPage({super.key, required this.mediaData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WatchPageState();
}

class _WatchPageState extends ConsumerState<WatchPage> {
  Source? source;
  final _viewModel = WatchPageViewModel;
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        ..._buildReleasingIn(),
        ..._buildYouTubeButton(),
        Obx(() => Text(_viewModel.status.value ?? '',
            style: TextStyle(
                color: theme.onSurface, fontWeight: FontWeight.bold))),
        const SizedBox(height: 12),
        SourceSelector(
          currentSource: source,
          onSourceChange: onSourceChange,
          mediaData: widget.mediaData,
        ),
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
    );
  }

  List<Widget> _buildReleasingIn() {
    var show = (widget.mediaData.anime?.nextAiringEpisode != null &&
        widget.mediaData.anime?.nextAiringEpisodeTime != null &&
        (widget.mediaData.anime!.nextAiringEpisodeTime! -
                DateTime.now().millisecondsSinceEpoch / 1000) <=
            86400 * 28);
    return [
      if (show) ...[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'EPISODE ${widget.mediaData.anime!.nextAiringEpisode! + 1} WILL BE RELEASED IN',
                style: TextStyle(
                    color: color.fg,
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountdownWidget(nextAiringEpisodeTime: widget.mediaData.anime!.nextAiringEpisodeTime!),
          ],
        ),
        const SizedBox(height: 12),
      ],
    ];
  }

  List<Widget> _buildYouTubeButton() {
    return [
      if (widget.mediaData.anime?.youtube != null &&
          PrefManager.getVal(PrefName.showYtButton)) ...[
        SizedBox(
          height: 48,
          child: ElevatedButton(
            onPressed: () => openLinkInBrowser(widget.mediaData.anime!.youtube!),
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

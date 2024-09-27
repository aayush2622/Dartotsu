import 'package:dantotsu/Screens/Info/Tabs/Watch/Widgets/SourceSelector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../DataClass/Media.dart';
import '../../../../api/Mangayomi/Model/Source.dart';
import 'WatchPageViewModel.dart';

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
        Obx(() => Text(_viewModel.status.value ?? '',
            style: TextStyle(
                color: theme.onSurface, fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        SourceSelector(
          currentSource: source,
          onSourceChange: onSourceChange,
          mediaData: widget.mediaData,
        ),
        Flexible(
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
        ),
      ],
    );
  }
}

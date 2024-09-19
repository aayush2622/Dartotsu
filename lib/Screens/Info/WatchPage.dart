import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Screens/Info/Widgets/SourceSelector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../DataClass/Media.dart';
import '../../api/Mangayomi/Model/Source.dart';
import 'MediaViewModel.dart';

class WatchPage extends ConsumerStatefulWidget {
  final media mediaData;

  const WatchPage({super.key, required this.mediaData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WatchPageState();
}

class _WatchPageState extends ConsumerState<WatchPage> {
  Source? source;
  final _viewModel = AnimeLoadViewModel;

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
        snackString(source.name);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watch'),
      ),
      body: Column(
        children: [
          Obx(() {return Text(_viewModel.status.value ?? '');}),
          SourceSelector(
            currentSource: source,
            onSourceChange: onSourceChange,
            mediaData: widget.mediaData,
          ),
          Obx(() {
            var selectedMedia = _viewModel.selectedMedia.value;
            return Expanded(
              child: Column(
                children: [
                  if (selectedMedia != null) ...[
                    ListTile(
                      title: Text(selectedMedia.name ?? ''),
                      subtitle: Text(selectedMedia.author ?? ''),
                      leading: Image.network(selectedMedia.imageUrl ?? ''),
                    ),
                    if (selectedMedia.chapters != null)
                      Expanded(
                        child: ListView.builder(
                          itemCount: selectedMedia.chapters!.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(selectedMedia.chapters![index].name ?? ''),
                              subtitle: Text(
                                  selectedMedia.chapters![index].dateUpload ?? ''),
                            );
                          },
                        ),
                      ),
                  ],
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

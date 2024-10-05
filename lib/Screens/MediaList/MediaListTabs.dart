
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../Widgets/ScrollConfig.dart';
import 'MediaListViewModel.dart';

class MediaListTabs extends StatefulWidget {
  final MediaListViewModel viewModel;

const MediaListTabs({super.key, required this.viewModel});

@override
MediaListTabsState createState() => MediaListTabsState();
}

class MediaListTabsState extends State<MediaListTabs> with TickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.viewModel.listImages.value!.keys.length,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(MediaListTabs oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.viewModel.listImages.value!.keys.length != widget.viewModel.listImages.value!.keys.length) {
      _tabController?.dispose();
      _tabController = TabController(
        length: widget.viewModel.listImages.value!.keys.length,
        vsync: this,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfig(
        context,
        child: DefaultTabController(
          length: widget.viewModel.listImages.value!.keys.length,
          child: Column(
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                dragStartBehavior: DragStartBehavior.start,
                controller: _tabController,
                tabs: widget.viewModel.listImages.value!.keys.map((String tabTitle) {
                  return Tab(text: tabTitle);
                }).toList(),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: widget.viewModel.listImages.value!.keys.map((String tabTitle) {
                    final mediaList = widget.viewModel.listImages.value![tabTitle]!;
                    return MediaSection(mediaList: mediaList, context: context,title: '', type: 0);
                  }).toList(),
                ),
              ),
            ],
          )
        )
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}
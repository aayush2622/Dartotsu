
import 'package:dantotsu/Adaptor/Media/MediaAdaptor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
    var theme = Theme.of(context).colorScheme;
    return ScrollConfig(
        context,
        child: DefaultTabController(
          length: widget.viewModel.listImages.value!.keys.length,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                dragStartBehavior: DragStartBehavior.start,
                controller: _tabController,
                labelStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.0,
                  color: theme.onSurface.withOpacity(0.48),
                  fontWeight: FontWeight.w600,
                ),
                tabs: widget.viewModel.listImages.value!.keys.map((String tabTitle) {
                  return Tab(text: '${tabTitle.toUpperCase()} (${widget.viewModel.listImages.value![tabTitle]!.length})');
                }).toList(),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: widget.viewModel.listImages.value!.keys.map((String tabTitle) {
                    final mediaList = widget.viewModel.listImages.value![tabTitle]!;
                    return SingleChildScrollView(
                      child: MediaAdaptor(mediaList: mediaList, type: 3),
                    );
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

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
      length: widget.viewModel.mediaList.value!.keys.length,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(MediaListTabs oldWidget) {
    super.didUpdateWidget(oldWidget);
    var mediaListOld = oldWidget.viewModel.mediaList.value!;
    var mediaListNew = widget.viewModel.mediaList.value!;
    if (mediaListOld.keys.length != mediaListNew.keys.length) {
      _tabController?.dispose();
      _tabController = TabController(
        length: mediaListNew.keys.length,
        vsync: this,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaList = widget.viewModel.mediaList.value!;
    var theme = Theme.of(context).colorScheme;
    return ScrollConfig(
        context,
        child: DefaultTabController(
          length: mediaList.keys.length,
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
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                unselectedLabelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: theme.onSurface.withOpacity(0.48),
                ),
                tabs: mediaList.keys.map((String tabTitle) {
                  return Tab(text: '${tabTitle.toUpperCase()} (${mediaList[tabTitle]!.length})');
                }).toList(),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: mediaList.keys.map((String tabTitle) {
                    return SingleChildScrollView(
                      child: MediaAdaptor(mediaList: mediaList[tabTitle]!, type: 3),
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
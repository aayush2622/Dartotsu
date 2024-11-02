import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Adaptor/Media/MediaAdaptor.dart';
import '../../DataClass/Media.dart';
import '../../Widgets/ScrollConfig.dart';

class CalendarTabs extends StatefulWidget {
  final Map<String, List<media>> data;

  const CalendarTabs({super.key, required this.data});

  @override
  CalendarTabsState createState() => CalendarTabsState();
}

class CalendarTabsState extends State<CalendarTabs>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.data.keys.length,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(CalendarTabs oldWidget) {
    super.didUpdateWidget(oldWidget);
    var mediaListOld = oldWidget.data.values;
    var mediaListNew = widget.data.values;
    if (mediaListOld.length != mediaListNew.length) {
      _tabController?.dispose();
      _tabController = TabController(
        length: mediaListNew.length,
        vsync: this,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var calendarData = widget.data;
    var theme = Theme.of(context).colorScheme;
    return ScrollConfig(context,
        child: DefaultTabController(
            length: calendarData.keys.length,
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
                  tabs: calendarData.keys.map((String tabTitle) {
                    return Tab(
                        text:
                            '${tabTitle.toUpperCase()} (${calendarData[tabTitle]!.length})');
                  }).toList(),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: calendarData.keys.map((String tabTitle) {
                      return SingleChildScrollView(
                        child: MediaAdaptor(
                          mediaList: calendarData[tabTitle]!,
                          type: 3,
                          isLarge: true,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            )));
  }
}

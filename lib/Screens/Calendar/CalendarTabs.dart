import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../Widgets/ScrollConfig.dart';
import 'CalendarViewModel.dart';

class CalendarTabs extends StatefulWidget{
  final CalendarViewModel  viewModel;

  const CalendarTabs({super.key,required this.viewModel});

  @override
  CalendarTabsState createState() => CalendarTabsState();
}


class CalendarTabsState extends State<CalendarTabs> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.viewModel.calendarData.value!.length,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(CalendarTabs oldWidget) {
    super.didUpdateWidget(oldWidget);
    var mediaListOld = oldWidget.viewModel.calendarData.value!;
    var mediaListNew = widget.viewModel.calendarData.value!;
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
    var calendarData = widget.viewModel.calendarData.value!;
    if (kDebugMode) {
      print(calendarData);

    }var theme = Theme.of(context).colorScheme;
    return ScrollConfig(
        context,
        child: DefaultTabController(
            length: calendarData.length,
            child:  const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("tabs")
              ],
            )
        )
    );
  }
}

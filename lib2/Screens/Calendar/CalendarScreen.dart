import 'package:dartotsu/Screens/Calendar/CalendarViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../MediaList/MediaListTabs.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  CalendarScreenState createState() => CalendarScreenState();
}

class CalendarScreenState extends State<CalendarScreen> {
  final _viewModel = Get.put(CalendarViewModel());
  bool showOnlyLibrary = false;

  @override
  void initState() {
    super.initState();
    _viewModel.loadAll(showOnlyLibrary: showOnlyLibrary);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Calendar",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
            color: theme.primary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        iconTheme: IconThemeData(color: theme.primary),
        actions: [
          IconButton(
            icon: Icon(
              showOnlyLibrary
                  ? Icons.collections_bookmark
                  : Icons.library_books,
            ),
            onPressed: () {
              setState(() {
                showOnlyLibrary = !showOnlyLibrary;
              });
              _viewModel.loadAll(showOnlyLibrary: showOnlyLibrary);
            },
          ),
        ],
      ),
      body: Obx(() {
        if (_viewModel.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (_viewModel.calendarData.value == null ||
            _viewModel.calendarData.value!.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        return MediaListTabs(
          data: _viewModel.calendarData.value!,
          initialIndex: 1,
          isLarge: true,
        );
      }),
    );
  }
}

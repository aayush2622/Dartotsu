import 'package:dartotsu/DataClass/Author.dart';
import 'package:flutter/material.dart';

import '../../DataClass/Studio.dart';

class StaffScreen extends StatefulWidget {
  final author staffInfo;

  const StaffScreen({super.key, required this.staffInfo});

  @override
  StaffScreenState createState() => StaffScreenState();
}

class StaffScreenState extends State<StaffScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.staffInfo.name ?? 'No Name',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: theme.onPrimary,
          ),
        ),
        backgroundColor: theme.primary,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  widget.staffInfo.name ?? 'No Name',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: theme.onSurface,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StudioScreen extends StatefulWidget {
  final studio studioInfo;

  const StudioScreen({super.key, required this.studioInfo});

  @override
  StudioScreenState createState() => StudioScreenState();
}

class StudioScreenState extends State<StudioScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.studioInfo.name ?? 'No Name',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: theme.onPrimary,
          ),
        ),
        backgroundColor: theme.primary,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  widget.studioInfo.name ?? 'No Name',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: theme.onSurface,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

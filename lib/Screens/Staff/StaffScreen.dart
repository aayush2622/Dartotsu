import 'package:flutter/material.dart';
import 'package:dantotsu/DataClass/Author.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: Text(
                widget.staffInfo.name ?? 'No Name',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: theme.onSurface,
                ),
              ),
            )),
          )
        ],
      ),
    );
  }
}

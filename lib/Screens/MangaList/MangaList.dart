import 'package:flutter/material.dart';

class MangaListScreen extends StatefulWidget {
  const MangaListScreen({super.key}); // Semicolon added

  @override
  MangaListScreenState createState() => MangaListScreenState();
}

class MangaListScreenState extends State<MangaListScreen> {

  bool running = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: theme.onSurface),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ), // Closing for IconButton
      ],
    ); // Closing for Row
  }
}


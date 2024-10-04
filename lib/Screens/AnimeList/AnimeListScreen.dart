import 'package:flutter/material.dart';

class AnimeListScreen extends StatefulWidget {
  const AnimeListScreen({super.key}); // Semicolon added

  @override
  AnimeListScreenState createState() => AnimeListScreenState();
}

class AnimeListScreenState extends State<AnimeListScreen> {

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


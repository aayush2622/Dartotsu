import 'package:flutter/material.dart';
import '../../../Functions/Function.dart';
import '../../../Services/Screens/BaseAnimeScreen.dart';
import '../MangaBaka.dart';

class MangaBakaAnimeScreen extends BaseAnimeScreen {
  final MangaBakaController controller;

  MangaBakaAnimeScreen(this.controller);

  @override
  int get refreshID => RefreshId.MangaBaka.animePage;

  @override
  Future<void> loadAll() async {}

  @override
  List<Widget> mediaContent(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return [
      Center(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.menu_book_rounded,
              size: 64,
              color: theme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              "MangaBaka is a Manga & Novel service",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: theme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              "Switch to the Manga tab to explore series and light novels.",
              style: TextStyle(
                fontSize: 14,
                color: theme.onSurface.withOpacity(0.7),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ];
  }
}

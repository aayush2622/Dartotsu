import 'package:flutter/material.dart';

Widget ChipTags(BuildContext context, String tag) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Chip(
      label: Text(
        tag,
        style: const TextStyle(
          fontSize: 14.0,
          height: 1.2,
        ),
      ),
      backgroundColor: Theme.of(context).chipTheme.backgroundColor,
      shape: StadiumBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
    ),
  );
}

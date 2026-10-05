import 'package:flutter/material.dart';

import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import 'CardShelf.dart';
import 'CardShelfState.dart';

class ShelfPerson {
  final String? image;
  final String name;
  final String? role;

  const ShelfPerson({required this.name, this.image, this.role});
}

class PeopleShelf extends StatelessWidget {
  final String title;
  final List<ShelfPerson> people;
  final void Function(ShelfPerson person)? onTap;

  const PeopleShelf({
    super.key,
    required this.title,
    required this.people,
    this.onTap,
  });

  ShelfCardItem _toItem(ShelfPerson p) => ShelfCardItem(
    id: p.name,
    imageUrl: p.image,
    title: p.name,
    subtitle: p.role,
    onTap: onTap == null ? null : () => onTap!(p),
  );

  @override
  Widget build(BuildContext context) {
    final style = (tryFind<CardStyleController>()?.current ?? const CardStyle())
        .copyWith(preset: 'people');
    return CardShelf(
      title: title,
      items: [for (final p in people) _toItem(p)],
      dataKey: people,
      styleOverride: style,
    );
  }
}

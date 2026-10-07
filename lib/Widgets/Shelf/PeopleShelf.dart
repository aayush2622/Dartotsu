import 'package:flutter/material.dart';

import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import 'CardShelf.dart';
import 'CardShelfState.dart';
import '../../Core/State/State.dart';

class ShelfPerson {
  final String? image;
  final String name;
  final String? role;
  final Object? tag;

  const ShelfPerson({required this.name, this.image, this.role, this.tag});
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
    id: '${p.tag ?? ''}${p.name}',
    imageUrl: p.image,
    title: p.name,
    subtitle: p.role,
    onTap: onTap == null ? null : () => onTap!(p),
    focusable: true,
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

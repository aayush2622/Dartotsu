import 'package:flutter/material.dart';

import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Components/ScrollConfig.dart';
import 'PosterCard.dart';
import 'ShelfFrame.dart';

/// A person for a [PeopleShelf] item — a character or a staff member.
class ShelfPerson {
  final String? image;
  final String name;
  final String? role;

  const ShelfPerson({required this.name, this.image, this.role});
}

/// Titled horizontal shelf of people (characters / staff). Same [ShelfFrame]
/// chrome and same [PosterCard] as the media shelves — only the card style is
/// pinned to [CardStyle.people] (portrait aspect, no score/progress).
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

  @override
  Widget build(BuildContext context) {
    return ShelfFrame(
      title: title,
      child: SizedBox(
        height: CardStyle.people.itemHeight,
        child: ScrollConfig(
          context,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: Dimens.cardPad + 8),
            itemCount: people.length,
            separatorBuilder: (_, _) => SizedBox(width: Dimens.cardGap),
            itemBuilder: (_, i) {
              final p = people[i];
              return PosterCard(
                style: CardStyle.people,
                imageUrl: p.image,
                title: p.name,
                subtitle: p.role,
                onTap: onTap == null ? null : () => onTap!(p),
              );
            },
          ),
        ),
      ),
    );
  }
}

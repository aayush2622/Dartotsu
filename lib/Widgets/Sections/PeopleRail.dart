import 'package:flutter/material.dart';

import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Components/ScrollConfig.dart';
import '../Components/SectionCard.dart';
import 'RailCard.dart';

/// A person for a [PeopleRail] item — a character or a staff member.
class RailPerson {
  final String? image;
  final String name;
  final String? role;

  const RailPerson({required this.name, this.image, this.role});
}

/// Titled card holding a horizontal rail of people (characters / staff).
/// Uses the same card surface and item dimensions as [MediaSection] so the
/// detail page reads as one consistent list of rails.
class PeopleRail extends StatelessWidget {
  final String title;
  final List<RailPerson> people;
  final void Function(RailPerson person)? onTap;

  const PeopleRail({
    super.key,
    required this.title,
    required this.people,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.gap,
        vertical: Dimens.gapSm / 2,
      ),
      padding: EdgeInsets.fromLTRB(
        Dimens.cardPad,
        Dimens.cardPad,
        0,
        Dimens.cardPad,
      ),
      title: title,
      child: SizedBox(
        height: CardStyle.people.itemHeight,
        child: ScrollConfig(
          context,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: Dimens.cardPad),
            itemCount: people.length,
            separatorBuilder: (_, _) => SizedBox(width: Dimens.railGap),
            itemBuilder: (_, i) {
              final p = people[i];
              return RailCard(
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

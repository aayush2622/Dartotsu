import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../Components/ScrollConfig.dart';
import 'PosterCard.dart';
import 'ShelfFrame.dart';

class ShelfPerson {
  final String? image;
  final String name;
  final String? role;

  const ShelfPerson({required this.name, this.image, this.role});
}

/// Characters / staff. Same [PosterCard] and [ShelfFrame] as the media shelves,
/// following the viewer's live card style — only the `people` preset flag is
/// forced so the role line always shows and its caption is sized for it.
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
    return Obx(() {
      final style =
          (tryFind<CardStyleController>()?.current ?? const CardStyle())
              .copyWith(preset: 'people');
      return ShelfFrame(
        title: title,
        child: SizedBox(
          height: style.itemHeight,
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
                  style: style,
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
    });
  }
}

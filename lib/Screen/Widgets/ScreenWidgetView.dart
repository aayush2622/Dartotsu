import 'package:flutter/material.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/ScreenWidget.dart';
import '../../Widgets/Shelf/MediaSection.dart';
import '../../Widgets/Shelf/PeopleShelf.dart';
import 'Components/DataCard.dart';

class ScreenWidgetView extends StatelessWidget {
  final ScreenWidget item;
  final String heroPrefix;
  final void Function(Media media, String? heroTag)? onMediaTap;

  const ScreenWidgetView(
    this.item, {
    super.key,
    this.heroPrefix = '',
    this.onMediaTap,
  });

  @override
  Widget build(BuildContext context) => switch (item.type) {
    ScreenWidgetType.media => _media(),
    ScreenWidgetType.character => PeopleShelf(
      title: item.title ?? 'Characters',
      people: [
        for (final c in item.characters ?? const [])
          ShelfPerson(
            image: c.image,
            name: c.name ?? '',
            role: [
              if (c.role != null) c.role!.titleCase,
              if ((c.voiceActor?.isNotEmpty ?? false) &&
                  c.voiceActor!.first.name != null)
                c.voiceActor!.first.name!,
            ].join(' · '),
          ),
      ],
    ),
    ScreenWidgetType.staff => PeopleShelf(
      title: item.title ?? 'Staff',
      people: [
        for (final s in item.staff ?? const [])
          ShelfPerson(
            image: s.image,
            name: s.name ?? '',
            role: s.role?.titleCase,
          ),
      ],
    ),
    ScreenWidgetType.data => DataCard(title: item.title, data: item.data!),
    ScreenWidgetType.extra => item.widget!,
  };

  Widget _media() {
    final data = MediaSectionData(
      type: 0,
      title: item.title,
      mediaList: item.media,
      heroPrefix: heroPrefix,
      onMediaTap: (ctx, i, media, tag) => onMediaTap?.call(media, tag),
    );
    return item.section?.call(data) ?? MediaSection(data: data);
  }
}

import 'package:flutter/material.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/ScreenWidget.dart';
import '../../Core/Services/Model/Author.dart';
import '../../Core/Services/Model/Character.dart';
import '../../Utils/Extensions/StringExtensions.dart';
import '../../Widgets/Shelf/MediaSection.dart';
import '../../Widgets/Shelf/PeopleShelf.dart';
import 'Components/DataSection.dart';

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
        for (final Character c in item.characters ?? const <Character>[])
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
        for (final Author s in item.staff ?? const <Author>[])
          ShelfPerson(
            image: s.image,
            name: s.name ?? '',
            role: s.role?.titleCase,
          ),
      ],
    ),
    ScreenWidgetType.data => DataSection(title: item.title, data: item.data!),
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

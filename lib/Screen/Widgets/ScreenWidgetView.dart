import 'package:flutter/material.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/ScreenWidget.dart';
import '../../Core/Services/Model/Author.dart';
import '../../Core/Services/Model/Character.dart';
import '../../Utils/Extensions/StringExtensions.dart';
import '../../Widgets/Shelf/MediaSection.dart';
import '../../Widgets/Shelf/PeopleShelf.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Settings/Widgets/SettingsAdaptor.dart';
import 'Components/DataSection.dart';

class ScreenWidgetView extends StatelessWidget {
  final ScreenWidget item;
  final String heroPrefix;
  final void Function(Media media, String? heroTag)? onMediaTap;
  final void Function(Character character)? onCharacterTap;
  final void Function(Author staff)? onStaffTap;

  const ScreenWidgetView(
    this.item, {
    super.key,
    this.heroPrefix = '',
    this.onMediaTap,
    this.onCharacterTap,
    this.onStaffTap,
  });

  @override
  Widget build(BuildContext context) => switch (item.type) {
    ScreenWidgetType.media => _media(),
    ScreenWidgetType.character => PeopleShelf(
      title: item.title ?? 'Characters',
      onTap: onCharacterTap == null
          ? null
          : (p) => onCharacterTap!(p.tag! as Character),
      people: [
        for (final Character c in item.characters ?? const <Character>[])
          ShelfPerson(
            image: c.image,
            name: c.name ?? '',
            tag: c,
            role: _characterRole(c),
          ),
      ],
    ),
    ScreenWidgetType.staff => PeopleShelf(
      title: item.title ?? 'Staff',
      onTap: onStaffTap == null ? null : (p) => onStaffTap!(p.tag! as Author),
      people: [
        for (final Author s in item.staff ?? const <Author>[])
          ShelfPerson(
            image: s.image,
            name: s.name ?? '',
            tag: s,
            role: s.role?.titleCase,
          ),
      ],
    ),
    ScreenWidgetType.data => DataSection(title: item.title, data: item.data!),
    ScreenWidgetType.settings => Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: SettingsAdaptor(settings: item.settings ?? const []),
    ),
    ScreenWidgetType.extra => item.widget!,
  };

  static String _characterRole(Character c) => [
    if (c.role != null) c.role!.titleCase,
    if (c.voiceActor?.firstOrNull?.name != null)
      c.voiceActor!.first.name!
    else if (c.roles?.firstOrNull != null)
      c.roles!.first.mainName,
  ].join(' · ');

  static final _pages = Expando<int>();

  Future<List<Media>?> _more() async {
    final page = (_pages[item] ?? 1) + 1;
    final more = await item.onLoadMore!(page);
    if (more == null || more.isEmpty) return null;
    _pages[item] = page;
    return more;
  }

  Widget _media() {
    final data = MediaSectionData(
      type: 0,
      title: item.title,
      mediaList: item.media,
      heroPrefix: heroPrefix,
      onMediaTap: (ctx, i, media, tag) => onMediaTap?.call(media, tag),
      onLoadMore: item.onLoadMore == null ? null : _more,
    );
    return item.section?.call(data) ?? MediaSection(data: data);
  }
}

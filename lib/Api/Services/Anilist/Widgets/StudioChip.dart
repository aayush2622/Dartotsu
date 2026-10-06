import 'package:flutter/material.dart';

import '../../../../Utils/Extensions/ClickCursor.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Studio.dart';
import '../../../../Screen/Feed/FeedNavigation.dart';
import '../../../../Utils/Extensions/Responsive.dart';

class StudioChip extends StatelessWidget {
  final MediaService service;
  final Studio studio;

  const StudioChip({super.key, required this.service, required this.studio});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ActionChip(
          mouseCursor: kClickCursor,
          avatar: const Icon(Icons.business_rounded, size: 18),
          label: Text(studio.name),
          onPressed: () => openEntity(
            context,
            service,
            EntityKind.studio,
            studio.id,
            name: studio.name,
          ),
        ),
      ),
    );
  }
}

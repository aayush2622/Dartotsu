import 'dart:async';

import 'package:flutter/material.dart';

import '../../Detail/Watch/Data/Media/ResumeStore.dart';
import 'ResumeText.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Core/ThemeManager/CardStyleController.dart';
import '../../../Model/CardStyle.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Shelf/CardShelf.dart';
import '../../../Widgets/Shelf/CardShelfState.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../Feed/ResumeLauncher.dart';
import '../../Feed/ResumeScreen.dart';

class ResumeShelf extends StatefulWidget {
  final MediaService service;

  const ResumeShelf({super.key, required this.service});

  @override
  State<ResumeShelf> createState() => _ResumeShelfState();
}

class _ResumeShelfState extends State<ResumeShelf> {
  @override
  void initState() {
    super.initState();
    unawaited(ResumeStore.verify(widget.service));
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    ResumeStore.entries.length;
    final list = ResumeStore.visible(widget.service);
    if (list.isEmpty) return const SizedBox.shrink();
    void openAll() => unawaited(
      navigateToPage(context, ResumeScreen(service: widget.service)),
    );
    return CardShelf(
      title: getString.resumeTitle,
      dataKey: list,
      styleOverride: resumeCardStyle(1.7, lines: 1),
      trailingIcon: Icons.arrow_forward_rounded,
      onTrailingIconTap: openAll,
      onTitleTap: openAll,
      items: [
        for (final entry in list) resumeItem(context, widget.service, entry),
      ],
    );
  }
}

CardStyle resumeCardStyle(double scale, {required int lines}) {
  final base = tryFind<CardStyleController>()?.current ?? CardStyle.cozy;
  return base.copyWith(
    size: CardSize.custom,
    customScale: base.scale * scale,
    aspect: 9 / 16,
    titleLines: lines,
  );
}

ShelfCardItem resumeItem(
  BuildContext context,
  MediaService service,
  ResumeEntry entry,
) {
  final left = resumeLeft(entry);
  final subtitle = resumeDetail(entry);
  return ShelfCardItem(
    id: entry.slot.toString(),
    title: entry.mediaTitle,
    subtitle: subtitle,
    imageUrl: entry.image,
    progress: entry.fraction.clamp(0.0, 1.0),
    progressText: left,
    onTap: () => openResume(context, service, entry),
    onLongPress: () => ResumeStore.remove(entry),
    cardBuilder: (card) => Stack(
      children: [
        card,
        PositionedDirectional(
          top: 6,
          end: 6,
          child: Clickable(
            onTap: () => ResumeStore.remove(entry),
            child: Tooltip(
              message: getString.resumeRemove,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.5),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

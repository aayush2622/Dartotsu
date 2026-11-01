import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Nav/DpadLayers.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Detail/Watch/Data/Media/ResumeStore.dart';
import '../Home/Components/ResumeShelf.dart';
import 'ResumeState.dart';

class ResumeScreen extends StatefulWidget {
  final MediaService service;

  const ResumeScreen({super.key, required this.service});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends BaseScreen<ResumeScreen>
    with ScreenStateHost<ResumeScreen, ResumeState> {
  @override
  ResumeState buildState() => ResumeState(service: widget.service);

  @override
  Widget buildContent(BuildContext context) {
    final entries = state.entries;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(title: getString.resumeTitle),
      body: entries.isEmpty
          ? EmptyState(
              icon: Icons.play_circle_outline_rounded,
              title: getString.nothingHereYet,
            )
          : _grid(context, entries),
    );
  }

  Widget _grid(BuildContext context, List<ResumeEntry> entries) {
    final style = resumeCardStyle(2.4, lines: 2);
    return ScrollConfig(
      context,
      child: DpadColumn(
        child: GridView.builder(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapSm,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: style.itemWidth + Dimens.cardGap + 6,
            mainAxisExtent: style.itemHeightFor(context),
            crossAxisSpacing: Dimens.cardGap,
            mainAxisSpacing: Dimens.gap,
          ),
          itemCount: entries.length,
          itemBuilder: (context, i) {
            final entry = entries[i];
            final item = resumeItem(context, widget.service, entry);
            final card = PosterCard(
              imageUrl: item.imageUrl,
              title: item.title,
              subtitle: item.subtitle,
              progress: item.progress,
              progressText: item.progressText,
              unread: item.unread,
              style: style,
              onTap: item.onTap,
              onLongPress: item.onLongPress,
            );
            return Align(
              key: ValueKey('resume:${item.id}'),
              alignment: Alignment.topCenter,
              child: item.cardBuilder?.call(card) ?? card,
            );
          },
        ),
      ),
    );
  }
}

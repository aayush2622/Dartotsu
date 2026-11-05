import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../Core/SourceAlerts/SourceAlerts.dart';
import '../../../Core/SourceAlerts/SourcePrefs.dart';
import '../../../Core/SourceAlerts/SourceSchedule.dart';
import '../../../Core/SourceAlerts/SourceSub.dart';
import '../../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Nav/DpadNav.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/ChoiceSheet.dart';
import '../../../Widgets/Components/SectionCard.dart';
import '../../Extension/ExtensionScreen.dart';
import 'SubDiagnosis.dart';

class SourceStatus {
  final String text;
  final IconData icon;
  final bool problem;

  const SourceStatus(this.text, this.icon, {this.problem = false});
}

bool isManagerActive(SourceSub sub) {
  final type = ItemType.values.asNameMap()[sub.type];
  if (type == null) return false;
  return tryFind<ExtensionManager>()?.current[type]?.id == sub.managerId;
}

String _when(int at) {
  final left = at - DateTime.now().millisecondsSinceEpoch;
  if (left <= 0) return getString.sourceSoon;
  final hours = (left / 3600000).ceil();
  if (hours < 48) return getString.sourceInHours(hours);
  return getString.sourceInDays((hours / 24).ceil());
}

SourceStatus describeSub(SourceSub s) {
  if (s.health == SubHealth.finished) {
    return SourceStatus(getString.sourceFinished, Icons.task_alt_rounded);
  }
  if (!isManagerActive(s)) {
    return SourceStatus(
      getString.sourceInactive(s.managerName),
      Icons.pause_circle_outline_rounded,
    );
  }
  if (s.health == SubHealth.missing) {
    return SourceStatus(
      getString.sourceMissingDesc(s.sourceName),
      Icons.remove_circle_outline_rounded,
      problem: true,
    );
  }
  if (s.health == SubHealth.unreachable) {
    return SourceStatus(
      getString.sourceUnreachable,
      Icons.cloud_off_rounded,
      problem: true,
    );
  }
  if (s.muted) {
    return SourceStatus(getString.sourceMuted, Icons.notifications_off_rounded);
  }
  final reason = skipReason(
    s,
    DateTime.now().millisecondsSinceEpoch,
    SkipRules(
      unstarted: sourceSkipUnstartedPref.rx.value,
      unseen: sourceSkipUnseenPref.rx.value,
    ),
  );
  return switch (reason) {
    SkipReason.completed => SourceStatus(
      getString.sourceSkippedCompleted,
      Icons.done_all_rounded,
    ),
    SkipReason.unstarted => SourceStatus(
      getString.sourceSkippedUnstarted,
      Icons.hourglass_empty_rounded,
    ),
    SkipReason.unseen => SourceStatus(
      getString.sourceSkippedUnseen,
      Icons.visibility_off_outlined,
    ),
    SkipReason.window => SourceStatus(
      getString.sourceNextCheck(_when(s.nextCheckAt)),
      Icons.schedule_rounded,
    ),
    null => SourceStatus(getString.sourceWaiting, Icons.schedule_rounded),
  };
}

Future<void> showSubActions(BuildContext context, SourceSub sub) async {
  final store = find<SourceSubscriptions>();
  final broken =
      sub.health == SubHealth.missing || sub.health == SubHealth.unreachable;
  final choice = await showChoiceSheet<String>(
    context,
    title: sub.title,
    selected: '',
    options: [
      ChoiceOption(
        'open',
        broken ? getString.sourcePickAnother : getString.sourceOpenTitle,
        icon: broken ? Icons.swap_horiz_rounded : Icons.open_in_new_rounded,
      ),
      if (sub.health == SubHealth.missing)
        ChoiceOption(
          'extensions',
          getString.sourceOpenExtensions,
          icon: Icons.extension_rounded,
        ),
      ChoiceOption(
        'why',
        getString.sourceWhyAction,
        icon: Icons.help_outline_rounded,
      ),
      ChoiceOption(
        'mute',
        sub.muted ? getString.sourceUnmute : getString.sourceMute,
        icon: sub.muted
            ? Icons.notifications_active_outlined
            : Icons.notifications_off_outlined,
      ),
      ChoiceOption(
        'remove',
        getString.sourceUnsubscribe,
        icon: Icons.delete_outline_rounded,
      ),
    ],
  );
  if (choice == null || !context.mounted) return;
  switch (choice) {
    case 'open':
      find<SourceAlerts>().openSub(sub);
    case 'extensions':
      unawaited(navigateToPage(context, const ExtensionScreen()));
    case 'why':
      unawaited(showSubDiagnosis(context, sub));
    case 'mute':
      sub.muted = !sub.muted;
      store.changed();
    case 'remove':
      store.remove(sub);
  }
}

class SourceSubTile extends StatelessWidget {
  final SourceSub sub;
  final bool dimmed;

  const SourceSubTile({super.key, required this.sub, this.dimmed = false});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final status = describeSub(sub);
    final missing = sub.health == SubHealth.missing;
    final color = status.problem ? scheme.error : scheme.onSurfaceVariant;
    final cover = sub.cover ?? sub.targetCover;
    final tile = Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.gapXs),
      child: SectionCard(
        padding: EdgeInsets.zero,
        child: Material(
          color: Colors.transparent,
          borderRadius: Dimens.border,
          clipBehavior: Clip.antiAlias,
          child: DpadTap(
            borderRadius: Dimens.border,
            onTap: () => missing
                ? unawaited(showSubActions(context, sub))
                : find<SourceAlerts>().openSub(sub),
            child: Padding(
              padding: EdgeInsets.all(Dimens.gapSm + 2),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 44,
                          height: 58,
                          child: cover == null
                              ? ColoredBox(
                                  color: scheme.surfaceContainerHighest,
                                  child: Icon(
                                    Icons.notifications_rounded,
                                    color: scheme.onSurfaceVariant,
                                    size: 20,
                                  ),
                                )
                              : cachedNetworkImage(
                                  imageUrl: cover,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                      if (missing)
                        PositionedDirectional(
                          end: -6,
                          bottom: -6,
                          child: Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: scheme.errorContainer,
                              shape: BoxShape.circle,
                              border: Border.all(color: scheme.surface),
                            ),
                            child: Icon(
                              Icons.remove_rounded,
                              size: 16,
                              color: scheme.onErrorContainer,
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(width: Dimens.gap),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          sub.title,
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: Dimens.gapXs),
                        Text(
                          '${sub.sourceName} · ${sub.managerName}'
                          '${sub.lastValue > 0 ? ' · ${getString.sourceLatest(unitLabel(sub.lastValue))}' : ''}',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: Dimens.gapXs),
                        Row(
                          children: [
                            Icon(status.icon, size: 13, color: color),
                            SizedBox(width: Dimens.gapSm),
                            Expanded(
                              child: Text(
                                status.text,
                                style: context.textTheme.labelSmall?.copyWith(
                                  color: color,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert_rounded),
                    onPressed: () => unawaited(showSubActions(context, sub)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    return dimmed ? Opacity(opacity: 0.6, child: tile) : tile;
  }
}

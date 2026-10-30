import 'package:flutter/material.dart';

import '../../../Core/SourceAlerts/SourceSchedule.dart';
import '../../../Core/SourceAlerts/SourceSub.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/TimeAgo.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import 'SourceSubTile.dart';

String _ago(int at) => at <= 0 ? getString.sourceWhyNever : timeAgo(at ~/ 1000);

String _in(int at) {
  final left = at - DateTime.now().millisecondsSinceEpoch;
  if (left <= 0) return getString.sourceSoon;
  final hours = (left / 3600000).ceil();
  return hours < 48
      ? getString.sourceInHours(hours)
      : getString.sourceInDays((hours / 24).ceil());
}

String _verdict(SourceSub s, SourceStatus status) {
  if (s.muted) return getString.sourceWhyVerdictMuted;
  if (s.health == SubHealth.missing || s.health == SubHealth.unreachable) {
    return getString.sourceWhyVerdictBroken;
  }
  final seen = s.seen;
  if (seen != null && s.lastValue.floor() > seen) {
    return getString.sourceWhyVerdictAhead;
  }
  if (status.icon == Icons.done_all_rounded ||
      status.icon == Icons.hourglass_empty_rounded ||
      status.icon == Icons.visibility_off_outlined) {
    return getString.sourceWhyVerdictSkipped;
  }
  return getString.sourceWhyVerdictNew;
}

Future<void> showSubDiagnosis(BuildContext context, SourceSub sub) {
  final status = describeSub(sub);
  final seen = sub.seen;
  final rows = <(String, String)>[
    (getString.sourceWhyStatus, status.text),
    (getString.sourceWhyLastCheck, _ago(sub.lastChecked)),
    (getString.sourceWhyNextCheck, _in(sub.nextCheckAt)),
    if (sub.lastValue > 0)
      (getString.sourceWhyNewest, unitLabel(sub.lastValue)),
    if (seen != null) (getString.sourceWhyProgress, '$seen'),
    if (sub.listStatus != null)
      (getString.sourceWhyListStatus, sub.listStatus!),
    if (sub.failures > 0) (getString.sourceWhyFailures, '${sub.failures}'),
    if (sub.lastReleaseAt > 0)
      (getString.sourceWhyLastRelease, _ago(sub.lastReleaseAt)),
  ];
  return showCustomBottomDialog<void>(
    context,
    Builder(
      builder: (context) => AppSheet(
        title: sub.title,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          children: [
            Text(
              _verdict(sub, status),
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            for (final (label, value) in rows)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        label,
                        style: context.textTheme.labelLarge?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(value, style: context.textTheme.bodyMedium),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    ),
  );
}

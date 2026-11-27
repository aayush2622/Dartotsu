import '../../../../Widgets/Components/ScrollConfig.dart';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Animation/WidgetAnimations.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Functions/TimeAgo.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/AppSpinner.dart';
import '../../../../Widgets/Components/ScreenState.dart';
import '../../../../Widgets/Components/SheetTile.dart';
import '../Data/SourceHealth.dart';
import 'SourceToolsState.dart';

class SourceToolsSheet extends StatefulWidget {
  final Source source;

  const SourceToolsSheet({super.key, required this.source});

  @override
  State<SourceToolsSheet> createState() => _SourceToolsSheetState();
}

enum _Tone { good, warn, bad, muted }

class _Verdict {
  final _Tone tone;
  final String title;
  final String detail;

  const _Verdict(this.tone, this.title, this.detail);
}

class _SourceToolsSheetState extends State<SourceToolsSheet>
    with ScreenStateHost<SourceToolsSheet, SourceToolsState> {
  @override
  SourceToolsState buildState() => SourceToolsState(widget.source);

  String _failure(CloudflareFailure failure) => switch (failure) {
    CloudflareFailure.timeout => getString.watchFailTimeout,
    CloudflareFailure.blocked => getString.watchFailBlocked,
    CloudflareFailure.turnstile => getString.watchFailTurnstile,
    CloudflareFailure.loadFailed => getString.watchFailLoad,
    CloudflareFailure.rejected => getString.watchFailRejected,
    CloudflareFailure.dismissed => getString.watchFailDismissed,
    CloudflareFailure.cooldown => getString.watchFailCooldown,
    CloudflareFailure.quiet => getString.watchFailQuiet,
    CloudflareFailure.webView => getString.watchFailWebView,
    CloudflareFailure.unavailable => getString.watchFailUnavailable,
  };

  _Verdict _verdict(
    SourceProbe? probe,
    ToolsBusy busy,
    CloudflareResult? last,
  ) {
    switch (busy) {
      case ToolsBusy.testing:
        return _Verdict(_Tone.muted, getString.watchStatusTesting, '');
      case ToolsBusy.solving:
        return _Verdict(_Tone.muted, getString.watchStatusSolving, '');
      case ToolsBusy.idle:
        break;
    }
    if (probe == null) {
      final failure = last?.failure;
      return _Verdict(
        failure == null ? _Tone.muted : _Tone.warn,
        getString.watchStatusUntested,
        failure == null ? '' : _failure(failure),
      );
    }
    return switch (probe.result) {
      ProbeResult.ok => _Verdict(
        _Tone.good,
        getString.watchStatusReady,
        probe.passedByItself
            ? getString.watchSolvedBackground(
                (probe.solve!.took.inMilliseconds / 1000).round(),
              )
            : probe.solve?.byUser == true
            ? getString.watchSolvedByUser
            : getString.watchProbeOk(probe.status ?? 0),
      ),
      ProbeResult.challenge => _Verdict(
        _Tone.warn,
        getString.watchStatusChallenge,
        probe.failure == null
            ? getString.watchProbeChallenge
            : _failure(probe.failure!),
      ),
      ProbeResult.blocked => _Verdict(
        _Tone.bad,
        getString.watchStatusBlocked,
        getString.watchProbeBlocked(probe.status ?? 0),
      ),
      ProbeResult.failed => _Verdict(
        _Tone.bad,
        getString.watchStatusOffline,
        probe.status == null
            ? getString.watchProbeFailed
            : getString.watchProbeBlocked(probe.status!),
      ),
    };
  }

  Color _toneColor(ColorScheme scheme, _Tone tone) => switch (tone) {
    _Tone.good => scheme.primary,
    _Tone.warn => scheme.tertiary,
    _Tone.bad => scheme.error,
    _Tone.muted => scheme.outline,
  };

  Widget _dot(BuildContext context, _Tone tone) => SizedBox(
    width: 24,
    child: Center(
      child: Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          color: _toneColor(context.colorScheme, tone),
          shape: BoxShape.circle,
        ),
      ),
    ),
  );

  Widget _icon(BuildContext context, IconData icon, {Color? color}) => SizedBox(
    width: 24,
    child: Icon(
      icon,
      size: 20,
      color: color ?? context.colorScheme.onSurfaceVariant,
    ),
  );

  Widget _label(BuildContext context, String text) => Padding(
    padding: EdgeInsets.fromLTRB(
      Dimens.gapSm,
      Dimens.gapLg,
      Dimens.gapSm,
      Dimens.gapSm,
    ),
    child: Text(
      text,
      style: context.textTheme.labelLarge?.copyWith(
        color: context.colorScheme.onSurfaceVariant,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  Widget _hero(BuildContext context, SourceHealth h) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final probe = state.probe.value;
    final busy = state.busy.value;
    final verdict = _verdict(probe, busy, state.lastSolve.value);
    final working = busy != ToolsBusy.idle;
    final challenge = probe?.result == ProbeResult.challenge;
    final canSolve =
        challenge && probe?.failure != CloudflareFailure.blocked ||
        h.clearanceStale;
    return Container(
      padding: EdgeInsets.all(Dimens.gap),
      decoration: BoxDecoration(
        color: scheme.onSurface.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              working
                  ? SizedBox(
                      width: 24,
                      child: Center(
                        child: AppSpinner(size: 14, color: scheme.primary),
                      ),
                    )
                  : _dot(context, verdict.tone),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: AnimatedSwitcher(
                  duration: animDuration(200),
                  layoutBuilder: (current, previous) => Stack(
                    alignment: AlignmentDirectional.centerStart,
                    children: [...previous, ?current],
                  ),
                  child: Column(
                    key: ValueKey('${verdict.title}|${verdict.detail}'),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        verdict.title,
                        style: theme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (verdict.detail.isNotEmpty) ...[
                        SizedBox(height: Dimens.gapXs),
                        Text(
                          verdict.detail,
                          style: theme.bodyMedium?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              if (h.host.isNotEmpty)
                Padding(
                  padding: EdgeInsetsDirectional.only(start: Dimens.gapSm),
                  child: Text(
                    h.host,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.labelMedium?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ),
            ],
          ),
          if (h.url != null) ...[
            SizedBox(height: Dimens.gap),
            Row(
              children: [
                Expanded(
                  child: FilledButton.tonal(
                    onPressed: working ? null : state.test,
                    child: Text(getString.watchTestConnection),
                  ),
                ),
                if (canSolve) ...[
                  SizedBox(width: Dimens.gapSm),
                  Expanded(
                    child: FilledButton(
                      onPressed: working ? null : state.solve,
                      child: Text(getString.watchSolveChallenge),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ],
      ),
    ).animateFadeUp();
  }

  List<Widget> _session(BuildContext context, SourceHealth h) {
    final clearance = h.clearance;
    final issued = clearance?.issued;
    final rows = <(_Tone, String)>[
      (
        h.cookies > 0 ? _Tone.good : _Tone.muted,
        getString.watchCookieCount(h.cookies, h.host),
      ),
      if (clearance == null)
        (_Tone.muted, getString.watchClearanceMissing)
      else if (h.clearanceStale)
        (_Tone.warn, getString.watchClearanceStale)
      else
        (
          _Tone.good,
          getString.watchClearanceActive(
            issued == null
                ? _until(clearance.expires)
                : getString.watchClearanceIssued(
                    timeAgo(issued.millisecondsSinceEpoch ~/ 1000),
                  ),
          ),
        ),
      (
        h.customAgent ? _Tone.warn : _Tone.muted,
        h.customAgent ? getString.watchAgentCustom : getString.watchAgentShared,
      ),
    ];
    return [
      for (final (i, (tone, text)) in rows.indexed)
        SheetTile(
          tinted: true,
          radius: groupedRadius(i, rows.length),
          leading: _dot(context, tone),
          title: Text(text, style: context.textTheme.bodyMedium),
        ),
    ];
  }

  String _until(DateTime? date) {
    if (date == null) return getString.watchClearanceSession;
    final left = date.difference(DateTime.now());
    if (left.inHours >= 1) return '${left.inHours} h left';
    return '${left.inMinutes.clamp(0, 59)} min left';
  }

  List<Widget> _tools(BuildContext context, SourceHealth h) {
    final scheme = context.colorScheme;
    final rows = <Widget Function(BorderRadius)>[
      (r) => SheetTile(
        tinted: true,
        radius: r,
        leading: _icon(context, Icons.tune_rounded),
        title: Text(getString.watchSourceSettings),
        trailing: const Icon(Icons.chevron_right_rounded),
        onTap: state.openSettings,
      ),
      if (h.url != null)
        (r) => SheetTile(
          tinted: true,
          radius: r,
          leading: _icon(context, Icons.public_rounded),
          title: Text(getString.watchOpenWebView),
          subtitle: Text(getString.watchOpenWebViewDesc),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: state.openWebView,
        ),
      if (h.url != null)
        (r) => SheetTile(
          tinted: true,
          radius: r,
          leading: _icon(
            context,
            Icons.delete_sweep_rounded,
            color: scheme.error,
          ),
          title: Text(
            getString.watchClearCookies,
            style: TextStyle(color: scheme.error),
          ),
          onTap: state.clearCookies,
        ),
    ];
    return [
      for (final (i, row) in rows.indexed) row(groupedRadius(i, rows.length)),
    ];
  }

  @override
  Widget build(BuildContext context) => AppSheet(
    title: widget.source.name,
    child: ScrollConfig(
      context,
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          0,
          Dimens.pagePad,
          Dimens.gapLg,
        ),
        child: Watch(() {
          final h = state.health.value;
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _hero(context, h),
              if (h.url != null) ...[
                _label(context, getString.watchSectionSession),
                ..._session(context, h),
              ],
              _label(context, getString.watchSectionTools),
              ..._tools(context, h),
            ],
          );
        }),
      ),
    ),
  );
}

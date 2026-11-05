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
  final IconData icon;
  final _Tone tone;
  final String title;
  final String detail;

  const _Verdict(this.icon, this.tone, this.title, this.detail);
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
        return _Verdict(
          Icons.network_check_rounded,
          _Tone.muted,
          getString.watchStatusTesting,
          '',
        );
      case ToolsBusy.solving:
        return _Verdict(
          Icons.shield_moon_outlined,
          _Tone.muted,
          getString.watchStatusSolving,
          '',
        );
      case ToolsBusy.idle:
        break;
    }
    if (probe == null) {
      final failure = last?.failure;
      return _Verdict(
        failure == null ? Icons.shield_outlined : Icons.gpp_maybe_outlined,
        failure == null ? _Tone.muted : _Tone.warn,
        getString.watchStatusUntested,
        failure == null ? '' : _failure(failure),
      );
    }
    return switch (probe.result) {
      ProbeResult.ok => _Verdict(
        Icons.verified_user_rounded,
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
        Icons.gpp_maybe_rounded,
        _Tone.warn,
        getString.watchStatusChallenge,
        probe.failure == null
            ? getString.watchProbeChallenge
            : _failure(probe.failure!),
      ),
      ProbeResult.blocked => _Verdict(
        Icons.block_rounded,
        _Tone.bad,
        getString.watchStatusBlocked,
        getString.watchProbeBlocked(probe.status ?? 0),
      ),
      ProbeResult.failed => _Verdict(
        Icons.cloud_off_rounded,
        _Tone.bad,
        getString.watchStatusOffline,
        probe.status == null
            ? getString.watchProbeFailed
            : getString.watchProbeBlocked(probe.status!),
      ),
    };
  }

  (Color, Color) _colors(ColorScheme scheme, _Tone tone) => switch (tone) {
    _Tone.good => (scheme.primaryContainer, scheme.onPrimaryContainer),
    _Tone.warn => (scheme.tertiaryContainer, scheme.onTertiaryContainer),
    _Tone.bad => (scheme.errorContainer, scheme.onErrorContainer),
    _Tone.muted => (scheme.surfaceContainerHigh, scheme.onSurfaceVariant),
  };

  Widget _badge(
    BuildContext context,
    IconData icon, {
    _Tone tone = _Tone.good,
    double size = 40,
    bool spinner = false,
  }) {
    final (background, foreground) = _colors(context.colorScheme, tone);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: background, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: spinner
          ? AppSpinner(size: size * 0.45, color: foreground)
          : Icon(icon, size: size * 0.5, color: foreground),
    );
  }

  Widget _label(BuildContext context, String text) => Padding(
    padding: EdgeInsets.fromLTRB(
      Dimens.gapSm,
      Dimens.gap,
      Dimens.gapSm,
      Dimens.gapXs,
    ),
    child: Text(
      text,
      style: context.textTheme.labelLarge?.copyWith(
        color: context.colorScheme.primary,
        fontWeight: FontWeight.w700,
      ),
    ),
  );

  Widget _hero(BuildContext context, SourceHealth h) {
    final scheme = context.colorScheme;
    final theme = context.textTheme;
    final probe = state.probe.value;
    final busy = state.busy.value;
    final verdict = _verdict(probe, busy, state.lastSolve.value);
    final (background, foreground) = _colors(scheme, verdict.tone);
    final working = busy != ToolsBusy.idle;
    final challenge = probe?.result == ProbeResult.challenge;
    final canSolve =
        challenge && probe?.failure != CloudflareFailure.blocked ||
        h.clearanceStale;
    return AnimatedContainer(
      duration: animDuration(250),
      curve: Curves.easeOutCubic,
      padding: EdgeInsets.all(Dimens.gap),
      decoration: BoxDecoration(
        color: background.withValues(
          alpha: verdict.tone == _Tone.muted ? 1 : 0.9,
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: foreground.withValues(alpha: 0.12),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: working
                    ? AppSpinner(size: 24, strokeWidth: 2.5, color: foreground)
                    : Icon(verdict.icon, size: 28, color: foreground),
              ),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: AnimatedSwitcher(
                  duration: animDuration(200),
                  child: Column(
                    key: ValueKey('${verdict.title}|${verdict.detail}'),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        verdict.title,
                        style: theme.titleMedium?.copyWith(
                          color: foreground,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (verdict.detail.isNotEmpty) ...[
                        SizedBox(height: Dimens.gapXs),
                        Text(
                          verdict.detail,
                          style: theme.bodyMedium?.copyWith(
                            color: foreground.withValues(alpha: 0.85),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (h.host.isNotEmpty) ...[
            SizedBox(height: Dimens.gapSm),
            Row(
              children: [
                Icon(
                  Icons.public_rounded,
                  size: 14,
                  color: foreground.withValues(alpha: 0.7),
                ),
                SizedBox(width: Dimens.gapXs),
                Expanded(
                  child: Text(
                    h.host,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.labelMedium?.copyWith(
                      color: foreground.withValues(alpha: 0.7),
                    ),
                  ),
                ),
              ],
            ),
          ],
          if (h.url != null) ...[
            SizedBox(height: Dimens.gap),
            Row(
              children: [
                Expanded(
                  child: FilledButton.tonalIcon(
                    onPressed: working ? null : state.test,
                    icon: const Icon(Icons.network_check_rounded),
                    label: Text(getString.watchTestConnection),
                  ),
                ),
                if (canSolve) ...[
                  SizedBox(width: Dimens.gapSm),
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: working ? null : state.solve,
                      icon: const Icon(Icons.shield_moon_outlined),
                      label: Text(getString.watchSolveChallenge),
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
    final rows = <(IconData, _Tone, String, String?)>[
      (
        Icons.cookie_outlined,
        h.cookies > 0 ? _Tone.good : _Tone.muted,
        getString.watchCookieCount(h.cookies, h.host),
        null,
      ),
      if (clearance == null)
        (
          Icons.shield_outlined,
          _Tone.muted,
          getString.watchClearanceMissing,
          null,
        )
      else if (h.clearanceStale)
        (
          Icons.gpp_maybe_rounded,
          _Tone.warn,
          getString.watchClearanceStale,
          null,
        )
      else
        (
          Icons.verified_user_rounded,
          _Tone.good,
          getString.watchClearanceActive(
            issued == null
                ? _until(clearance.expires)
                : getString.watchClearanceIssued(
                    timeAgo(issued.millisecondsSinceEpoch ~/ 1000),
                  ),
          ),
          null,
        ),
      (
        Icons.badge_outlined,
        h.customAgent ? _Tone.warn : _Tone.muted,
        h.customAgent ? getString.watchAgentCustom : getString.watchAgentShared,
        null,
      ),
    ];
    return [
      for (final (i, (icon, tone, text, _)) in rows.indexed)
        SheetTile(
          tinted: true,
          radius: groupedRadius(i, rows.length),
          leading: _badge(context, icon, tone: tone, size: 36),
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
        leading: _badge(context, Icons.tune_rounded),
        title: Text(getString.watchSourceSettings),
        trailing: const Icon(Icons.chevron_right_rounded),
        onTap: state.openSettings,
      ),
      if (h.url != null)
        (r) => SheetTile(
          tinted: true,
          radius: r,
          leading: _badge(context, Icons.public_rounded),
          title: Text(getString.watchOpenWebView),
          subtitle: Text(getString.watchOpenWebViewDesc),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: state.openWebView,
        ),
      if (h.url != null)
        (r) => SheetTile(
          tinted: true,
          radius: r,
          leading: _badge(context, Icons.delete_sweep_rounded, tone: _Tone.bad),
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
  );
}

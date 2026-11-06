import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Components/ThemedContainer.dart';

import 'package:dartotsu_extension_bridge/toolkit.dart';

import 'ExtensionTestState.dart';
import '../../Widgets/Components/AppSpinner.dart';

class ExtensionTestScreen extends StatefulWidget {
  const ExtensionTestScreen({super.key});

  @override
  State<ExtensionTestScreen> createState() => _ExtensionTestScreenState();
}

class _ExtensionTestScreenState extends BaseScreen<ExtensionTestScreen>
    with ScreenStateHost<ExtensionTestScreen, ExtensionTestState> {
  @override
  ExtensionTestState buildState() => ExtensionTestState();

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: getString.extensionTest,
        actions: [
          Watch(
            () => IconButton(
              tooltip: getString.extensionTestCopyLogs,
              icon: const Icon(Icons.receipt_long_rounded),
              onPressed: state.done == 0 ? null : state.copyLogs,
            ),
          ),
          Watch(
            () => IconButton(
              tooltip: getString.extensionTestCopy,
              icon: const Icon(Icons.copy_all_rounded),
              onPressed: state.failed == 0 && state.done == 0
                  ? null
                  : state.copyReport,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
            child: _controls(context),
          ),
          SizedBox(height: Dimens.gapSm),
          Expanded(child: _list(context)),
        ],
      ),
    );
  }

  Widget _controls(BuildContext context) {
    return Watch(() {
      final running = state.running.value;
      state.tick.value;
      final total = state.sources.length;
      final done = state.done;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppSegmented<ItemType>(
            value: state.type.value,
            onChanged: state.load,
            segments: [
              AppSegment(ItemType.anime, label: getString.anime),
              AppSegment(ItemType.manga, label: getString.manga),
              AppSegment(ItemType.novel, label: getString.novel),
            ],
          ),
          SizedBox(height: Dimens.gapSm),
          Row(
            children: [
              Expanded(
                child: ThemedContainer(
                  borderRadius: BorderRadius.circular(16),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    controller: state.query,
                    enabled: !running,
                    textInputAction: TextInputAction.search,
                    style: context.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: getString.extensionTestQuery,
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      fillColor: Colors.transparent,
                      filled: false,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 16,
                      ),
                    ),
                    onSubmitted: (_) => state.runAll(),
                  ),
                ),
              ),
              SizedBox(width: Dimens.gapSm),
              running
                  ? FilledButton.tonalIcon(
                      onPressed: state.stop,
                      icon: const Icon(Icons.stop_rounded),
                      label: Text(getString.extensionTestStop),
                    )
                  : FilledButton.icon(
                      onPressed: total == 0 ? null : state.runAll,
                      icon: const Icon(Icons.play_arrow_rounded),
                      label: Text(getString.extensionTestRun),
                    ),
            ],
          ),
          if (total > 0 && (running || done > 0)) ...[
            SizedBox(height: Dimens.gapSm),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: total == 0 ? 0 : done / total,
                minHeight: 6,
              ),
            ),
            SizedBox(height: Dimens.gapXs),
            Text(
              getString.extensionTestSummary(
                done,
                total,
                state.passed,
                state.failed,
              ),
              style: context.textTheme.labelMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      );
    });
  }

  Widget _skeleton(BuildContext context) => Skeletonizer(
    child: ListView(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      children: [
        for (var i = 0; i < 8; i++)
          Padding(
            padding: EdgeInsets.only(bottom: Dimens.gapSm),
            child: const SectionCard(
              padding: EdgeInsets.zero,
              child: ListTile(
                leading: Bone.square(size: 38),
                title: Text('Source name goes here'),
                subtitle: Text('en'),
              ),
            ),
          ),
      ],
    ),
  );

  Widget _list(BuildContext context) {
    return Watch(() {
      state.tick.value;
      final sources = state.sources.toList();
      if (state.loading.value) {
        return _skeleton(context);
      }
      if (sources.isEmpty) {
        return EmptyState(
          icon: Icons.extension_off_rounded,
          title: getString.extensionTestNone,
        );
      }
      return ScrollConfig(
        context,
        child: ListView.separated(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapXs,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          itemCount: sources.length,
          separatorBuilder: (_, _) => SizedBox(height: Dimens.gapSm),
          itemBuilder: (_, i) => _SourceTile(
            source: sources[i],
            report: state
                .reports[state.sources[i].id ?? state.sources[i].name ?? ''],
            onRun: () => state.runOne(sources[i]),
          ),
        ),
      );
    });
  }
}

class _SourceTile extends StatelessWidget {
  final Source source;
  final SourceReport? report;
  final VoidCallback onRun;

  const _SourceTile({
    required this.source,
    required this.report,
    required this.onRun,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final r = report;
    final failure = r?.firstFailure;
    final color = r == null
        ? scheme.outline
        : r.running
        ? scheme.primary
        : failure != null
        ? scheme.error
        : r.passed
        ? Colors.green
        : scheme.outline;
    return SectionCard(
      padding: EdgeInsets.zero,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          key: PageStorageKey('${source.id}-${failure != null}'),
          initiallyExpanded: failure != null,
          tilePadding: EdgeInsets.symmetric(horizontal: Dimens.gap),
          childrenPadding: EdgeInsets.fromLTRB(
            Dimens.gap,
            0,
            Dimens.gap,
            Dimens.gap,
          ),
          shape: const Border(),
          collapsedShape: const Border(),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 38,
              height: 38,
              child: cachedNetworkImage(
                imageUrl: source.iconUrl ?? '',
                fit: BoxFit.cover,
                errorWidget: (_, _, _) => ColoredBox(
                  color: scheme.secondaryContainer,
                  child: Icon(
                    Icons.extension_rounded,
                    size: 20,
                    color: scheme.onSecondaryContainer,
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            source.name ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: r == null
                ? Text(
                    source.lang ?? '',
                    style: context.textTheme.labelSmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  )
                : Row(
                    children: [
                      for (final s in r.steps) ...[
                        _StepDot(step: s),
                        const SizedBox(width: 6),
                      ],
                      if (failure != null)
                        Expanded(
                          child: Text(
                            getString.extensionTestFailedAt(
                              _stepLabel(failure.step),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.labelSmall?.copyWith(
                              color: color,
                            ),
                          ),
                        ),
                    ],
                  ),
          ),
          trailing: r != null && r.running
              ? const AppSpinner(size: 20, strokeWidth: 2.5)
              : IconButton(
                  tooltip: getString.extensionTestRun,
                  icon: const Icon(Icons.refresh_rounded),
                  onPressed: onRun,
                ),
          children: [
            if (r == null)
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  getString.extensionTestNotRun,
                  style: context.textTheme.bodySmall,
                ),
              )
            else
              for (final s in r.steps) _StepRow(step: s),
          ],
        ),
      ),
    );
  }
}

String _stepLabel(TestStep step) => switch (step) {
  TestStep.search => getString.extensionTestSearch,
  TestStep.detail => getString.extensionTestDetail,
  TestStep.units => getString.extensionTestUnits,
  TestStep.links => getString.extensionTestLinks,
};

Color _statusColor(BuildContext context, TestStatus status) {
  final scheme = context.colorScheme;
  return switch (status) {
    TestStatus.passed => Colors.green,
    TestStatus.failed => scheme.error,
    TestStatus.running => scheme.primary,
    _ => scheme.outline,
  };
}

IconData _statusIcon(TestStatus status) => switch (status) {
  TestStatus.passed => Icons.check_circle_rounded,
  TestStatus.failed => Icons.cancel_rounded,
  TestStatus.running => Icons.timelapse_rounded,
  TestStatus.skipped => Icons.remove_circle_outline_rounded,
  TestStatus.pending => Icons.radio_button_unchecked_rounded,
};

class _StepDot extends StatelessWidget {
  final StepResult step;

  const _StepDot({required this.step});

  @override
  Widget build(BuildContext context) => Tooltip(
    message: _stepLabel(step.step),
    child: Icon(
      _statusIcon(step.status),
      size: 16,
      color: _statusColor(context, step.status),
    ),
  );
}

class _StepRow extends StatelessWidget {
  final StepResult step;

  const _StepRow({required this.step});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final color = _statusColor(context, step.status);
    final detail = step.error ?? step.note;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(_statusIcon(step.status), size: 18, color: color),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      _stepLabel(step.step),
                      style: context.textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (step.ms > 0) ...[
                      const SizedBox(width: 8),
                      Text(
                        '${step.ms} ms',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
                if (detail.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: SelectableText(
                      detail,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: step.error != null
                            ? scheme.error
                            : scheme.onSurfaceVariant,
                        fontFamily: step.error != null ? 'monospace' : null,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

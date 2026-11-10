import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'Components/SyncHeader.dart';
import 'Components/SyncOverview.dart';
import 'Components/SyncPairRow.dart';
import 'SyncState.dart';

class SyncScreen extends StatefulWidget {
  const SyncScreen({super.key});

  @override
  State<SyncScreen> createState() => _SyncScreenState();
}

class _SyncScreenState extends BaseScreen<SyncScreen>
    with TickerProviderStateMixin, ScreenStateHost<SyncScreen, SyncState> {
  @override
  SyncState buildState() => SyncState();

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: getString.syncTitle,
        actions: [
          Watch(
            () => state.controller.plan.value == null || state.controller.busy
                ? const SizedBox.shrink()
                : IconButton(
                    tooltip: getString.syncClear,
                    icon: const Icon(Icons.delete_sweep_rounded),
                    onPressed: state.clear,
                  ),
          ),
        ],
      ),
      body: Watch(() => ScrollConfig(context, child: _body(context))),
    );
  }

  Widget _body(BuildContext context) {
    state.controller.changes.track();
    state.controller.clock.value;
    final plan = state.plan;
    final service = state.selectedService;
    final target = state.current;
    final pairs = state.pairs;
    final error = state.controller.error.value;
    final header = SliverToBoxAdapter(child: SyncHeader(state: state));
    if (plan == null) {
      return CustomScrollView(
        slivers: [
          header,
          SliverFillRemaining(
            hasScrollBody: false,
            child: EmptyState(
              icon: error == null
                  ? Icons.sync_alt_rounded
                  : Icons.error_outline_rounded,
              failed: error != null,
              title: error ?? getString.syncIntro,
            ),
          ),
        ],
      );
    }
    return CustomScrollView(
      slivers: [
        header,
        SliverToBoxAdapter(child: SyncTabs(state: state)),
        if (service != null && target != null)
          SliverToBoxAdapter(
            child: SyncOverview(state: state, service: service, target: target),
          ),
        if (pairs.isEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(Dimens.gapXl),
              child: Center(child: Text(getString.syncNothingHere)),
            ),
          )
        else
          SliverFixedExtentList(
            itemExtent: 92,
            delegate: SliverChildBuilderDelegate(
              childCount: pairs.length,
              (context, i) => SyncPairRow(
                key: ValueKey(pairs[i].main.id),
                pair: pairs[i],
                statusLabel: state.statusLabel,
                from: state.sourceName(pairs[i]),
                onTap: service == null
                    ? null
                    : () => state.openPair(context, service, pairs[i]),
              ),
            ),
          ),
        SliverToBoxAdapter(child: SizedBox(height: Dimens.gapXl * 2)),
      ],
    );
  }
}

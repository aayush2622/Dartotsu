import '../../../Utils/Animation/WidgetAnimations.dart';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import 'Data/SyncController.dart';
import 'Data/SyncModels.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'Components/SyncPrivateDialog.dart';
import 'Components/SyncSheets.dart';

class SyncState extends ScreenState {
  final controller = find<SyncController>();
  TabController? tabs;

  @override
  void onClose() {
    tabs?.dispose();
    super.onClose();
  }

  TabController tabsFor(int length) {
    final current = tabs;
    if (current != null && current.length == length) return current;
    final next = TabController(
      length: length,
      vsync: vsync,
      animationDuration: animDuration(300),
      initialIndex: targets
          .indexWhere((s) => s.id == selected.value)
          .clamp(0, length - 1),
    );
    next.addListener(() {
      if (next.indexIsChanging) return;
      final all = targets;
      if (next.index < all.length && all[next.index].id != selected.value) {
        selected.value = all[next.index].id;
        showFilter(SyncStatus.outdated);
      }
    });
    tabs?.dispose();
    return tabs = next;
  }

  MediaService? get mainService => controller.mainService;

  final selected = Live<String?>(null);
  final filter = Live<SyncStatus?>(SyncStatus.outdated);
  final removing = false.live;

  List<SyncItem> get removals =>
      PrefName.syncDelete.rx.value ? current?.removals ?? const [] : const [];

  bool get showingRemovals => removing.value && removals.isNotEmpty;

  void showFilter(SyncStatus? status) {
    removing.value = false;
    filter.value = status;
  }

  String get mainId => controller.mainId;

  bool get isAhead => controller.isAhead;

  String? sourceName(SyncPair pair) {
    final source = pair.main.source;
    if (!isAhead || source == null) return null;
    return controller.candidates.firstWhereOrNull((s) => s.id == source)?.name;
  }

  bool get isAnime => controller.anime.value;

  List<MediaService> get candidates => controller.candidates;

  SyncPlan? get plan {
    final p = controller.plan.value;
    return p != null && p.main == mainId && p.anime == isAnime ? p : null;
  }

  List<MediaService> get targets {
    final p = plan;
    if (p == null) return const [];
    return [
      for (final s in controller.candidates)
        if (p.targets.containsKey(s.id)) s,
    ];
  }

  MediaService? get selectedService {
    final all = targets;
    if (all.isEmpty) return null;
    return all.firstWhere(
      (s) => s.id == selected.value,
      orElse: () => all.first,
    );
  }

  SyncTargetPlan? get current {
    final s = selectedService;
    return s == null ? null : plan?.targets[s.id];
  }

  SyncStatus? get effectiveFilter {
    final f = filter.value;
    final cur = current;
    return f != null && cur != null && cur.count(f) == 0 ? null : f;
  }

  (int, String?, SyncStatus?, List<SyncPair>)? _sorted;

  List<SyncPair> get pairs {
    final cur = current;
    if (cur == null) return const [];
    final f = effectiveFilter;
    final version = controller.version;
    final cached = _sorted;
    if (cached != null &&
        cached.$1 == version &&
        cached.$2 == selectedService?.id &&
        cached.$3 == f) {
      return cached.$4;
    }
    List<SyncPair> out;
    if (f != null) {
      out = [
        for (final p in cur.pairs)
          if (p.state == f) p,
      ];
    } else {
      int rank(SyncPair p) => p.op == SyncOpState.failed
          ? 0
          : switch (p.state) {
              SyncStatus.outdated => 1,
              SyncStatus.missing => 2,
              SyncStatus.synced => 3,
              SyncStatus.unmapped => 4,
            };
      out = [...cur.pairs]..sort((a, b) => rank(a).compareTo(rank(b)));
    }
    _sorted = (version, selectedService?.id, f, out);
    return out;
  }

  int pendingOf(String id) {
    final t = plan?.targets[id];
    if (t == null || !candidates.any((s) => s.id == id)) return 0;
    PrefName.syncAddMissing.rx.value;
    return t.pairs.where(controller.isWanted).length +
        (PrefName.syncDelete.rx.value ? t.removals.length : 0);
  }

  void setMain(String id) {
    if (controller.busy) return;
    PrefName.syncMain.rx.value = id;
    selected.value = null;
    showFilter(SyncStatus.outdated);
  }

  void setType(bool anime) {
    if (controller.busy) return;
    controller.anime.value = anime;
    selected.value = null;
    showFilter(SyncStatus.outdated);
  }

  Future<void> fetch() => controller.fetch();

  Future<void> syncAll(BuildContext context) => _run(context);

  Future<void> syncSelected(BuildContext context) {
    final s = selectedService;
    return s == null ? Future.value() : _run(context, only: s.id);
  }

  Future<void> _run(BuildContext context, {String? only}) async {
    bool? includePrivate;
    final privates = controller.privateCount(only: only);
    if (privates > 0 && PrefName.syncPrivate.value == 'ask') {
      includePrivate = await askSyncPrivate(context, privates);
      if (includePrivate == null || !context.mounted) return;
    }
    final removals = controller.removalCount(only: only);
    if (removals > 0) {
      final ok = await askSyncDelete(context, removals);
      if (!ok || !context.mounted) return;
    }
    controller.choosePrivate(includePrivate);
    if (PrefName.syncConfirm.rx.value) {
      final ok = await showSyncPreview(context, controller.preview(only: only));
      if (ok != true) {
        controller.choosePrivate(null);
        return;
      }
    }
    await controller.start(only: only, includePrivate: includePrivate);
  }

  void openPair(BuildContext context, MediaService service, SyncPair pair) =>
      showSyncPair(context, this, service, pair);

  void retry(SyncPair pair) => controller.retry(pair);

  void skip(MediaService service, SyncPair pair, bool value) =>
      controller.setSkipped(service.id, pair, value);

  void stop() => controller.stop();

  void clear() {
    controller.clear();
    snackString(getString.syncCleared);
  }

  String statusLabel(String? status) => switch (status) {
    'CURRENT' ||
    'REPEATING' => isAnime ? getString.watching : getString.reading,
    'PLANNING' => getString.planning,
    'COMPLETED' => getString.completed,
    'DROPPED' => getString.dropped,
    'PAUSED' => getString.paused,
    _ => '-',
  };
}

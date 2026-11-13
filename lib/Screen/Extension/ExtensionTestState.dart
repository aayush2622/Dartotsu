import '../../Api/Services/Extension/LocalSource.dart';

import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/widgets.dart';

import '../../Api/Services/Extension/Services.dart';
import '../../Core/State/State.dart';
import '../../Logger.dart';
import '../../Utils/Functions/CopyToClip.dart';
import '../../Widgets/Components/ScreenState.dart';

import 'package:dartotsu_extension_bridge/toolkit.dart';

class ExtensionTestState extends ScreenState {
  static const parallel = 10;

  final type = ItemType.anime.live;
  final sources = <Source>[].liveList;
  final reports = <String, SourceReport>{}.liveMap;
  final running = false.live;
  final loading = false.live;
  final tick = 0.live;
  final query = TextEditingController(text: 'One Piece');

  late final List<String> _logs = Logger.beginCapture();
  bool _stop = false;
  int _run = 0;

  int get done => reports.values.where((r) => r.finished).length;

  int get failed => reports.values.where((r) => r.firstFailure != null).length;

  int get passed => reports.values.where((r) => r.passed).length;

  @override
  void onInit() {
    _logs.clear();
    unawaited(load(ItemType.anime));
  }

  @override
  void onClose() {
    _stop = true;
    Logger.endCapture(_logs);
    query.dispose();
  }

  Future<void> load(ItemType next) async {
    if (running.value) return;
    type.value = next;
    query.text = next == ItemType.novel ? 'Overlord' : 'One Piece';
    reports.clear();
    loading.value = true;
    await ensureSourcesReady(next);
    sources.value = [
      for (final s in watchSources(next))
        if (s is! LocalSource) s,
    ];
    loading.value = false;
  }

  String _key(Source s) => s.id ?? s.name ?? '';

  SourceReport reportOf(Source s) => reports[_key(s)] ??= SourceReport(s);

  Future<void> runAll() async {
    if (running.value) return;
    final session = ++_run;
    _stop = false;
    running.value = true;
    reports.clear();
    _logs.clear();
    final queue = List.of(sources);
    final workers = [
      for (var i = 0; i < parallel; i++)
        () async {
          while (queue.isNotEmpty && !_stop && session == _run) {
            await _test(queue.removeAt(0));
          }
        }(),
    ];
    await Future.wait(workers);
    if (session == _run) running.value = false;
  }

  Future<void> runOne(Source source) async {
    if (reportOf(source).running) return;
    _stop = false;
    await _test(source);
  }

  Future<void> _test(Source source) async {
    final report = SourceReport(source);
    reports[_key(source)] = report;
    final tester = SourceTester(cancelled: () => _stop);
    await tester.run(report, type.value, query.text.trim(), () => tick.value++);
    tick.value++;
  }

  void stop() {
    _stop = true;
    _run++;
    running.value = false;
  }

  String _report({required bool onlyFailed}) {
    final list = [
      for (final s in sources)
        if (reports[_key(s)] case final r?
            when r.finished && (!onlyFailed || r.firstFailure != null))
          r,
    ];
    return reportText(list, type.value);
  }

  void copyReport() {
    final logs = failureLogs(_logs);
    copyToClipboard(
      logs.isEmpty
          ? _report(onlyFailed: true)
          : '${_report(onlyFailed: true)}\n\n===== Failure logs =====\n$logs\n',
    );
  }

  void copyLogs() {
    copyToClipboard(
      '${_report(onlyFailed: false)}\n\n===== Full logs =====\n${allLogs(_logs)}\n',
    );
  }
}

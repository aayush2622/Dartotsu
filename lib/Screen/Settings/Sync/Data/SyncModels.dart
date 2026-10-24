import 'dart:collection';

import '../../../../Core/Services/Model/Date.dart';
import '../../../../Core/Services/Model/Media.dart';

class SyncKey {
  SyncKey._();

  static const anilist = 'anilist';
  static const mal = 'mal';
  static const kitsu = 'kitsu';
  static const simkl = 'simkl';
  static const mangabaka = 'mangabaka';
  static const mangaupdates = 'mangaupdates';
}

String syncCanonStatus(String? status) => switch (status) {
  'REPEATING' => 'CURRENT',
  null => 'NONE',
  final s => s,
};

Map<String, dynamic>? _dateJson(Date? d) =>
    d?.year == null ? null : {'y': d!.year, 'm': d.month, 'd': d.day};

Date? _dateFrom(Object? raw) => raw is Map
    ? Date(
        year: (raw['y'] as num?)?.toInt(),
        month: (raw['m'] as num?)?.toInt(),
        day: (raw['d'] as num?)?.toInt(),
      )
    : null;

class SyncItem {
  final String id;
  final Map<String, int> ids;
  final String title;
  final String? cover;
  final String? status;
  final int progress;
  final int score;
  final int repeat;
  final Date? started;
  final Date? completed;
  final int? total;
  final int? listId;
  final String? source;

  const SyncItem({
    required this.id,
    required this.ids,
    required this.title,
    this.cover,
    this.status,
    this.progress = 0,
    this.score = 0,
    this.repeat = 0,
    this.started,
    this.completed,
    this.total,
    this.listId,
    this.source,
  });

  factory SyncItem.fromMedia(Media media, Map<String, int> ids) => SyncItem(
    id: media.id,
    ids: ids,
    title: media.mainName,
    cover: media.cover,
    status: media.userStatus,
    progress: media.userProgress ?? 0,
    score: media.userScore ?? 0,
    repeat: media.userRepeat,
    started: media.userStartedAt,
    completed: media.userCompletedAt,
    total: media.totalUnits,
    listId: media.userListId,
  );

  SyncItem copy({
    String? id,
    Map<String, int>? ids,
    int? progress,
    int? score,
    String? source,
  }) => SyncItem(
    id: id ?? this.id,
    ids: ids ?? this.ids,
    title: title,
    cover: cover,
    status: status,
    progress: progress ?? this.progress,
    score: score ?? this.score,
    repeat: repeat,
    started: started,
    completed: completed,
    total: total,
    listId: listId,
    source: source ?? this.source,
  );

  SyncItem withIds(Map<String, int> next) => copy(ids: next);

  SyncItem withProgress(int value) => copy(progress: value);

  SyncItem asTarget(String targetId, {SyncItem? previous}) => SyncItem(
    id: targetId,
    ids: previous?.ids ?? ids,
    title: previous?.title ?? title,
    cover: previous?.cover ?? cover,
    status: status,
    progress: progress,
    score: score,
    repeat: repeat,
    started: started,
    completed: completed,
    total: previous?.total ?? total,
    listId: previous?.listId,
  );

  Media toMedia({required bool anime, String? idOverride}) => Media(
    id: idOverride ?? id,
    name: title,
    cover: cover,
    userStatus: status,
    userProgress: progress,
    userScore: score,
    userRepeat: repeat,
    userStartedAt: started,
    userCompletedAt: completed,
    userListId: listId,
    shareLink: '',
  );

  Map<String, dynamic> toCompact() => {
    'id': id,
    'status': ?status,
    'progress': progress,
    'score': score,
    'repeat': repeat,
    'listId': ?listId,
  };

  factory SyncItem.fromCompact(Map<String, dynamic> j, SyncItem like) =>
      SyncItem(
        id: j['id'] as String,
        ids: like.ids,
        title: like.title,
        cover: like.cover,
        status: j['status'] as String?,
        progress: (j['progress'] as num?)?.toInt() ?? 0,
        score: (j['score'] as num?)?.toInt() ?? 0,
        repeat: (j['repeat'] as num?)?.toInt() ?? 0,
        total: like.total,
        listId: (j['listId'] as num?)?.toInt(),
      );

  Map<String, dynamic> toJson() => {
    'id': id,
    'ids': ids,
    'title': title,
    'cover': ?cover,
    'status': ?status,
    'progress': progress,
    'score': score,
    'repeat': repeat,
    'started': ?_dateJson(started),
    'completed': ?_dateJson(completed),
    'total': ?total,
    'listId': ?listId,
    'src': ?source,
  };

  factory SyncItem.fromJson(Map<String, dynamic> j) => SyncItem(
    id: j['id'] as String,
    ids: {
      for (final e in (j['ids'] as Map).entries) '${e.key}': e.value as int,
    },
    title: j['title'] as String? ?? '',
    cover: j['cover'] as String?,
    status: j['status'] as String?,
    progress: (j['progress'] as num?)?.toInt() ?? 0,
    score: (j['score'] as num?)?.toInt() ?? 0,
    repeat: (j['repeat'] as num?)?.toInt() ?? 0,
    started: _dateFrom(j['started']),
    completed: _dateFrom(j['completed']),
    total: (j['total'] as num?)?.toInt(),
    listId: (j['listId'] as num?)?.toInt(),
    source: j['src'] as String?,
  );
}

const syncSharedEntry = 'shared';

enum SyncStatus { synced, outdated, missing, unmapped }

enum SyncOpState { idle, done, failed, skipped }

class SyncPair {
  final SyncItem main;
  String? targetId;
  SyncItem? target;
  SyncStatus state;
  SyncOpState op;
  String? error;
  final bool dates;
  final bool repeat;

  SyncPair({
    required this.main,
    required this.targetId,
    required this.target,
    required this.state,
    this.op = SyncOpState.idle,
    this.error,
    this.dates = false,
    this.repeat = false,
  });

  SyncItem get want {
    final total = target?.total;
    final full = main.status == 'COMPLETED' && total != null && total > 0;
    return full ? main.withProgress(total) : main;
  }

  bool get pending =>
      op != SyncOpState.done &&
      op != SyncOpState.skipped &&
      (state == SyncStatus.outdated || state == SyncStatus.missing);

  List<String> get diffs {
    final t = target;
    if (t == null) return const [];
    return [
      if (syncCanonStatus(main.status) != syncCanonStatus(t.status)) 'status',
      if (main.progress != t.progress && want.progress != t.progress)
        'progress',
      if (main.score > 0 && (main.score / 10).round() != (t.score / 10).round())
        'score',
      if (dates &&
          (_dateDiffers(main.started, t.started) ||
              _dateDiffers(main.completed, t.completed)))
        'dates',
      if (repeat && main.repeat > 0 && main.repeat != t.repeat) 'repeat',
    ];
  }

  Map<String, dynamic> toJson(int mainIndex) => {
    'm': mainIndex,
    'targetId': ?targetId,
    if (target != null) 't': target!.toCompact(),
    'state': state.index,
    'op': op.index,
    'error': ?error,
    if (dates) 'dt': true,
    if (repeat) 'rp': true,
  };

  factory SyncPair.fromJson(Map<String, dynamic> j, List<SyncItem> mains) {
    final main = mains[(j['m'] as num).toInt()];
    return SyncPair(
      main: main,
      targetId: j['targetId'] as String?,
      target: j['t'] == null
          ? null
          : SyncItem.fromCompact(
              Map<String, dynamic>.from(j['t'] as Map),
              main,
            ),
      state: SyncStatus.values[(j['state'] as num).toInt()],
      op: SyncOpState.values[(j['op'] as num?)?.toInt() ?? 0],
      error: j['error'] as String?,
      dates: j['dt'] == true,
      repeat: j['rp'] == true,
    );
  }
}

bool _dateDiffers(Date? a, Date? b) =>
    a?.year != null &&
    (a!.year != b?.year ||
        (a.month != null && a.month != b?.month) ||
        (a.day != null && a.day != b?.day));

class SyncTargetPlan {
  final List<SyncPair> pairs;
  final int onlyInTarget;
  final String? error;

  SyncTargetPlan(this.pairs, {this.onlyInTarget = 0, this.error});

  int count(SyncStatus state) => pairs.where((p) => p.state == state).length;

  int get done => pairs.where((p) => p.op == SyncOpState.done).length;

  int get failed => pairs.where((p) => p.op == SyncOpState.failed).length;

  int get skipped => pairs.where((p) => p.op == SyncOpState.skipped).length;

  Map<String, dynamic> toJson(Map<SyncItem, int> index) => {
    'pairs': [for (final p in pairs) p.toJson(index[p.main]!)],
    'onlyInTarget': onlyInTarget,
    'error': ?error,
  };

  factory SyncTargetPlan.fromJson(
    Map<String, dynamic> j,
    List<SyncItem> mains,
  ) => SyncTargetPlan(
    [
      for (final p in (j['pairs'] as List? ?? const []))
        SyncPair.fromJson(Map<String, dynamic>.from(p as Map), mains),
    ],
    onlyInTarget: (j['onlyInTarget'] as num?)?.toInt() ?? 0,
    error: j['error'] as String?,
  );
}

class SyncPlan {
  final String main;
  final bool anime;
  final DateTime at;
  final Map<String, SyncTargetPlan> targets;
  final int mainCount;

  SyncPlan({
    required this.main,
    required this.anime,
    required this.targets,
    required this.mainCount,
    DateTime? at,
  }) : at = at ?? DateTime.now();

  bool get hasPending =>
      targets.values.any((t) => t.pairs.any((p) => p.pending));

  Map<String, dynamic> toJson() {
    final index = HashMap<SyncItem, int>.identity();
    for (final t in targets.values) {
      for (final p in t.pairs) {
        index.putIfAbsent(p.main, () => index.length);
      }
    }
    final mains = List<SyncItem?>.filled(index.length, null);
    index.forEach((item, i) => mains[i] = item);
    return {
      'main': main,
      'anime': anime,
      'at': at.millisecondsSinceEpoch,
      'mainCount': mainCount,
      'mains': [for (final m in mains) m!.toJson()],
      'targets': {
        for (final e in targets.entries) e.key: e.value.toJson(index),
      },
    };
  }

  factory SyncPlan.fromJson(Map<String, dynamic> j) {
    final mains = [
      for (final m in (j['mains'] as List))
        SyncItem.fromJson(Map<String, dynamic>.from(m as Map)),
    ];
    return SyncPlan(
      main: j['main'] as String,
      anime: j['anime'] as bool,
      at: DateTime.fromMillisecondsSinceEpoch((j['at'] as num).toInt()),
      mainCount: (j['mainCount'] as num?)?.toInt() ?? 0,
      targets: {
        for (final e in (j['targets'] as Map).entries)
          '${e.key}': SyncTargetPlan.fromJson(
            Map<String, dynamic>.from(e.value as Map),
            mains,
          ),
      },
    );
  }
}

class SyncLimit {
  final int requests;
  final Duration per;

  const SyncLimit(this.requests, this.per);
}

class SyncRateLimited implements Exception {
  final Duration retryAfter;
  final String message;

  SyncRateLimited(this.retryAfter, [this.message = 'Rate limited']);

  @override
  String toString() => message;
}

class SyncFatal implements Exception {
  final String message;

  SyncFatal(this.message);

  @override
  String toString() => message;
}

class SyncOp {
  final SyncItem want;
  final SyncItem? have;
  final String targetId;

  const SyncOp(this.want, this.have, this.targetId);

  bool get exists => have != null;
}

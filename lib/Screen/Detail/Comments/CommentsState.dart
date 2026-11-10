import 'dart:async';

import 'package:flutter/material.dart';

import 'Data/CommentModels.dart';
import 'Data/CommentsApi.dart';
import 'Data/CommentsTarget.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Api/Services/Anilist/AnilistService.dart';
import '../../Social/SocialNavigation.dart';
import 'CommentNode.dart';

enum CommentsPhase { loading, ready, signedOut, unavailable, disabled, failed }

const commentMaxLength = 300;

class CommentsState extends ScreenState {
  final MediaService service;
  final Live<Media> media;
  final ScrollController scroll;
  final int? focusId;
  final Live<int?>? episode;

  CommentsState({
    required this.service,
    required this.media,
    required this.scroll,
    this.focusId,
    this.episode,
  });

  CommentsApi get api => find<CommentsApi>();

  final phase = CommentsPhase.loading.live;
  final failure = Live<String?>(null);
  final nodes = <CommentNode>[].liveList;
  final loadingList = false.live;
  final loadingMore = false.live;
  final single = false.live;
  final filterTag = Live<int?>(null);
  final autoFilter = false.live;
  final posting = false.live;
  final topTag = Live<int?>(null);
  int? target;
  int _page = 1;
  int _pages = 1;
  int _generation = 0;
  Disposer? _tokenSub;
  Disposer? _enabledSub;
  Disposer? _sortSub;
  Disposer? _episodeSub;

  Live<String> get sort => PrefName.commentsSort.rx;

  bool get isAnime => media.value.isAnime;

  int get progress => media.value.userProgress ?? 0;

  int? get total => media.value.totalUnits;

  bool get canOpenProfiles => service.id == anilistServiceId;

  bool get hasMore => _page < _pages && !single.value;

  int? get effectiveFilter {
    if (filterTag.value != null) return filterTag.value;
    if (autoFilter.value && progress > 0) return progress;
    return null;
  }

  @override
  void onInit() {
    scroll.addListener(_nearEnd);
    if (episode != null) {
      filterTag.value = episode!.value;
      _episodeSub = onChange(episode!, setFilter);
    }
    _tokenSub = onChange(api.anilistToken, (_) => unawaited(start()));
    _enabledSub = onChange(
      PrefName.commentsEnabled.rx,
      (_) => unawaited(start()),
    );
    _sortSub = onChange(sort, (_) => _resort());
    unawaited(start());
  }

  @override
  void onClose() {
    scroll.removeListener(_nearEnd);
    _tokenSub?.dispose();
    _enabledSub?.dispose();
    _sortSub?.dispose();
    _episodeSub?.dispose();
  }

  void _nearEnd() {
    if (!scroll.hasClients || phase.value != CommentsPhase.ready) return;
    if (scroll.position.extentAfter < 600) unawaited(loadMore());
  }

  Future<void> start() async {
    final run = ++_generation;
    if (!api.enabled) {
      phase.value = CommentsPhase.disabled;
      return;
    }
    phase.value = CommentsPhase.loading;
    failure.value = null;
    try {
      unawaited(
        api
            .ensureSession()
            .timeout(const Duration(seconds: 20))
            .then<CommentSession?>((s) => s, onError: (Object _) => null),
      );
      target = await CommentsTarget.resolve(
        service,
        media.value,
      ).timeout(const Duration(seconds: 45), onTimeout: () => null);
      logger('Comments start run $run/$_generation target $target');
      if (run != _generation) return;
      if (target == null) {
        phase.value = CommentsPhase.unavailable;
        return;
      }
      if (focusId != null) {
        await _loadSingle(focusId!);
      } else {
        await reload();
      }
      if (run == _generation) phase.value = CommentsPhase.ready;
    } catch (e) {
      if (run != _generation) return;
      logger('Comments failed: $e', logLevel: LogLevel.error);
      failure.value = '$e';
      phase.value = CommentsPhase.failed;
    }
  }

  Future<void> _loadSingle(int id) async {
    loadingList.value = true;
    try {
      final comment = await api.single(id);
      nodes.clear();
      if (comment != null) nodes.add(CommentNode(comment, 0, nodes));
      single.value = true;
    } finally {
      loadingList.value = false;
    }
  }

  Future<void> reload() async {
    final id = target;
    if (id == null) return;
    loadingList.value = true;
    single.value = false;
    _page = 1;
    try {
      final page = await api.comments(
        id,
        tag: effectiveFilter,
        sort: sort.value,
      );
      _pages = page.totalPages;
      nodes.assignAll([
        for (final c in page.comments) CommentNode(c, 0, nodes),
      ]);
    } finally {
      loadingList.value = false;
    }
  }

  Future<void> refresh() async {
    try {
      await reload();
      phase.value = CommentsPhase.ready;
    } catch (e) {
      snackString('$e');
    }
  }

  Future<void> showAll() async {
    loadingList.value = true;
    await refresh();
  }

  Future<void> loadMore() async {
    final id = target;
    if (id == null || loadingMore.value || loadingList.value || !hasMore) {
      return;
    }
    loadingMore.value = true;
    try {
      final page = await api.comments(
        id,
        page: _page + 1,
        tag: effectiveFilter,
        sort: sort.value,
      );
      _page++;
      _pages = page.totalPages;
      final known = {for (final n in nodes) n.comment.id};
      nodes.addAll([
        for (final c in page.comments)
          if (!known.contains(c.id)) CommentNode(c, 0, nodes),
      ]);
    } catch (e) {
      snackString('$e');
    } finally {
      loadingMore.value = false;
    }
  }

  void setSort(String order) {
    if (order == sort.value) return;
    sort.value = order;
    if (hasMore) unawaited(refresh());
  }

  void _resort() {
    if (hasMore || single.value) return;
    int by(CommentNode a, CommentNode b) => switch (sort.value) {
      'oldest' => _time(a).compareTo(_time(b)),
      'highest_rated' => b.comment.score.compareTo(a.comment.score),
      'lowest_rated' => a.comment.score.compareTo(b.comment.score),
      _ => _time(b).compareTo(_time(a)),
    };
    nodes.sort(by);
  }

  static int _time(CommentNode n) =>
      n.comment.time?.millisecondsSinceEpoch ?? 0;

  void setFilter(int? tag) {
    filterTag.value = tag;
    if (tag == null) autoFilter.value = false;
    unawaited(refresh());
  }

  void toggleProgress() {
    if (progress <= 0) return;
    if (filterTag.value != null && filterTag.value != progress) {
      filterTag.value = null;
      autoFilter.value = false;
    } else {
      filterTag.value = null;
      autoFilter.value = !autoFilter.value;
    }
    unawaited(refresh());
  }

  void pickProgress(int tag) {
    filterTag.value = tag;
    autoFilter.value = true;
    unawaited(refresh());
  }

  Future<void> toggleReplies(CommentNode node) async {
    if (node.open.value) {
      _hide(node);
      return;
    }
    if (node.loading.value) return;
    node.loading.value = true;
    try {
      var page = await api.replies(node.comment.id);
      final all = [...page.comments];
      for (var p = 2; p <= page.totalPages && p <= 10; p++) {
        page = await api.replies(node.comment.id, page: p);
        all.addAll(page.comments);
      }
      if (node.flat) {
        final at = node.siblings.indexOf(node) + 1 + node.inlined.length;
        final children = [
          for (final c in all) CommentNode(c, node.depth, node.siblings),
        ];
        for (var i = 0; i < children.length; i++) {
          node.siblings.insert(at + i, children[i]);
        }
        node.inlined
          ..clear()
          ..addAll(children);
      } else {
        node.replies.assignAll([
          for (final c in all) CommentNode(c, node.depth + 1, node.replies),
        ]);
      }
      node.open.value = true;
      node.collapsed.value = false;
    } catch (e) {
      snackString('$e');
    } finally {
      node.loading.value = false;
    }
  }

  void _hide(CommentNode node) {
    node.open.value = false;
    if (node.flat) {
      _dropInlined(node);
    } else {
      node.replies.clear();
    }
  }

  void _dropInlined(CommentNode node) {
    for (final child in node.inlined) {
      _dropInlined(child);
      node.siblings.remove(child);
    }
    node.inlined.clear();
  }

  Future<void> vote(CommentNode node, int type) async {
    final c = node.comment;
    final previous = c.vote;
    final next = previous == type ? 0 : type;
    final ups = c.upvotes;
    final downs = c.downvotes;
    if (previous == 1) c.upvotes--;
    if (previous == -1) c.downvotes--;
    if (next == 1) c.upvotes++;
    if (next == -1) c.downvotes++;
    c.vote = next;
    node.touch();
    try {
      await api.vote(c.id, next);
    } catch (e) {
      c.upvotes = ups;
      c.downvotes = downs;
      c.vote = previous;
      node.touch();
      snackString('$e');
    }
  }

  bool isMine(Comment c) => c.userId == api.userId;

  bool get canModerate => api.isMod || api.isAdmin;

  bool _canPost() {
    if (api.isBanned) {
      snackString(getString.commentsBannedYou);
      return false;
    }
    return true;
  }

  Future<bool> _rules() async {
    if (PrefName.commentsRulesSeen.value) return true;
    final done = Completer<bool>();
    unawaited(
      AlertDialogBuilder(context)
          .setTitle(getString.commentsRules)
          .setMessage(getString.commentsRulesBody)
          .setPositiveButton(getString.commentsRulesAccept, () {
            PrefName.commentsRulesSeen.value = true;
            done.complete(true);
          })
          .setNegativeButton(getString.cancel, () => done.complete(false))
          .setOnDismissListener(() {
            if (!done.isCompleted) done.complete(false);
          })
          .show<void>(),
    );
    return done.future;
  }

  void showRules() {
    AlertDialogBuilder(context)
        .setTitle(getString.commentsRules)
        .setMessage(getString.commentsRulesBody)
        .setNegativeButton(getString.commentsRulesAccept, null)
        .show<void>();
  }

  Future<int?> askTag({int? initial, bool sending = true}) {
    final done = Completer<int?>();
    final label = isAnime
        ? getString.commentsTagEpisode
        : getString.commentsTagChapter;
    final total = this.total;
    final controller = TextEditingController(
      text: initial != null ? '$initial' : (progress > 0 ? '$progress' : ''),
    );
    AlertDialogBuilder(context)
        .setTitle(getString.commentsTagTitle(label))
        .setCustomView(
          TextField(
            controller: controller,
            autofocus: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: total != null && total > 0
                  ? getString.commentsTagRange(total)
                  : getString.commentsTagNumber(label),
            ),
          ),
        )
        .setPositiveButton(sending ? getString.commentsSend : getString.ok, () {
          final entered = int.tryParse(controller.text.trim());
          if (entered != null &&
              total != null &&
              total > 0 &&
              entered > total) {
            snackString(getString.commentsTagTooHigh(total));
            done.complete(null);
          } else {
            done.complete(entered);
          }
        })
        .setNeutralButton(getString.commentsNoTag, () => done.complete(null))
        .setNegativeButton(getString.cancel, () => done.complete(-1))
        .setOnDismissListener(() {
          if (!done.isCompleted) done.complete(-1);
          controller.dispose();
        })
        .show<void>();
    return done.future;
  }

  void askFilter() {
    final controller = TextEditingController(
      text: filterTag.value?.toString() ?? '',
    );
    AlertDialogBuilder(context)
        .setTitle(getString.commentsFilterTagTitle)
        .setCustomView(
          TextField(
            controller: controller,
            autofocus: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: getString.commentsFilterHint),
          ),
        )
        .setPositiveButton(
          getString.commentsFilterApply,
          () => setFilter(int.tryParse(controller.text.trim())),
        )
        .setNeutralButton(getString.commentsFilterClear, () => setFilter(null))
        .setNegativeButton(getString.cancel, null)
        .setOnDismissListener(controller.dispose)
        .show<void>();
  }

  void pickEpisode() {
    if (progress <= 0) return;
    final count = (total ?? progress) < progress
        ? progress
        : (total ?? progress);
    final label = isAnime
        ? (int n) => getString.commentsEpisodeShort(n)
        : (int n) => getString.commentsChapterShort(n);
    AlertDialogBuilder(context)
        .setTitle(
          isAnime
              ? getString.commentsFilterEpisodeTitle
              : getString.commentsFilterChapterTitle,
        )
        .singleChoiceItems(
          [for (var i = 1; i <= count; i++) label(i)],
          (filterTag.value ?? progress) - 1,
          (i) => pickProgress(i + 1),
        )
        .show<void>();
  }

  Future<bool> postTop(String text, int? tag, {bool askForTag = true}) async {
    if (!_canPost() || posting.value) return false;
    final id = target;
    if (id == null) return false;
    if (!await _rules()) return false;
    var chosen = tag;
    if (askForTag && chosen == null) {
      final answer = await askTag();
      if (answer == -1) return false;
      chosen = answer;
    }
    posting.value = true;
    try {
      final made = await api.post(id, text, tag: chosen);
      nodes.insert(0, CommentNode(made, 0, nodes));
      single.value = false;
      return true;
    } catch (e) {
      snackString('$e');
      return false;
    } finally {
      posting.value = false;
    }
  }

  Future<bool> postReply(CommentNode node, String text) async {
    if (!_canPost()) return false;
    final id = target;
    if (id == null) return false;
    if (!await _rules()) return false;
    try {
      final made = await api.post(id, text, parentId: node.comment.id);
      node.comment.replyCount++;
      if (node.flat) {
        final at = node.siblings.indexOf(node) + 1 + node.inlined.length;
        final child = CommentNode(made, node.depth, node.siblings);
        node.siblings.insert(at, child);
        node.inlined.add(child);
      } else {
        node.replies.insert(0, CommentNode(made, node.depth + 1, node.replies));
      }
      node.open.value = true;
      node.replying.value = false;
      node.touch();
      return true;
    } catch (e) {
      snackString('$e');
      return false;
    }
  }

  Future<bool> saveEdit(CommentNode node, String text) async {
    if (!_canPost()) return false;
    try {
      await api.edit(node.comment.id, text);
      node.comment
        ..content = text
        ..timestamp = DateTime.now().toUtc().toIso8601String();
      node.editing.value = false;
      node.touch();
      snackString(getString.commentsEdited);
      return true;
    } catch (e) {
      snackString('$e');
      return false;
    }
  }

  void confirm(String title, String message, VoidCallback onYes) {
    AlertDialogBuilder(context)
        .setTitle(title)
        .setMessage(message)
        .setPositiveButton(getString.yes, onYes)
        .setNegativeButton(getString.no, null)
        .show<void>();
  }

  void delete(CommentNode node) =>
      confirm(getString.commentsDelete, getString.commentsDeleteAsk, () async {
        try {
          await api.delete(node.comment.id);
          _hide(node);
          node.siblings.remove(node);
          snackString(getString.commentsDeleted);
        } catch (e) {
          snackString('$e');
        }
      });

  void report(CommentNode node) =>
      confirm(getString.commentsReport, getString.commentsReportAsk, () async {
        try {
          await api.report(node.comment, mediaTitle: media.value.mainName);
          snackString(getString.commentsReported);
        } catch (e) {
          snackString('$e');
        }
      });

  void ban(CommentNode node) =>
      confirm(getString.commentsBan, getString.commentsBanAsk, () async {
        try {
          await api.ban(node.comment.userId);
          snackString(getString.commentsUserBanned);
        } catch (e) {
          snackString('$e');
        }
      });

  void copy(CommentNode node) => copyToClipboard(node.comment.content);

  void openUser(Comment comment) {
    if (!canOpenProfiles) return;
    openProfile(context, service, id: comment.userId, name: comment.username);
  }

  void openLink(String url) => unawaited(openLinkInBrowser(url));
}

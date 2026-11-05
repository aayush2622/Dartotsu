import '../../../../Logger.dart';
import 'dart:async';
import 'dart:convert';

import 'package:rhttp/rhttp.dart';

import '../../../../Core/NetworkManager/NetworkManager.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/State/State.dart';
import 'CommentModels.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class CommentsApi extends AppController {
  static const address = 'https://api.dantotsu.app';
  static const _appAuth = '6*45Qp%W2RS@t38jkXoSKY588Ynj%n';
  static const _sessionKey = 'commentsSession';
  static const _lifetime = Duration(days: 6);

  final Live<String> anilistToken;

  CommentsApi(this.anilistToken);

  NetworkManager get _net => find<NetworkManager>();

  final session = Live<CommentSession?>(null);
  Future<CommentSession?>? _signingIn;
  Disposer? _tokenSub;

  bool get enabled => PrefName.commentsEnabled.value;

  bool get hasToken => anilistToken.value.isNotEmpty;

  String? get userId => session.value?.userId;

  bool get isBanned => session.value?.isBanned ?? false;

  bool get isMod => session.value?.isMod ?? false;

  bool get isAdmin => session.value?.isAdmin ?? false;

  @override
  void onInit() {
    super.onInit();
    _tokenSub = onChange(anilistToken, (_) => signOut());
  }

  @override
  void onClose() {
    _tokenSub?.dispose();
    super.onClose();
  }

  void signOut() {
    session.value = null;
    PrefManager.removeCustomVal(_sessionKey, location: PrefLocation.CACHE);
  }

  Future<CommentSession?> ensureSession({bool force = false}) {
    if (!enabled || !hasToken) return Future.value(null);
    final current = session.value;
    if (!force && current != null && current.forToken == anilistToken.value) {
      return Future.value(current);
    }
    return _signingIn ??= _signIn(
      anilistToken.value,
      force,
    ).whenComplete(() => _signingIn = null);
  }

  Future<CommentSession?> _signIn(String token, bool force) async {
    final cached = force
        ? null
        : PrefManager.getCustomType(
            _sessionKey,
            CommentSession.fromJson,
            location: PrefLocation.CACHE,
          );
    final fresh =
        cached != null &&
        cached.forToken == token &&
        DateTime.now().millisecondsSinceEpoch - cached.issuedAt <
            _lifetime.inMilliseconds;
    if (cached != null && fresh) {
      session.value = cached;
      try {
        final details =
            await _send('GET', '/user', retried: true) as Map<String, dynamic>;
        final next = cached.refreshed(details);
        _keep(next);
        return next;
      } catch (e, st) {
        logError('CommentsApi', e, st);
        session.value = null;
      }
    }
    for (var attempt = 0; ; attempt++) {
      try {
        final body =
            await _send(
                  'POST',
                  '/authenticate',
                  form: {'token': token},
                  auth: false,
                )
                as Map<String, dynamic>;
        final next = CommentSession.fromApi(
          body,
          body['authToken'] as String,
          forToken: token,
        );
        _keep(next);
        return next;
      } on CommentsException catch (e) {
        if (!e.rateLimited || attempt >= 2) rethrow;
        await Future<void>.delayed(const Duration(seconds: 20));
      }
    }
  }

  void _keep(CommentSession next) {
    session.value = next;
    PrefManager.setCustomType(
      _sessionKey,
      next,
      (s) => s.toJson(),
      location: PrefLocation.CACHE,
    );
  }

  Future<Object?> _send(
    String method,
    String path, {
    Map<String, String>? query,
    Map<String, String>? form,
    bool auth = true,
    bool retried = false,
  }) async {
    final headers = {
      'appauth': _appAuth,
      if (auth && session.value != null) 'Authorization': session.value!.token,
    };
    final url = '$address$path';
    final body = form == null ? null : HttpBody.form(form);
    final res = switch (method) {
      'GET' => await _net.get(url, query: query, headers: headers),
      'POST' => await _net.post(
        url,
        data: body,
        query: query,
        headers: headers,
      ),
      'PUT' => await _net.put(url, data: body, query: query, headers: headers),
      _ => await _net.delete(url, query: query, headers: headers),
    };
    if (res.isOk) return _json(res.data);
    if (res.statusCode == 401 && auth && !retried && hasToken) {
      session.value = null;
      await ensureSession(force: true);
      return _send(
        method,
        path,
        query: query,
        form: form,
        auth: auth,
        retried: true,
      );
    }
    throw CommentsException(res.statusCode, _reason(res.statusCode, res.data));
  }

  static Object? _json(Object? data) {
    if (data is String) {
      if (!data.startsWith('{') && !data.startsWith('[')) return data;
      try {
        return jsonDecode(data);
      } catch (e, st) {
        logError('CommentsApi', e, st);
        return data;
      }
    }
    return data;
  }

  static String _reason(int status, Object? data) {
    final parsed = _json(data);
    final message = parsed is Map
        ? parsed['message']?.toString()
        : (parsed is String && parsed.isNotEmpty ? parsed : null);
    if (status == 429) return message ?? getString.commentsRateLimited;
    if (message == null) return getString.commentsConnectFailed;
    return status == 500 ? message : '$status: $message';
  }

  Future<CommentPage> comments(
    int mediaId, {
    int page = 1,
    int? tag,
    String? sort,
  }) async {
    try {
      final body = await _send(
        'GET',
        '/comments/$mediaId/$page',
        query: {'tag': ?tag?.toString(), 'sort': ?sort},
      );
      return body is Map<String, dynamic>
          ? CommentPage.fromJson(body)
          : const CommentPage([], 1);
    } on CommentsException catch (e) {
      if (e.status == 404) return const CommentPage([], 1);
      rethrow;
    }
  }

  Future<CommentPage> replies(int commentId, {int page = 1}) async {
    try {
      final body = await _send('GET', '/comments/parent/$commentId/$page');
      return body is Map<String, dynamic>
          ? CommentPage.fromJson(body)
          : const CommentPage([], 1);
    } on CommentsException catch (e) {
      if (e.status == 404) return const CommentPage([], 1);
      rethrow;
    }
  }

  Future<Comment?> single(int commentId) async {
    try {
      final body = await _send('GET', '/comments/$commentId');
      return body is Map<String, dynamic> ? Comment.fromJson(body) : null;
    } on CommentsException catch (e) {
      if (e.status == 404) return null;
      rethrow;
    }
  }

  Future<void> vote(int commentId, int type) =>
      _send('POST', '/comments/vote/$commentId/$type');

  Future<Comment> post(
    int mediaId,
    String content, {
    int? parentId,
    int? tag,
  }) async {
    final me = session.value ?? await ensureSession();
    if (me == null) throw const CommentsException(401, 'Not signed in');
    final body =
        await _send(
              'POST',
              '/comments',
              form: {
                'user_id': me.userId,
                'media_id': '$mediaId',
                'content': content,
                'tag': ?tag?.toString(),
                'parent_comment_id': ?parentId?.toString(),
              },
            )
            as Map<String, dynamic>;
    final made = Comment.fromJson({
      ...body,
      'comment_id': body['comment_id'] ?? body['id'],
      'username': me.username,
      'profile_picture_url': me.avatar,
      'total_votes': me.totalVotes,
      'is_mod': me.isMod,
      'is_admin': me.isAdmin,
    });
    return made;
  }

  Future<void> delete(int commentId) => _send('DELETE', '/comments/$commentId');

  Future<void> edit(int commentId, String content) =>
      _send('PUT', '/comments/$commentId', form: {'content': content});

  Future<void> ban(String userId) => _send('POST', '/ban/$userId');

  Future<void> report(Comment comment, {required String mediaTitle}) => _send(
    'POST',
    '/report/${comment.id}',
    form: {
      'username': comment.username,
      'mediaName': mediaTitle,
      'reporter': session.value?.username ?? 'unknown',
      'reportedId': comment.userId,
    },
  );

  Future<List<CommentNotice>> notices() async {
    final body = await _send('GET', '/notification/reply');
    if (body is! Map) return const [];
    return [
      for (final n in (body['notifications'] as List? ?? const []))
        if (n is Map) CommentNotice.fromJson(Map<String, dynamic>.from(n)),
    ];
  }
}

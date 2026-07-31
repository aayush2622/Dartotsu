import 'dart:convert';
import 'dart:math' show Random;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../Services/BaseServiceData.dart';
import '../../Widgets/CustomBottomDialog.dart';

import 'MangaBakaModels.dart';
import 'MangaBakaQueries.dart';
import 'MangaBakaMutations.dart';
import 'Login.dart' as MangaBakaLogin;

const String _kBaseApi = 'https://api.mangabaka.org';
const String _kBaseAuth = 'https://mangabaka.org/auth/oauth2';
const String _kClientId = 'pCyAfgTOmhYNkqMEsSuuUApvEiyNzpRc';
const String _kRedirectUri = 'dartotsu://callback';
const String _kCallbackScheme = 'dartotsu';

var MangaBaka = Get.put(MangaBakaController());

class MangaBakaController extends BaseServiceData {
  MangaBakaController() {
    query = MangaBakaQueries(this);
    mutations = MangaBakaMutations(this);
  }

  String? _codeVerifier;
  String? _authState;

  String _generateCodeVerifier() {
    final rng = Random.secure();
    final bytes = List<int>.generate(64, (_) => rng.nextInt(256));
    return base64UrlEncode(bytes)
        .replaceAll('=', '')
        .replaceAll('+', '-')
        .replaceAll('/', '_');
  }

  String _generateCodeChallenge(String verifier) {
    final bytes = utf8.encode(verifier);
    final digest = sha256.convert(bytes);
    return base64UrlEncode(digest.bytes)
        .replaceAll('=', '')
        .replaceAll('+', '-')
        .replaceAll('/', '_');
  }

  String _generateRandomString(int length) {
    const charset =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~';
    final rng = Random.secure();
    return List.generate(length, (_) => charset[rng.nextInt(charset.length)])
        .join();
  }

  MangaBakaOAuthToken? get storedToken {
    final raw = loadData(PrefName.mangaBakaToken);
    if (raw == null || raw.isEmpty) return null;
    try {
      return MangaBakaOAuthToken.fromJson(
          jsonDecode(raw) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }

  @override
  bool getSavedToken() {
    final saved = storedToken;
    if (saved == null) return false;
    token.value = saved.accessToken;
    if (token.isNotEmpty) {
      fetchUserProfile();
    }
    return token.isNotEmpty;
  }

  @override
  Future<void> saveToken(String rawTokenJson) async {
    saveData(PrefName.mangaBakaToken, rawTokenJson);
    final oauthToken = MangaBakaOAuthToken.fromJson(
        jsonDecode(rawTokenJson) as Map<String, dynamic>);
    token.value = oauthToken.accessToken;
    run.value = true;
    isInitialized.value = false;
    await fetchUserProfile();
    Refresh.refreshService(RefreshId.MangaBaka);
  }

  @override
  void removeSavedToken() {
    removeData(PrefName.mangaBakaToken);
    token.value = '';
    username.value = '';
    avatar.value = '';
    userid = null;
    run.value = true;
    isInitialized.value = false;
    Refresh.refreshService(RefreshId.MangaBaka);
  }

  @override
  void login(BuildContext context) {
    showCustomBottomDialog(context, MangaBakaLogin.login(context));
  }

  Map<String, String> get _authHeaders => {
        'Authorization': 'Bearer ${token.value}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

  bool _isUnauthorized(http.Response r) =>
      r.statusCode == 400 || r.statusCode == 401 || r.statusCode == 403;

  Future<bool> tryRefreshToken() async {
    final refresh = storedToken?.refreshToken;
    if (refresh == null) {
      removeSavedToken();
      return false;
    }
    try {
      final response = await http.post(
        Uri.parse('$_kBaseAuth/token'),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        body: {
          'client_id': _kClientId,
          'refresh_token': refresh,
          'grant_type': 'refresh_token',
          'redirect_uri': _kRedirectUri,
        },
      );
      if (response.statusCode == 200) {
        await saveToken(response.body);
        return true;
      }
    } catch (e) {
      debugPrint('[MangaBaka] refresh failed: $e');
    }
    removeSavedToken();
    return false;
  }

  Future<http.Response> getRequest(String path, {String? rawQuery}) async {
    var uri = Uri.parse('$_kBaseApi$path');
    if (rawQuery != null) {
      uri = uri.replace(query: rawQuery);
    }
    var response = await http.get(uri, headers: _authHeaders);
    if (response.statusCode == 429) {
      await Future.delayed(const Duration(seconds: 5));
      return getRequest(path, rawQuery: rawQuery);
    }
    if (_isUnauthorized(response)) {
      if (await tryRefreshToken()) {
        response = await http.get(uri, headers: _authHeaders);
      }
    }
    return response;
  }

  Future<http.Response> sendRequest(
      String method, String path, Map<String, dynamic> body) async {
    final uri = Uri.parse('$_kBaseApi$path');
    Future<http.Response> doRequest() async {
      final req = http.Request(method, uri)
        ..headers.addAll(_authHeaders)
        ..body = jsonEncode(body);
      return http.Response.fromStream(await req.send());
    }

    var response = await doRequest();
    if (response.statusCode == 429) {
      await Future.delayed(const Duration(seconds: 5));
      return sendRequest(method, path, body);
    }
    if (_isUnauthorized(response)) {
      if (await tryRefreshToken()) {
        response = await doRequest();
      }
    }
    return response;
  }

  Future<bool> fetchUserProfile() async {
    try {
      final meResp = await getRequest('/v1/my/profile');
      if (meResp.statusCode == 200) {
        final envelope = MangaBakaResponse<MangaBakaUserProfile>.fromJson(
          jsonDecode(meResp.body) as Map<String, dynamic>,
          (d) => MangaBakaUserProfile.fromJson(d as Map<String, dynamic>),
        );
        if (envelope.data != null) {
          username.value = envelope.data!.displayName;
          userid = int.tryParse(envelope.data!.id ?? '0');
          avatar.value = '';
          return true;
        }
      }
      final resp = await http.get(
        Uri.parse('$_kBaseAuth/userinfo'),
        headers: {
          'Authorization': 'Bearer ${token.value}',
          'Accept': 'application/json',
        },
      );
      if (resp.statusCode == 200) {
        final body = jsonDecode(resp.body) as Map<String, dynamic>;
        username.value = body['preferred_username'] as String? ??
            body['nickname'] as String? ??
            'MangaBaka User';
        userid = int.tryParse(body['sub']?.toString() ?? '0');
        avatar.value = '';
        return true;
      }
    } catch (e) {
      debugPrint('[MangaBaka] profile fetch error: $e');
    }
    return false;
  }

  Future<List<MangaBakaLibraryEntry>> fetchUserLibrary() async {
    try {
      final resp = await getRequest('/v1/my/library',
          rawQuery: 'page=1&limit=100&sort_by=updated_at_desc');
      if (resp.statusCode != 200) return [];
      final envelope =
          MangaBakaResponse<List<MangaBakaLibraryEntry>>.fromJson(
        jsonDecode(resp.body) as Map<String, dynamic>,
        (d) => (d as List<dynamic>)
            .map((e) =>
                MangaBakaLibraryEntry.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
      return envelope.data ?? [];
    } catch (e) {
      debugPrint('[MangaBaka] fetchUserLibrary error: $e');
      return [];
    }
  }

  Future<MangaBakaSeries?> fetchSeriesById(int id) async {
    try {
      final resp = await getRequest('/v1/series/$id');
      if (resp.statusCode != 200) return null;
      final envelope = MangaBakaResponse<MangaBakaSeries>.fromJson(
        jsonDecode(resp.body) as Map<String, dynamic>,
        (d) => MangaBakaSeries.fromJson(d as Map<String, dynamic>),
      );
      return envelope.data;
    } catch (e) {
      debugPrint('[MangaBaka] fetchSeriesById error: $e');
      return null;
    }
  }

  Future<MangaBakaLibraryEntry?> fetchLibraryEntry(int seriesId) async {
    try {
      final resp = await getRequest('/v1/my/library/$seriesId');
      if (resp.statusCode == 200) {
        final envelope = MangaBakaResponse<MangaBakaLibraryEntry>.fromJson(
          jsonDecode(resp.body) as Map<String, dynamic>,
          (d) => MangaBakaLibraryEntry.fromJson(d as Map<String, dynamic>),
        );
        return envelope.data;
      }
      if (resp.statusCode == 404) return null;
      final batchResp =
          await getRequest('/v1/my/library/batch', rawQuery: 'series_id=$seriesId');
      if (batchResp.statusCode == 200) {
        final envelope =
            MangaBakaResponse<List<MangaBakaLibraryEntry>>.fromJson(
          jsonDecode(batchResp.body) as Map<String, dynamic>,
          (d) => (d as List<dynamic>)
              .map((e) =>
                  MangaBakaLibraryEntry.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
        final entries = envelope.data;
        return (entries != null && entries.isNotEmpty) ? entries.first : null;
      }
      return null;
    } catch (e) {
      debugPrint('[MangaBaka] fetchLibraryEntry error: $e');
      return null;
    }
  }

  Future<List<MangaBakaSeries>> fetchSeries({
    String? query,
    List<MangaBakaType> types = const [],
    String sortBy = 'popularity_desc',
    bool nsfw = false,
    int limit = 15,
  }) async {
    try {
      if (token.isNotEmpty && (storedToken?.isExpired ?? false)) {
        await tryRefreshToken();
      }
      final parts = <String>[];
      if (query != null && query.isNotEmpty) {
        parts.add('q=${Uri.encodeComponent(query)}');
      }
      for (final t in types) {
        parts.add('type=${t.apiValue}');
      }
      parts.add('sort_by=$sortBy');
      parts.add('limit=$limit');
      if (!nsfw) {
        parts.add('not_content_rating=erotica');
        parts.add('not_content_rating=pornographic');
      }
      final resp =
          await getRequest('/v1/series/search', rawQuery: parts.join('&'));
      if (resp.statusCode != 200) return [];
      final envelope = MangaBakaResponse<List<MangaBakaSeries>>.fromJson(
        jsonDecode(resp.body) as Map<String, dynamic>,
        (d) => (d as List<dynamic>)
            .map((e) => MangaBakaSeries.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
      return envelope.data ?? [];
    } catch (e) {
      debugPrint('[MangaBaka] fetchSeries error: $e');
      return [];
    }
  }

  Future<List<MangaBakaSeries>> searchSeries(String query,
      {bool nsfw = false}) async {
    return fetchSeries(query: query, nsfw: nsfw, limit: 25);
  }

  Future<bool> writeLibraryEntry({
    required int seriesId,
    required Map<String, dynamic> body,
    required bool create,
  }) async {
    try {
      var resp = await sendRequest(
        create ? 'POST' : 'PUT',
        '/v1/my/library/$seriesId',
        body,
      );
      if (create && resp.statusCode == 409) {
        resp = await sendRequest('PUT', '/v1/my/library/$seriesId', body);
      }
      if (resp.statusCode >= 200 && resp.statusCode < 300) {
        Refresh.refreshService(RefreshId.MangaBaka);
        return true;
      }
      return false;
    } catch (e) {
      debugPrint('[MangaBaka] writeLibraryEntry error: $e');
      return false;
    }
  }

  Future<bool> deleteLibraryEntry(int seriesId) async {
    try {
      final uri = Uri.parse('$_kBaseApi/v1/my/library/$seriesId');
      final req = http.Request('DELETE', uri)..headers.addAll(_authHeaders);
      final resp = await http.Response.fromStream(await req.send());
      if (resp.statusCode >= 200 && resp.statusCode < 300) {
        snackString('Removed from MangaBaka library');
        Refresh.refreshService(RefreshId.MangaBaka);
        return true;
      }
      return false;
    } catch (e) {
      debugPrint('[MangaBaka] deleteLibraryEntry error: $e');
      return false;
    }
  }

  String buildAuthUrl() {
    _codeVerifier = _generateCodeVerifier();
    final challenge = _generateCodeChallenge(_codeVerifier!);
    _authState = _generateRandomString(16);
    return Uri.parse('$_kBaseAuth/authorize').replace(
      queryParameters: {
        'client_id': _kClientId,
        'redirect_uri': _kRedirectUri,
        'response_type': 'code',
        'code_challenge': challenge,
        'code_challenge_method': 'S256',
        'scope': 'openid profile library.read library.write offline_access',
        'state': _authState!,
        'prompt': 'consent',
      },
    ).toString();
  }

  Future<String> exchangeCode(String code) async {
    final response = await http.post(
      Uri.parse('$_kBaseAuth/token'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {
        'client_id': _kClientId,
        'code': code,
        'code_verifier': _codeVerifier!,
        'grant_type': 'authorization_code',
        'redirect_uri': _kRedirectUri,
      },
    );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch token: ${response.statusCode}');
    }
  }
}

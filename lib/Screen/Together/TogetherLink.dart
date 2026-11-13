import 'package:flutter/widgets.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Utils/Functions/DeepLinkHandlers.dart';
import 'TogetherController.dart';

const togetherHost = 'together';

String roomLink(String room, String server, String defaultServer) => Uri(
  scheme: 'dartotsu',
  host: togetherHost,
  queryParameters: {
    'room': room,
    if (server != defaultServer) 'server': server,
  },
).toString();

({String room, String? server})? parseRoomLink(String text) {
  final value = text.trim();
  if (value.isEmpty) return null;
  final uri = Uri.tryParse(value);
  if (uri != null &&
      appSchemes.contains(uri.scheme) &&
      uri.host == togetherHost) {
    final room = uri.queryParameters['room'];
    if (room == null || room.isEmpty) return null;
    return (room: room, server: uri.queryParameters['server']);
  }
  if (value.contains(RegExp(r'\s')) || value.contains('://')) return null;
  return (room: value, server: null);
}

Future<bool> joinRoomLink(String text) async {
  final parsed = parseRoomLink(text);
  if (parsed == null) return false;
  await find<TogetherController>().join(parsed.room, server: parsed.server);
  return true;
}

class TogetherLinks extends DeepLinkHandler {
  @override
  bool matches(Uri uri) =>
      appSchemes.contains(uri.scheme.toLowerCase()) && uri.host == togetherHost;

  @override
  Future<void> handle(BuildContext context, Uri uri) async {
    final parsed = parseRoomLink(uri.toString());
    if (parsed == null) return;
    final accepted = await AlertDialogBuilder(context)
        .setTitle(getString.togetherTitle)
        .setMessage(
          getString.togetherLinkConfirm(
            parsed.server == null
                ? parsed.room
                : '${parsed.room} (${parsed.server})',
          ),
        )
        .confirm(getString.togetherJoin, getString.cancel);
    if (!accepted) return;
    await find<TogetherController>().join(parsed.room, server: parsed.server);
  }
}

import 'dart:io';

import 'DiscordPresence.dart';

final discordPlatform = Platform.isIOS
    ? 'ios'
    : Platform.isAndroid
    ? 'android'
    : 'desktop';

Map<String, Object?> discordActivityJson(
  DiscordPresence p, {
  required String applicationId,
  String? platform,
  String? largeImage,
  String? smallImage,
  bool buttonUrlsInMetadata = false,
}) {
  final buttons = p.buttons.take(2).toList();
  return {
    'application_id': applicationId,
    'name': p.name,
    'type': p.type.code,
    'platform': ?platform,
    'details': p.details,
    'state': ?p.state,
    if (p.statusDisplay != 0) 'status_display_type': p.statusDisplay,
    if (p.start != null || p.end != null)
      'timestamps': {'start': ?p.start, 'end': ?p.end},
    'assets': {
      'large_image': ?largeImage,
      'large_text': ?p.largeText,
      'small_image': ?smallImage,
      'small_text': ?p.smallText,
    },
    if (buttons.isNotEmpty && buttonUrlsInMetadata) ...{
      'buttons': [for (final b in buttons) b.label],
      'metadata': {
        'button_urls': [for (final b in buttons) b.url],
      },
    } else if (buttons.isNotEmpty)
      'buttons': [
        for (final b in buttons) {'label': b.label, 'url': b.url},
      ],
  };
}

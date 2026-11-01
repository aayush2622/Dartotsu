import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../Api/Services/Extension/Screens/Calendar.dart';
import '../../Logger.dart';
import '../../Screen/Detail/Watch/Data/Media/ResumeStore.dart';
import '../../Screen/Home/Components/ResumeText.dart';
import '../Services/MediaServiceController.dart';
import '../SourceAlerts/SourceSubscriptions.dart';
import '../State/State.dart';
import '../ThemeManager/LanguageSwitcher.dart';
import '../ThemeManager/LocaleController.dart';

class HomeWidgetSync {
  HomeWidgetSync._();

  static const _channel = MethodChannel('dartotsu/widget');
  static const _releases = 6;
  static const _more = 9;
  static const _past = Duration(hours: 6);

  static Timer? _debounce;
  static bool _started = false;

  static void start() {
    if (!Platform.isAndroid || _started) return;
    _started = true;
    onAnyChange([
      ResumeStore.entries,
      find<SourceSubscriptions>().subs,
      find<MediaServiceController>().currentService,
      find<LocaleController>().code,
    ], _schedule);
    _schedule();
  }

  static void _schedule() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(seconds: 2), () => unawaited(push()));
  }

  static Future<void> push() async {
    try {
      final service = find<MediaServiceController>().currentService.value;
      final all = ResumeStore.visible(service);
      final entry = all.firstOrNull;
      final cutoff = DateTime.now().subtract(_past);
      final entries = await const ExtensionCalendarView().schedule().first;
      final time = DateFormat('EEE HH:mm');
      final payload = {
        'heading': getString.widgetContinue,
        'moreHeading': getString.widgetMore,
        'releasesHeading': getString.widgetReleases,
        'empty': getString.widgetNothing,
        'continue': entry == null
            ? null
            : {
                'title': entry.mediaTitle,
                'detail': resumeDetail(entry),
                'progress': (entry.fraction.clamp(0.0, 1.0) * 100).round(),
                'cover': entry.media['cover'] ?? entry.thumbnail,
              },
        'resume': [
          for (final e in all.skip(1).take(_more))
            {
              'slot': e.slot,
              'title': e.mediaTitle,
              'detail': resumeDetail(e),
              'progress': (e.fraction.clamp(0.0, 1.0) * 100).round(),
              'cover': e.media['cover'] ?? e.thumbnail,
            },
        ],
        'releases': [
          for (final e
              in entries
                  .where((e) => e.airingAt.isAfter(cutoff))
                  .take(_releases))
            {
              'title': e.media.mainName,
              'detail': _releaseDetail(e, time),
              'cover': e.media.cover,
            },
        ],
      };
      await _channel.invokeMethod<void>('update', jsonEncode(payload));
    } catch (e, st) {
      logError('HomeWidget', e, st);
    }
  }

  static String _releaseDetail(CalendarEntry e, DateFormat time) {
    final n = e.episode;
    final unit = n == null
        ? null
        : e.chapter
        ? getString.calendarChapter(n)
        : getString.calendarEpisode(n);
    return [
      ?unit,
      time.format(e.airingAt),
      if (e.expected) getString.calendarExpected,
    ].join(' · ');
  }
}

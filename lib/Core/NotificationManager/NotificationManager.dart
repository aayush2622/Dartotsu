import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:get/get.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../../Utils/Functions/GetXFunctions.dart';

class NotificationManager extends GetxController {
  NotificationManager();

  static NotificationManager get instance => find<NotificationManager>();

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  FlutterLocalNotificationsPlugin get plugin => _plugin;

  // ---------------------------------------------------------------------------
  // State
  // ---------------------------------------------------------------------------

  final _initialized = false.obs;
  final permissionGranted = false.obs;

  final lastNotification = Rxn<NotificationResponse>();
  final launchDetails = Rxn<NotificationAppLaunchDetails>();

  bool get initialized_ => _initialized.value;

  bool get launchedFromNotification =>
      launchDetails.value?.didNotificationLaunchApp ?? false;

  NotificationResponse? get launchResponse =>
      launchDetails.value?.notificationResponse;

  NotificationResponse? get response => lastNotification.value;

  int _nextNotificationId = 1000;

  int nextId() => ++_nextNotificationId;

  @override
  void onClose() {
    lastNotification.close();
    launchDetails.close();
    permissionGranted.close();
    _initialized.close();
    super.onClose();
  }

  // ---------------------------------------------------------------------------
  // Initialization
  // ---------------------------------------------------------------------------

  Future<void> initialize() async {
    if (_initialized.value) return;

    if (!kIsWeb) {
      await _configureTimezone();
    }

    final settings = InitializationSettings(
      android: const AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: const DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
      ),
      macOS: const DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
      ),
      linux: LinuxInitializationSettings(
        defaultActionName: "Open",
        defaultIcon: AssetsLinuxIcon("assets/images/logo.png"),
      ),
    );

    await _plugin.initialize(
      settings: settings,
      onDidReceiveNotificationResponse: (response) {
        lastNotification.value = response;
      },
      onDidReceiveBackgroundNotificationResponse: _backgroundNotificationTap,
    );

    if (!kIsWeb && !Platform.isLinux) {
      launchDetails.value = await _plugin.getNotificationAppLaunchDetails();
    }

    await requestPermission();

    await _createChannels();

    _initialized.value = true;
  }

  @pragma("vm:entry-point")
  static void _backgroundNotificationTap(NotificationResponse response) {}

  Future<void> _configureTimezone() async {
    tz.initializeTimeZones();

    if (Platform.isWindows) {
      return;
    }

    final timezone = await FlutterTimezone.getLocalTimezone();

    tz.setLocalLocation(tz.getLocation(timezone.identifier));
  }

  // ---------------------------------------------------------------------------
  // Permissions
  // ---------------------------------------------------------------------------

  Future<bool> requestPermission() async {
    if (kIsWeb) {
      permissionGranted.value = true;
      return true;
    }

    if (Platform.isAndroid) {
      permissionGranted.value =
          await _plugin
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >()
              ?.requestNotificationsPermission() ??
          false;

      return permissionGranted.value;
    }

    if (Platform.isIOS) {
      permissionGranted.value =
          await _plugin
              .resolvePlatformSpecificImplementation<
                IOSFlutterLocalNotificationsPlugin
              >()
              ?.requestPermissions(alert: true, badge: true, sound: true) ??
          false;

      return permissionGranted.value;
    }

    if (Platform.isMacOS) {
      permissionGranted.value =
          await _plugin
              .resolvePlatformSpecificImplementation<
                MacOSFlutterLocalNotificationsPlugin
              >()
              ?.requestPermissions(alert: true, badge: true, sound: true) ??
          false;

      return permissionGranted.value;
    }

    permissionGranted.value = true;
    return true;
  }

  Future<bool> notificationsEnabled() async {
    if (kIsWeb) return true;

    if (!Platform.isAndroid) {
      return permissionGranted.value;
    }

    return await _plugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.areNotificationsEnabled() ??
        false;
  }

  Future<bool> requestExactAlarmPermission() async {
    if (kIsWeb || !Platform.isAndroid) {
      return false;
    }

    return await _plugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.requestExactAlarmsPermission() ??
        false;
  }

  Future<bool> requestFullScreenIntentPermission() async {
    if (kIsWeb || !Platform.isAndroid) {
      return false;
    }

    return await _plugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.requestFullScreenIntentPermission() ??
        false;
  }

  // ---------------------------------------------------------------------------
  // Channels
  // ---------------------------------------------------------------------------

  Future<void> _createChannels() async {
    if (kIsWeb || !Platform.isAndroid) {
      return;
    }

    final android = _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (android == null) {
      return;
    }

    for (final channel in NotificationChannel.values) {
      await android.createNotificationChannel(
        AndroidNotificationChannel(
          channel.id,
          channel.name,
          description: channel.description,
          importance: channel.importance,
          playSound: channel.playSound,
          enableLights: channel.enableLights,
          enableVibration: channel.enableVibration,
          showBadge: channel.showBadge,
        ),
      );
    }
  }

  Future<void> createChannel({
    required String id,
    required String name,
    required String description,
    Importance importance = Importance.high,
    bool playSound = true,
    bool enableLights = true,
    bool enableVibration = true,
    bool showBadge = true,
  }) async {
    if (kIsWeb || !Platform.isAndroid) {
      return;
    }

    await _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(
          AndroidNotificationChannel(
            id,
            name,
            description: description,
            importance: importance,
            playSound: playSound,
            enableLights: enableLights,
            enableVibration: enableVibration,
            showBadge: showBadge,
          ),
        );
  }

  Future<void> deleteChannel(String id) async {
    if (kIsWeb || !Platform.isAndroid) {
      return;
    }

    await _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.deleteNotificationChannel(channelId: id);
  }

  Future<List<AndroidNotificationChannel>?> channels() async {
    if (kIsWeb || !Platform.isAndroid) {
      return Future.value(null);
    }

    return _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.getNotificationChannels();
  }

  // ---------------------------------------------------------------------------
  // Query / Cancel
  // ---------------------------------------------------------------------------

  Future<List<PendingNotificationRequest>> pendingNotifications() {
    return _plugin.pendingNotificationRequests();
  }

  Future<List<ActiveNotification>> activeNotifications() async {
    if (kIsWeb || !Platform.isAndroid) {
      return [];
    }

    return await _plugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.getActiveNotifications() ??
        [];
  }

  Future<void> cancel(int id, {String? tag}) {
    return _plugin.cancel(id: id, tag: tag);
  }

  Future<void> cancelAll() {
    return _plugin.cancelAll();
  }

  Future<void> cancelAllPending() {
    return _plugin.cancelAllPendingNotifications();
  }

  // ---------------------------------------------------------------------------
  // Payload
  // ---------------------------------------------------------------------------

  String? encodePayload(Object? payload) {
    if (payload == null) return null;

    if (payload is String) {
      return payload;
    }

    return jsonEncode(payload);
  }

  dynamic decodePayload(String? payload) {
    if (payload == null) {
      return null;
    }

    try {
      return jsonDecode(payload);
    } catch (_) {
      return payload;
    }
  }

  Future<void> showException(Object error, {int? id}) {
    return bigText(
      id: id,
      title: "Error",
      body: error.toString(),
      text: error.toString(),
    );
  }
  // ---------------------------------------------------------------------------
  // Show
  // ---------------------------------------------------------------------------

  Future<void> show({
    int? id,
    required String title,
    required String body,
    NotificationOptions? options,
  }) {
    final o = options ?? NotificationOptions();

    return _plugin.show(
      id: id ?? nextId(),
      title: title,
      body: body,
      notificationDetails: _details(o),
      payload: encodePayload(o.payload),
    );
  }

  Future<void> updateNotification({
    required int id,
    required String title,
    required String body,
    NotificationOptions? options,
  }) {
    final o = options ?? NotificationOptions();

    return _plugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: _details(o),
      payload: encodePayload(o.payload),
    );
  }

  Future<void> silent({int? id, required String title, required String body}) {
    return show(
      id: id,
      title: title,
      body: body,
      options: NotificationOptions()
        ..channel = NotificationChannel.silent
        ..silent = true,
    );
  }

  Future<void> ongoing({
    required int id,
    required String title,
    required String body,
  }) {
    return show(
      id: id,
      title: title,
      body: body,
      options: NotificationOptions()
        ..ongoing = true
        ..autoCancel = false,
    );
  }

  Future<void> progress({
    required int id,
    required String title,
    required String body,
    required int current,
    required int total,
    NotificationChannel channel = NotificationChannel.downloads,
    bool ongoing = true,
  }) {
    return _plugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          importance: Importance.high,
          priority: Priority.high,
          ongoing: ongoing,
          onlyAlertOnce: true,
          showProgress: true,
          progress: current,
          maxProgress: total,
        ),
      ),
    );
  }

  Future<void> indeterminateProgress({
    required int id,
    required String title,
    required String body,
    NotificationChannel channel = NotificationChannel.downloads,
  }) {
    return _plugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          showProgress: true,
          indeterminate: true,
          ongoing: true,
          onlyAlertOnce: true,
        ),
      ),
    );
  }

  Future<void> completeProgress({
    required int id,
    required String title,
    required String body,
  }) {
    return show(
      id: id,
      title: title,
      body: body,
      options: NotificationOptions()..channel = NotificationChannel.downloads,
    );
  }

  Future<void> updateDownloadProgress({
    required int id,
    required String filename,
    required int received,
    required int total,
  }) {
    if (total <= 0) {
      return indeterminateProgress(
        id: id,
        title: filename,
        body: "Downloading...",
      );
    }

    return progress(
      id: id,
      title: filename,
      body: "${(received * 100 / total).toStringAsFixed(1)}%",
      current: received,
      total: total,
    );
  }

  Future<void> bigText({
    int? id,
    required String title,
    required String body,
    required String text,
    String? summary,
    NotificationChannel channel = NotificationChannel.defaultChannel,
  }) {
    return _plugin.show(
      id: id ?? nextId(),
      title: title,
      body: body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          styleInformation: BigTextStyleInformation(
            text,
            contentTitle: title,
            summaryText: summary,
          ),
        ),
      ),
    );
  }

  Future<void> inbox({
    int? id,
    required String title,
    required List<String> lines,
    String? summary,
    NotificationChannel channel = NotificationChannel.defaultChannel,
  }) {
    return _plugin.show(
      id: id ?? nextId(),
      title: title,
      body: summary,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          styleInformation: InboxStyleInformation(
            lines,
            contentTitle: title,
            summaryText: summary,
          ),
        ),
      ),
    );
  }

  Future<void> media({
    required int id,
    required String title,
    required String body,
    AndroidBitmap<Object>? largeIcon,
    List<AndroidNotificationAction> actions = const [],
    bool ongoing = true,
  }) {
    return _plugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          NotificationChannel.media.id,
          NotificationChannel.media.name,
          channelDescription: NotificationChannel.media.description,
          styleInformation: const MediaStyleInformation(),
          largeIcon: largeIcon,
          actions: actions,
          ongoing: ongoing,
          onlyAlertOnce: true,
        ),
      ),
    );
  }

  Future<void> grouped({
    required int id,
    required String groupKey,
    required String title,
    required String body,
    NotificationChannel channel = NotificationChannel.defaultChannel,
  }) {
    return _plugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          groupKey: groupKey,
        ),
      ),
    );
  }

  Future<void> groupedSummary({
    required int id,
    required String groupKey,
    required String title,
    required List<String> lines,
    NotificationChannel channel = NotificationChannel.defaultChannel,
  }) {
    return _plugin.show(
      id: id,
      title: title,
      body: "",
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          groupKey: groupKey,
          setAsGroupSummary: true,
          styleInformation: InboxStyleInformation(lines, contentTitle: title),
        ),
      ),
    );
  }

  Future<void> clearGroup(Iterable<int> ids) async {
    for (final id in ids) {
      await cancel(id);
    }
  }

  // ---------------------------------------------------------------------------
  // Schedule
  // ---------------------------------------------------------------------------

  Future<void> schedule({
    required int id,
    required String title,
    required String body,
    required DateTime dateTime,
    NotificationOptions? options,
  }) {
    final o = options ?? NotificationOptions();

    return _plugin.zonedSchedule(
      id: id,
      title: title,
      body: body,
      scheduledDate: tz.TZDateTime.from(dateTime, tz.local),
      notificationDetails: _details(o),
      payload: encodePayload(o.payload),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  Future<void> scheduleAfter({
    required int id,
    required String title,
    required String body,
    required Duration duration,
    NotificationOptions? options,
  }) {
    return schedule(
      id: id,
      title: title,
      body: body,
      dateTime: DateTime.now().add(duration),
      options: options,
    );
  }

  Future<void> alarm({
    required int id,
    required String title,
    required String body,
    required DateTime dateTime,
    NotificationOptions? options,
  }) {
    return schedule(
      id: id,
      title: title,
      body: body,
      dateTime: dateTime,
      options: options,
    );
  }

  Future<void> periodically({
    required int id,
    required String title,
    required String body,
    required RepeatInterval interval,
    NotificationOptions? options,
    AndroidScheduleMode scheduleMode = AndroidScheduleMode.exactAllowWhileIdle,
  }) {
    final o = options ?? NotificationOptions();
    return _plugin.periodicallyShow(
      id: id,
      title: title,
      body: body,
      repeatInterval: interval,
      notificationDetails: _details(o),
      payload: encodePayload(o.payload),
      androidScheduleMode: scheduleMode,
    );
  }

  Future<void> fullScreen({
    required int id,
    required String title,
    required String body,
    NotificationOptions? options,
  }) {
    final o = options ?? NotificationOptions();
    o.fullScreenIntent = true;

    return show(id: id, title: title, body: body, options: o);
  }

  Future<void> bigPicture({
    required int id,
    required String title,
    required String body,
    required AndroidBitmap<Object> image,
    AndroidBitmap<Object>? largeIcon,
    String? summary,
    NotificationChannel channel = NotificationChannel.defaultChannel,
  }) {
    return _plugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          styleInformation: BigPictureStyleInformation(
            image,
            largeIcon: largeIcon,
            contentTitle: title,
            summaryText: summary,
          ),
        ),
      ),
    );
  }

  Future<void> messaging({
    required int id,
    required Person me,
    required List<Message> messages,
    String? conversationTitle,
    bool groupConversation = true,
    NotificationChannel channel = NotificationChannel.defaultChannel,
  }) {
    return _plugin.show(
      id: id,
      title: conversationTitle,
      body: messages.isEmpty ? "" : messages.last.text,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          category: AndroidNotificationCategory.message,
          styleInformation: MessagingStyleInformation(
            me,
            messages: messages,
            conversationTitle: conversationTitle,
            groupConversation: groupConversation,
          ),
        ),
      ),
    );
  }

  Future<void> mediaPlayback({
    required bool playing,
    required String title,
    required String subtitle,
    AndroidBitmap<Object>? artwork,
  }) {
    return media(
      id: NotificationIds.media,
      title: title,
      body: subtitle,
      ongoing: playing,
      largeIcon: artwork,
      actions: [
        const AndroidNotificationAction("previous", "Previous"),
        AndroidNotificationAction(
          playing ? "pause" : "play",
          playing ? "Pause" : "Play",
          showsUserInterface: false,
        ),
        const AndroidNotificationAction("next", "Next"),
        const AndroidNotificationAction("stop", "Stop"),
      ],
    );
  }

  Future<void> stopMediaPlayback() {
    return cancel(NotificationIds.media);
  }

  Future<void> foregroundService({
    required String title,
    required String body,
    NotificationOptions? options,
  }) {
    final o = options ?? NotificationOptions();
    o.ongoing = true;
    o.autoCancel = false;

    return show(
      id: NotificationIds.foregroundService,
      title: title,
      body: body,
      options: o,
    );
  }

  Future<void> stopForegroundService() {
    return cancel(NotificationIds.foregroundService);
  }

  Future<void> clearDownloads() {
    return cancel(NotificationIds.downloader);
  }

  Future<void> clearMedia() {
    return cancel(NotificationIds.media);
  }

  Future<void> clearUpdater() {
    return cancel(NotificationIds.updater);
  }

  Future<void> clearTorrent() {
    return cancel(NotificationIds.torrent);
  }

  Future<void> clearPlayer() {
    return cancel(NotificationIds.player);
  }

  Future<void> imageFile({
    required int id,
    required String title,
    required String body,
    required String imagePath,
    String? largeIconPath,
  }) {
    return bigPicture(
      id: id,
      title: title,
      body: body,
      image: FilePathAndroidBitmap(imagePath),
      largeIcon: largeIconPath == null
          ? null
          : FilePathAndroidBitmap(largeIconPath),
    );
  }

  Future<void> imageBytes({
    required int id,
    required String title,
    required String body,
    required Uint8List image,
    Uint8List? largeIcon,
  }) {
    return bigPicture(
      id: id,
      title: title,
      body: body,
      image: ByteArrayAndroidBitmap(image),
      largeIcon: largeIcon == null ? null : ByteArrayAndroidBitmap(largeIcon),
    );
  }

  Future<void> test() {
    return show(
      title: "Test Notification",
      body: "Everything is working correctly.",
    );
  }

  NotificationDetails _details(NotificationOptions o) {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        o.channel.id,
        o.channel.name,
        channelDescription: o.channel.description,
        tag: o.tag,
        icon: o.icon,
        largeIcon: o.largeIcon,
        color: o.color,
        priority: o.priority,
        importance: o.importance,
        category: o.category,
        visibility: o.visibility,
        groupKey: o.groupKey,
        setAsGroupSummary: o.groupSummary,
        groupAlertBehavior: o.groupAlertBehavior ?? GroupAlertBehavior.all,
        styleInformation: o.style,
        actions: o.actions,
        autoCancel: o.autoCancel,
        ongoing: o.ongoing,
        onlyAlertOnce: o.onlyAlertOnce,
        silent: o.silent,
        showWhen: o.showWhen,
        when: o.when?.millisecondsSinceEpoch,
        usesChronometer: o.usesChronometer,
        timeoutAfter: o.timeout?.inMilliseconds,
        number: o.number,
        fullScreenIntent: o.fullScreenIntent,
        colorized: o.colorized,
        playSound: o.playSound,
        enableLights: o.enableLights,
        enableVibration: o.enableVibration,
        ticker: o.ticker,
        channelAction:
            o.channelAction ??
            AndroidNotificationChannelAction.createIfNotExists,
      ),
      iOS: const DarwinNotificationDetails(),
      macOS: const DarwinNotificationDetails(),
      linux: const LinuxNotificationDetails(),
    );
  }
}

class NotificationIds {
  NotificationIds._();

  static const media = 1;
  static const updater = 2;
  static const downloader = 10;
  static const torrent = 20;
  static const sync = 30;
  static const player = 40;
  static const foregroundService = 100;
  static const reminder = 200;
}

enum NotificationChannel {
  defaultChannel(
    id: "default",
    name: "Default",
    description: "General notifications",
  ),
  downloads(id: "downloads", name: "Downloads", description: "Downloads"),
  media(id: "media", name: "Media", description: "Media Playback"),
  updates(id: "updates", name: "Updates", description: "Application Updates"),
  background(
    id: "background",
    name: "Background",
    description: "Background Tasks",
    playSound: false,
    importance: Importance.low,
  ),
  silent(
    id: "silent",
    name: "Silent",
    description: "Silent Notifications",
    playSound: false,
    importance: Importance.low,
    showBadge: false,
  );

  const NotificationChannel({
    required this.id,
    required this.name,
    required this.description,
    this.importance = Importance.high,
    this.playSound = true,
    this.showBadge = true,
  });

  final String id;
  final String name;
  final String description;

  final Importance importance;
  final bool playSound;
  final bool showBadge;

  final bool enableLights = true;
  final bool enableVibration = true;
}

class NotificationOptions {
  NotificationOptions();

  NotificationChannel channel = NotificationChannel.defaultChannel;

  Object? payload;

  String? tag;

  String? icon;

  AndroidBitmap<Object>? largeIcon;

  Color? color;

  Priority priority = Priority.high;

  Importance importance = Importance.high;

  AndroidNotificationCategory? category;

  NotificationVisibility? visibility;

  String? groupKey;

  bool groupSummary = false;

  GroupAlertBehavior? groupAlertBehavior;

  StyleInformation? style;

  List<AndroidNotificationAction> actions = [];

  bool autoCancel = true;

  bool ongoing = false;

  bool onlyAlertOnce = false;

  bool silent = false;

  bool showWhen = true;

  DateTime? when;

  bool usesChronometer = false;

  Duration? timeout;

  int? number;

  bool fullScreenIntent = false;

  bool colorized = false;

  bool playSound = true;

  bool enableLights = true;

  bool enableVibration = true;

  AndroidNotificationChannelAction? channelAction;

  String? ticker;
}

import 'Core/Cast/CastService.dart';
import 'Screen/Together/TogetherController.dart';
import 'dart:async';
import 'dart:io';

import 'Api/Discord/BaseDiscordRPC.dart';
import 'Api/Discord/Desktop/DesktopRPC.dart';
import 'Api/Discord/DiscordPresenceController.dart';
import 'Api/Discord/Mobile/MobileRPC.dart';
import 'Api/Services/Anilist/Auth.dart';
import 'Api/Services/MyAnimeList/Auth.dart';
import 'Api/Services/Simkl/Auth.dart';
import 'Api/Services/Kitsu/Auth.dart';
import 'Api/Services/MangaBaka/Auth.dart';
import 'Api/Services/MangaUpdates/Auth.dart';
import 'Api/Updater/AppUpdater.dart';
import 'Core/Offline/NetStatus.dart';
import 'Core/Security/AppLock.dart';
import 'Core/Offline/OfflineMode.dart';
import 'Core/Offline/PendingWrites.dart';
import 'Core/Downloads/DownloadEngine.dart';
import 'Core/Analytics/AnalyticsManager.dart';
import 'Screen/Detail/Comments/Data/CommentAlerts.dart';
import 'Screen/Detail/Comments/Data/CommentsApi.dart';
import 'Core/NetworkManager/NetworkManager.dart';
import 'Core/NotificationManager/NotificationManager.dart';
import 'Core/Services/ActivityAlerts.dart';
import 'Core/SourceAlerts/SourceAlerts.dart';
import 'Core/SourceAlerts/SourceSubscriptions.dart';
import 'Core/Services/MediaServiceController.dart';
import 'Screen/Settings/Sync/Data/SyncController.dart';
import 'Core/ThemeManager/CardStyleController.dart';
import 'Core/ThemeManager/LocaleController.dart';
import 'Core/ThemeManager/ThemeController.dart';
import 'Utils/Functions/RefreshController.dart';
import 'Core/Preferences/PrefManager.dart';
import 'Screen/Player/Engine/PlayerSettings.dart';
import 'Screen/Reader/Engine/ReaderSettings.dart';
import 'Core/SettingsSync/GithubAuth.dart';
import 'Core/SettingsSync/SettingsSync.dart';
import 'Core/State/State.dart';
import 'Screen/Detail/Watch/Data/Media/MediaRecord.dart';
import 'Screen/Detail/Watch/Data/Media/ResumeStore.dart';

/// Single registration point for every long-lived controller.
///
/// Eager (`put`): infrastructure needed immediately at startup.
/// Lazy (`lazyPut`): built on first `find<T>()`.
class DI {
  static void init() {
    SettingsSync.titleHooks.addAll([MediaRecords.reload, ResumeStore.reload]);
    SettingsSync.secretHooks.add(() {
      for (final service in find<MediaServiceController>().services) {
        final auth = service.auth;
        if (auth != null && auth.isLoggedIn) unawaited(auth.refreshUser());
      }
    });
    PrefManager.customReloaders.addAll({
      'PLAYER/playerSettings': PlayerPrefs.reload,
      'READER/readerSettings': ReaderPrefs.reload,
    });
    PrefManager.restoreHooks.addAll([
      PlayerPrefs.reload,
      ReaderPrefs.reload,
      MediaRecords.reload,
      ResumeStore.reload,
      () => tryFind<PendingWrites>()?.reload(),
      () => tryFind<DownloadEngine>()?.reload(),
      () => tryFind<NetworkManager>()?.cookieManager.reload(),
    ]);
    // Eager — used during startup / must observe every error.
    put(NetworkManager());
    put(AnalyticsManager());
    unawaited(put(NotificationManager(), permanent: true).initialize());

    // Lazy — resolved on demand.
    lazyPut<AppLock>(AppLock.new);
    lazyPut<ThemeController>(ThemeController.new);
    lazyPut<CardStyleController>(CardStyleController.new);
    lazyPut<LocaleController>(LocaleController.new);
    lazyPut<MediaServiceController>(MediaServiceController.new);
    lazyPut<SyncController>(SyncController.new);
    lazyPut<SettingsSync>(SettingsSync.new);
    lazyPut<GithubAuth>(GithubAuth.new);
    lazyPut<TogetherController>(TogetherController.new);
    lazyPut<CastService>(CastService.new);
    lazyPut<AnilistAuth>(AnilistAuth.new);
    lazyPut<MalAuth>(MalAuth.new);
    lazyPut<SimklAuth>(SimklAuth.new);
    lazyPut<KitsuAuth>(KitsuAuth.new);
    lazyPut<MangaBakaAuth>(MangaBakaAuth.new);
    lazyPut<MangaUpdatesAuth>(MangaUpdatesAuth.new);
    lazyPut<CommentsApi>(() => CommentsApi(find<AnilistAuth>().token));
    lazyPut<CommentAlerts>(CommentAlerts.new);
    lazyPut<RefreshController>(RefreshController.new);
    lazyPut<ActivityAlerts>(ActivityAlerts.new);
    lazyPut<SourceSubscriptions>(SourceSubscriptions.new);
    lazyPut<SourceAlerts>(SourceAlerts.new);
    lazyPut<AppUpdater>(AppUpdater.new);
    lazyPut<NetStatus>(NetStatus.new);
    lazyPut<PendingWrites>(PendingWrites.new);
    lazyPut<OfflineMode>(OfflineMode.new);
    lazyPut<DownloadEngine>(DownloadEngine.new);
    lazyPut<DiscordPresenceController>(DiscordPresenceController.new);
    lazyPut<BaseDiscordRPC>(
      () => Platform.isAndroid || Platform.isIOS ? MobileRPC() : DesktopRPC(),
    );
  }
}

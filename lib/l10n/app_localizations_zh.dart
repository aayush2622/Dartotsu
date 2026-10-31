// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => '追番追漫的\n全新最佳 App';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get mangaBaka => 'MangaBaka';

  @override
  String get mangaUpdates => 'MangaUpdates';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => '加载更多';

  @override
  String get login => '登录';

  @override
  String get continueAsGuest => '以游客身份继续';

  @override
  String get getStarted => '开始使用';

  @override
  String get loginWithToken => '使用 Token 登录';

  @override
  String get pasteTokenHint => '粘贴你的访问令牌';

  @override
  String loginTo(String service) {
    return '登录 $service';
  }

  @override
  String get settings => '设置';

  @override
  String get account => '账号';

  @override
  String get about => '关于';

  @override
  String get language => '语言';

  @override
  String get animationSpeed => '动画效果';

  @override
  String get animationSpeedDesc => '应用内转场和入场动画的速度';

  @override
  String get animationSpeedOff => '关闭';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '扩展',
      one: '扩展',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => '未知源';

  @override
  String get install => '安装';

  @override
  String get update => '更新';

  @override
  String get uninstall => '卸载';

  @override
  String get updateInstallCancelled =>
      '安装已取消。如果安卓提示与已安装的应用冲突，说明签名不一致：请先卸载当前版本，再安装更新';

  @override
  String updateInstallFailed(String error) {
    return '更新失败：$error';
  }

  @override
  String get appLock => '应用锁';

  @override
  String get appLockDesc => '打开应用或隔一段时间回来时，需要输入密码';

  @override
  String get appLockBiometric => 'Unlock with biometrics';

  @override
  String get appLockBiometricDesc =>
      'Use your fingerprint or face instead of typing the passcode';

  @override
  String get appLockBiometricReason => 'Unlock Dartotsu';

  @override
  String get appLockDelay => 'Lock when idle';

  @override
  String get appLockDelayAlways => 'Always';

  @override
  String get appLockDelayNever => 'Never';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return 'After $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Use biometrics';

  @override
  String get appLockUnlock => '输入你的密码';

  @override
  String get appLockWrong => '密码错误';

  @override
  String appLockWait(String seconds) {
    return '尝试次数太多，请等 $seconds 秒';
  }

  @override
  String get appLockNew => '设置一个密码';

  @override
  String get appLockNewHint => '4 到 8 位数字';

  @override
  String get appLockConfirm => '再输入一次';

  @override
  String get appLockMismatch => '两次输入的密码不一致';

  @override
  String get appLockOn => '已设置密码';

  @override
  String get appLockRemoveTitle => '输入密码以关闭应用锁';

  @override
  String get installFailed => '安装失败';

  @override
  String get updateFailed => '更新失败';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count updates available',
      one: '1 update available',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Update all';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done of $total extensions updated';
  }

  @override
  String get updateConflictTitle => 'Update not installed';

  @override
  String updateConflictBody(String names) {
    return '$names could not be installed over the existing version. This usually means the installed copy was signed differently. Uninstall it and install the new version?';
  }

  @override
  String get updateConflictAction => 'Uninstall and reinstall';

  @override
  String get noSourceSettings => '该源没有任何设置';

  @override
  String get addPluginRepository => '添加插件仓库';

  @override
  String get pluginIndexUrlHint => '插件索引 URL';

  @override
  String get addRepository => '添加仓库';

  @override
  String get pluginRepoUpdated => '插件仓库已更新';

  @override
  String get pluginRepoUpdateFailed => '刷新插件仓库失败';

  @override
  String get ok => '好的';

  @override
  String get cancel => '取消';

  @override
  String get yes => '是';

  @override
  String get no => '否';

  @override
  String get save => '保存';

  @override
  String get reset => '重置';

  @override
  String get clear => '清除';

  @override
  String get test => '测试';

  @override
  String get testing => '测试中…';

  @override
  String get resolving => '解析中…';

  @override
  String get none => '无';

  @override
  String get selectMediaService => '选择媒体服务';

  @override
  String get pickColor => '选个颜色';

  @override
  String get colorPickerCustom => '自定义';

  @override
  String get colorPickerTransparent => '透明';

  @override
  String get ltr => '从左到右';

  @override
  String get searchSettings => '搜索设置';

  @override
  String nothingMatches(String query) {
    return '没有匹配“$query”的内容';
  }

  @override
  String searchCategory(String category) {
    return '搜索$category';
  }

  @override
  String get settingsAppearance => '外观';

  @override
  String get settingsAppearanceDesc => '主题、颜色、玻璃模式';

  @override
  String get settingsGeneral => '通用';

  @override
  String get settingsGeneralDesc => '语言和行为';

  @override
  String get settingsNetwork => '网络';

  @override
  String get settingsNetworkDesc => 'User-Agent、证书、DNS 和代理';

  @override
  String get settingsAccountDesc => '追踪服务与登录';

  @override
  String get settingsUpdates => '更新';

  @override
  String get amoledBlack => 'AMOLED 纯黑';

  @override
  String get amoledBlackDesc => '深色模式下使用纯黑背景';

  @override
  String get glassMode => '玻璃模式';

  @override
  String get glassModeDesc => '在你的片库封面上叠加磨砂质感';

  @override
  String get shelfFrame => '区块边框';

  @override
  String get shelfFrameDesc => '在每个栏目后面显示卡片，或让内容直接铺在页面上';

  @override
  String get settingsExtensionsDesc => '源管理器、仓库和扩展选项';

  @override
  String get settingsAddons => '附加组件';

  @override
  String get customPath => '自定义存储路径';

  @override
  String get customPathDesc => '应用数据存放的位置。长按可重置';

  @override
  String get selectDirectory => '选择目录';

  @override
  String get differentCacheManager => '备用图片缓存';

  @override
  String get differentCacheManagerDesc => '使用另一个缓存管理器来缓存图片';

  @override
  String get settingsSync => 'Sync settings';

  @override
  String get settingsSyncDesc =>
      'Keep your settings the same on every device. They are stored in a private gist in your GitHub account';

  @override
  String get settingsSyncSwitch => 'Sync on change';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Sign in with GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Settings are stored in a private gist in your account';

  @override
  String get settingsSyncToken => 'Use a personal access token';

  @override
  String get settingsSyncTokenDesc =>
      'Create one at github.com/settings/tokens with only the gist permission';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Signed in as $user';
  }

  @override
  String get settingsSyncSignOut => 'Sign out';

  @override
  String settingsSyncCode(Object code) {
    return 'Enter $code on GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'The GitHub page opened in your browser. Tap to copy the code, or tap and hold to cancel.';

  @override
  String get settingsSyncSignInFailed => 'Could not sign in to GitHub';

  @override
  String get settingsSyncOn => 'On';

  @override
  String get settingsSyncNoneChanged =>
      'You haven\'t changed any of these yet, so there is nothing to sync.';

  @override
  String get settingsSyncChangedOnly =>
      'Only settings you have changed are stored. Everything else uses its default on every device. The cloud icon shows what is already on the server.';

  @override
  String get settingsSyncOffCategory =>
      'Not syncing. These stay on this device and the server copy is left as it is.';

  @override
  String get settingsSyncCatOther => 'Watch, read and services';

  @override
  String get settingsSyncTitles => 'Watch progress and titles';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records titles and $resume resume entries on the server';
  }

  @override
  String get settingsSyncTitlesNone => 'Nothing uploaded yet';

  @override
  String get settingsSyncTitlesNote =>
      'Watch and read positions, the resume shelf, bookmarks, highlights and per-title options. Source matches and streams stay on each device because they depend on your extensions. Titles upload at most every 45 seconds.';

  @override
  String get settingsSyncConnect => 'Not connected';

  @override
  String get settingsSyncConnectDesc =>
      'Sign in with GitHub to keep your settings the same on every device.';

  @override
  String get settingsSyncFailedTitle => 'Sync failed';

  @override
  String get settingsSyncPaused => 'Paused';

  @override
  String get settingsSyncPausedDesc =>
      'Nothing is uploaded or downloaded while this is off.';

  @override
  String get settingsSyncUpToDate => 'Up to date';

  @override
  String get settingsSyncRetry => 'Retry';

  @override
  String get settingsSyncAccount => 'GitHub account';

  @override
  String get settingsSyncAccountDesc =>
      'Your data goes to a private gist in your own account.';

  @override
  String get settingsSyncWaiting => 'Waiting for you to approve on GitHub';

  @override
  String get settingsSyncCopyCode => 'Tap the code to copy it';

  @override
  String get settingsSyncCancel => 'Cancel';

  @override
  String get settingsSyncStatSettings => 'Settings';

  @override
  String get settingsSyncStatTitles => 'Titles';

  @override
  String get settingsSyncStatShelf => 'Resume';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Uploaded $time from $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changed',
      one: '1 changed',
      zero: 'Nothing changed yet',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Accounts and passwords';

  @override
  String get settingsSyncSecretsDesc =>
      'Sync your sign-ins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API keys and app lock between your devices. They are encrypted with a passphrase that stays on your devices, so GitHub never sees them.';

  @override
  String get settingsSyncSecretsOn => 'Accounts are synced and encrypted';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Signing out on one device does not sign you out on the others.';

  @override
  String get settingsSyncSecretsBroken =>
      'The passphrase no longer matches the one on the server. Enter it again to keep syncing accounts.';

  @override
  String get settingsSyncPassphraseSet => 'Set a passphrase';

  @override
  String get settingsSyncPassphraseEnter => 'Enter your passphrase';

  @override
  String get settingsSyncPassphraseField => 'Passphrase';

  @override
  String get settingsSyncPassphraseConfirm => 'Repeat the passphrase';

  @override
  String get settingsSyncPassphraseNew =>
      'Choose a passphrase of at least 6 characters. It is not stored anywhere but your devices and cannot be recovered. If you forget it, delete the server copy and start again.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Enter the passphrase you chose on your other device. Accounts on this device will be replaced by the synced ones.';

  @override
  String get settingsSyncPassphraseWrong => 'Wrong passphrase';

  @override
  String get settingsSyncPassphraseMismatch => 'The passphrases do not match';

  @override
  String get settingsSyncPassphraseShort => 'Use at least 6 characters';

  @override
  String get settingsSyncSecretsStop => 'Stop syncing accounts';

  @override
  String get settingsSyncSecretsDelete => 'Delete from GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'This removes the encrypted accounts file from your gist. Other devices keep their sign-ins and can set a new passphrase.';

  @override
  String get settingsSyncWhat => 'What to sync';

  @override
  String get settingsSyncServer => 'On the server';

  @override
  String get settingsSyncServerEmpty => 'Nothing uploaded yet';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count settings, uploaded $time from $device';
  }

  @override
  String get settingsSyncThisDevice => 'this device';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count settings on the server',
      one: '1 setting on the server',
      zero: 'Nothing on the server',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sync now';

  @override
  String get settingsSyncRunning => 'Syncing…';

  @override
  String get settingsSyncNever => 'Not synced yet';

  @override
  String settingsSyncLast(Object time) {
    return 'Last synced $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Sync failed: $error';
  }

  @override
  String get settingsSyncScope =>
      'Only settings that work the same everywhere are synced. Accounts, tokens, folders, extensions, notifications, Discord, updates and window size stay on each device.';

  @override
  String get backupAndRestore => '备份与恢复';

  @override
  String get backupAndRestoreDesc => '保存或载入你的偏好设置';

  @override
  String get backup => '备份';

  @override
  String get restore => '恢复';

  @override
  String get loadExtensionsIcon => '加载扩展图标';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc => '在扩展列表中显示源图标';

  @override
  String get sectionStorage => '存储';

  @override
  String get sectionManagers => '管理器';

  @override
  String get sectionOptions => '选项';

  @override
  String get backupTabBackup => '备份';

  @override
  String get backupTabRestore => '恢复';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories 个分类中的 $keys 项设置';
  }

  @override
  String backupLastBackup(Object time) {
    return '上次备份：$time';
  }

  @override
  String get backupNever => '还没有备份';

  @override
  String get backupSelectAll => '全选';

  @override
  String get backupClearAll => '清除';

  @override
  String backupKeys(Object count) {
    return '$count 项设置';
  }

  @override
  String get backupPasswordRequired => 'Password (required for account data)';

  @override
  String get backupProtectedNeedsPassword =>
      'Set a password to back up account data, or untick it';

  @override
  String get backupProtectedSkipped =>
      'This backup has no password, so its account data was skipped';

  @override
  String get backupPassword => '密码（可选）';

  @override
  String get backupPasswordHint => '留空则使用默认密码';

  @override
  String get backupSensitive => '包含登录令牌，请妥善保管此文件';

  @override
  String get backupCreate => '创建备份';

  @override
  String backupSaved(Object name) {
    return '备份已保存到 $name';
  }

  @override
  String backupFailed(Object error) {
    return '备份失败：$error';
  }

  @override
  String get backupPickFile => '选择备份文件';

  @override
  String get backupPickFileDesc => '选择 Dartotsu 生成的 .json 文件';

  @override
  String get backupChooseAnother => '换一个文件';

  @override
  String get backupCreatedAt => '创建时间';

  @override
  String get backupAppVersion => '应用版本';

  @override
  String get backupDevice => '设备';

  @override
  String get backupAccounts => '账号';

  @override
  String get backupSize => '大小';

  @override
  String get backupEncrypted => '已设密码';

  @override
  String get backupUnlock => '解锁';

  @override
  String get backupWrongPassword => '无法读取此文件，请检查密码';

  @override
  String get backupRestoreSelected => '恢复所选项';

  @override
  String backupRestoreConfirm(Object count) {
    return '要恢复 $count 项设置吗？这些分类中的现有值会被覆盖。';
  }

  @override
  String get backupRestored => '已恢复。重启应用后全部生效';

  @override
  String backupRestoreFailed(Object error) {
    return '恢复失败：$error';
  }

  @override
  String get backupSelectOne => '请至少选择一个分类';

  @override
  String get backupCatTheme => '外观';

  @override
  String get backupCatThemeDesc => '主题、颜色、玻璃效果、字体和卡片样式';

  @override
  String get backupCatCommon => '通用';

  @override
  String get backupCatCommonDesc => '语言、存储、网络和扩展选项';

  @override
  String get backupCatPlayer => '播放器';

  @override
  String get backupCatPlayerDesc => '播放器偏好设置';

  @override
  String get backupCatReader => '阅读器';

  @override
  String get backupCatReaderDesc => '阅读器偏好设置';

  @override
  String get backupCatProtected => '账号';

  @override
  String get backupCatProtectedDesc => '登录令牌和登录数据';

  @override
  String get backupCatOther => '服务与信息流';

  @override
  String get backupCatOtherDesc => '信息流布局、列表和服务选项';

  @override
  String get logFile => '日志文件';

  @override
  String get logFileDesc => '分享应用日志，或在 Linux 上复制日志路径';

  @override
  String get logDelete => 'Delete log files';

  @override
  String get logDeleteDesc => 'Clear the saved app logs to free up space';

  @override
  String logDeleted(String size) {
    return 'Deleted $size of logs';
  }

  @override
  String get missingSequel => 'Missing Sequel';

  @override
  String get rising => 'Rising';

  @override
  String get stacks => 'Stacks';

  @override
  String get stacksAll => 'All';

  @override
  String get stacksFeatured => 'Featured';

  @override
  String get stacksMine => 'Yours';

  @override
  String get stacksSaved => 'Saved';

  @override
  String get stacksFollowing => 'Following';

  @override
  String get stacksEmpty => 'No stacks here yet';

  @override
  String get stacksSignIn => 'Sign in to MangaBaka to see your stacks';

  @override
  String get stacksScopeNeeded =>
      'Your stacks need a new permission. Sign in to MangaBaka again to allow it.';

  @override
  String get stacksSignInAgain => 'Sign in again';

  @override
  String get stacksCouldntLoad => 'Couldn\'t load the stacks';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count series',
      one: '1 series',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saves',
      one: '1 save',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'by $name';
  }

  @override
  String get stackSpoilers => 'Spoilers';

  @override
  String get stackEmptyEntries => 'This stack is empty';

  @override
  String get stackSave => 'Save stack';

  @override
  String get stackUnsave => 'Remove from saved';

  @override
  String get stackSavedToast => 'Saved to your stacks';

  @override
  String get stackRemovedToast => 'Removed from your saved stacks';

  @override
  String userStacks(String name) {
    return 'Stacks by $name';
  }

  @override
  String get newsTitle => 'News';

  @override
  String get newsEmpty => 'No news right now';

  @override
  String get newsCouldntLoad => 'Couldn\'t load the news';

  @override
  String get logFileCopied => '已复制日志路径';

  @override
  String get donateSheetTitle => '喜欢 Dartotsu 吗？';

  @override
  String get donateSheetMessage => 'Dartotsu 由一个人开发和维护。如果它对你有帮助，欢迎支持一下开发。';

  @override
  String get donateLater => '以后再说';

  @override
  String get glassBackground => '玻璃背景';

  @override
  String get glassBackgroundDesc => '默认使用你的个人资料横幅，除非你设置了图片链接';

  @override
  String get glassBackgroundHint => '图片链接（留空则使用你的横幅）';

  @override
  String get followCover => '跟随封面';

  @override
  String get followCoverDesc => '颜色跟随背景，详情页则跟随封面';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => '卡片样式';

  @override
  String get cardStyleDesc => '标题位置、大小、进度和角标';

  @override
  String get customFont => '字体';

  @override
  String get customFontDesc => '默认、设备上的字体文件，或 Google Fonts';

  @override
  String get customFontError => '无法加载该字体文件';

  @override
  String get googleFontError => '无法下载该字体';

  @override
  String get yourFonts => '你的字体';

  @override
  String get addFontFile => '添加字体文件…';

  @override
  String get browseGoogleFonts => '浏览 Google Fonts…';

  @override
  String get searchGoogleFonts => '搜索 Google Fonts';

  @override
  String get defaultFont => '默认';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => '跟随系统的动态取色';

  @override
  String get jsonTheme => '自定义主题文件';

  @override
  String get jsonThemeDesc =>
      '读取 ~/.config/dartotsu/theme.json 的实时配色（自定义脚本或你自己改）';

  @override
  String get themeMode => '主题模式';

  @override
  String get mode => '模式';

  @override
  String get trackingService => '追踪服务';

  @override
  String get signOut => '退出登录';

  @override
  String get signIn => '登录';

  @override
  String get notSignedIn => '未登录';

  @override
  String signOutOf(String service) {
    return '要退出 $service 吗？';
  }

  @override
  String get checkForUpdates => '检查更新';

  @override
  String get checkForUpdatesDesc => 'GitHub 有新版本时通知我';

  @override
  String get updateChannel => '更新渠道';

  @override
  String get channel => '渠道';

  @override
  String get stable => '稳定版';

  @override
  String get preRelease => '预览版';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => '立即检查';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => '默认';

  @override
  String currentlyUsing(String value) {
    return '当前：$value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => '默认（Cloudflare）';

  @override
  String get proxy => '代理';

  @override
  String get proxyProtocol => '类型';

  @override
  String get proxyHost => '主机';

  @override
  String get proxyPort => '端口';

  @override
  String get proxyUsername => '用户名';

  @override
  String get proxyPassword => '密码';

  @override
  String get optional => '可选';

  @override
  String get clearCookies => '清除 Cookie';

  @override
  String get clearCookiesDesc => '删除所有已存的 Cookie';

  @override
  String notImplementedArea(String area) {
    return '$area——即将推出';
  }

  @override
  String notImplementedService(String service) {
    return '$service 暂不支持此功能。';
  }

  @override
  String get couldNotLoadResults => '无法加载结果';

  @override
  String get updateCheckFailed => '无法检查更新';

  @override
  String get highRefreshRate => '高刷新率';

  @override
  String get highRefreshRateDesc => '使用屏幕支持的最高刷新率';

  @override
  String get imageSave => '保存图片';

  @override
  String imageSavedTo(String path) {
    return '已保存到 $path';
  }

  @override
  String get imageActionFailed => '无法下载图片';

  @override
  String get imageTitleCover => '封面';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => '横幅';

  @override
  String get imageTitleAvatar => '头像';

  @override
  String get verifyTls => '验证证书';

  @override
  String get verifyTlsDesc => '拒绝 HTTPS 证书无效的服务器。仅在源使用自签名证书时才关闭';

  @override
  String get clearCookiesConfirm => '要删除所有已存的 Cookie 吗？这可能会让你在部分源上退出登录。';

  @override
  String get version => '版本';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => '源码、问题反馈和发布版本';

  @override
  String get discordDesc => '社区与支持';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => '支持开发';

  @override
  String get contributors => '贡献者';

  @override
  String get contributorsDesc => '打造 Dartotsu 的人们';

  @override
  String get contributorsLoadFailed => '无法加载贡献者';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => '基于 Dartotsu 构建的项目';

  @override
  String get forksEmpty => '没有找到复刻版';

  @override
  String get sectionColors => '颜色';

  @override
  String get sectionDisplay => '显示';

  @override
  String get sectionStyle => '样式';

  @override
  String get sectionCommunity => '社区';

  @override
  String get sectionAppInfo => '应用信息';

  @override
  String get sectionRequests => '请求';

  @override
  String get sectionDnsProxy => 'DNS 与代理';

  @override
  String get onboardingBack => '返回';

  @override
  String get onboardingNext => '下一步';

  @override
  String get onboardingSkip => '跳过';

  @override
  String get onboardingPaletteTitle => '打造你的专属风格';

  @override
  String get onboardingPaletteBody => '选个配色，从卡片到播放器，所有强调色都会跟着变。';

  @override
  String get themeModeAuto => '自动';

  @override
  String get themeModeLight => '浅色';

  @override
  String get themeModeDark => '深色';

  @override
  String get onboardingSyncTitle => '同步你的片库';

  @override
  String get onboardingSyncBody => '用 AniList 登录，带上你的列表、进度和评分。也可以先跳过，以游客身份逛逛。';

  @override
  String get onboardingOpenLinks => '用 Dartotsu 打开 AniList 和仓库链接';

  @override
  String get onboardingPermsTitle => '权限';

  @override
  String get onboardingPermsBody => '现在就允许，下载、更新和提醒就不会被打断。之后也可以在系统设置里修改。';

  @override
  String get permNotifications => '通知';

  @override
  String get permNotificationsDesc => '下载进度、新剧集和回复';

  @override
  String get permStorage => '所有文件访问权限';

  @override
  String get permStorageDesc => '把下载内容保存到公共的 Dartotsu 文件夹';

  @override
  String get permInstall => '安装更新';

  @override
  String get permInstallDesc => '允许 Dartotsu 自行安装应用更新';

  @override
  String get permBattery => '不受限制的电池使用';

  @override
  String get permBatteryDesc => '让大文件下载能在后台持续运行';

  @override
  String get permGrant => '允许';

  @override
  String get linkOpenInApp => '用 Dartotsu 打开链接';

  @override
  String get linkOpenInAppDesc => '让 AniList 和仓库链接直接打开应用';

  @override
  String get reviewsTitle => '评论';

  @override
  String get reviewsEmpty => '还没有评论';

  @override
  String get reviewsFailed => '无法加载评论';

  @override
  String get reviewHelpfulQuestion => '这条评论有帮助吗？';

  @override
  String get reviewVoteFailed => '无法保存你的投票';

  @override
  String reviewHelpful(int n, int total) {
    return '$total 人中有 $n 人觉得有帮助';
  }

  @override
  String get calendarTitle => '播出时间表';

  @override
  String get calendarToday => '今天';

  @override
  String get calendarEmpty => '这天没有节目播出';

  @override
  String get calendarFailed => '无法加载时间表';

  @override
  String calendarChapter(int n) {
    return 'Chapter $n';
  }

  @override
  String get calendarExpected => 'Expected';

  @override
  String get castReceiverFailed => 'The Chromecast did not start its player';

  @override
  String get castPlaybackFailed => 'The device could not play this stream';

  @override
  String get shortcutNothingToContinue => 'Nothing to continue yet';

  @override
  String shortcutNoCalendar(String service) {
    return '$service has no calendar';
  }

  @override
  String calendarEpisode(int n) {
    return '第 $n 集';
  }

  @override
  String get shareAnalytics => '分享匿名使用数据';

  @override
  String get shareAnalyticsDesc => '匿名的用户数量和崩溃报告，不含账号或个人数据';

  @override
  String get linkOpenAnilist => '用 Dartotsu 打开 AniList 链接';

  @override
  String get linkOpenAnilistDesc => '开启链接处理，让 anilist.co 的链接直接打开应用';

  @override
  String get linkSettingsFailed => '无法打开系统设置';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      '在你的 Discord 个人资料上显示你在做什么。需要你的 Discord Token。';

  @override
  String get discordRichPresenceDesktopDesc =>
      '在你的 Discord 个人资料上显示你在做什么。需要 Discord 桌面端正在运行。';

  @override
  String get discordBrowsing => '显示浏览动态';

  @override
  String get discordBrowsingDesc => '除了你在看或在读的内容，也显示你正在浏览的标签页、页面或个人资料。';

  @override
  String get discordLookHeader => '状态外观';

  @override
  String get discordActivityType => '活动类型';

  @override
  String get discordActivityTypeDesc =>
      'Discord 的措辞方式：“正在观看…”或“正在玩…”。自动模式下，动画显示“正在观看”，其余显示“正在玩”。';

  @override
  String get discordWatching => '正在观看';

  @override
  String get discordPlaying => '正在玩';

  @override
  String get discordCovers => '显示封面';

  @override
  String get discordCoversDesc => '在卡片上显示封面图和 Dartotsu 图标。';

  @override
  String get discordTimer => '显示计时器';

  @override
  String get discordTimerDesc => '在标题下方显示已用或剩余时间。';

  @override
  String get discordButtons => '显示按钮';

  @override
  String get discordButtonsDesc => '“查看动画 / 漫画”和“打开 Dartotsu”按钮。';

  @override
  String get discordHideTitles => '隐藏标题';

  @override
  String get discordHideTitlesDesc =>
      '把动画和漫画的名称（及其封面和链接）替换成“Something private”。';

  @override
  String get discordConnectionHeader => '连接';

  @override
  String get listSearchHint => '搜索此列表';

  @override
  String get listSort => '排序';

  @override
  String get listFilter => '筛选';

  @override
  String get listRandom => '随机作品';

  @override
  String get listReverse => '倒序';

  @override
  String get listSortDefault => '列表顺序';

  @override
  String get listSortScore => '你的评分';

  @override
  String get listSortTitle => '标题';

  @override
  String get listSortUpdated => '最近更新';

  @override
  String get listSortProgress => '进度';

  @override
  String get listSortReleased => '发布日期';

  @override
  String get listSortAverage => '平均评分';

  @override
  String get listFilterFormat => '格式';

  @override
  String get listFilterStatus => '状态';

  @override
  String get listFilterGenres => '类型';

  @override
  String get listFilterClear => '清除筛选';

  @override
  String get listNoMatches => '此列表中没有匹配的内容';

  @override
  String get discordLogin => '登录 Discord';

  @override
  String get discordToken => 'Discord Token';

  @override
  String get discordTokenSaved => '已保存。点按可替换，长按可删除。';

  @override
  String get discordTokenNotSet => '未设置。点按添加。';

  @override
  String get discordTokenSavedSnack => '已保存 Discord Token';

  @override
  String get discordTokenRemovedSnack => '已删除 Discord Token';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => '已开启 · 点按更改外观';

  @override
  String get discordRichPresenceRowOff => '在你的 Discord 个人资料上显示你在做什么';

  @override
  String get loginCancelled => '登录已取消';

  @override
  String get invalidToken => '无效的 Token';

  @override
  String loginFailed(String error) {
    return '登录失败：$error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList 登录失败';

  @override
  String get kitsuLoginFailed => 'Kitsu 登录失败，请检查邮箱和密码。';

  @override
  String get kitsuLoginTitle => '登录 Kitsu';

  @override
  String get emailOrUsername => '邮箱或用户名';

  @override
  String get password => '密码';

  @override
  String get kitsuProfile => 'Kitsu 个人资料';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka 登录失败';

  @override
  String get mangaBakaProfile => 'MangaBaka 个人资料';

  @override
  String get refreshFromMangaBaka => '从 MangaBaka 刷新';

  @override
  String get mangaUpdatesLoginTitle => 'Sign in to MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates profile';

  @override
  String get mangaUpdatesAnimeStart => 'Anime adaptation starts';

  @override
  String get mangaUpdatesAnimeEnd => 'Anime adaptation ends';

  @override
  String get refreshFromMangaUpdates => 'Refresh from MangaUpdates';

  @override
  String get usernameOnly => 'Username';

  @override
  String get releases => 'Releases';

  @override
  String get artistsLabel => '作画';

  @override
  String get authorsLabel => '作者';

  @override
  String get publishersLabel => '出版社';

  @override
  String get licensedLabel => '已授权';

  @override
  String get contentRatingLabel => '内容分级';

  @override
  String get yesLabel => '是';

  @override
  String get noLabel => '否';

  @override
  String get ratingSteps => '评分档位';

  @override
  String get hideNsfw => '隐藏 NSFW';

  @override
  String get hideNsfwDesc => '在信息流和搜索中隐藏成人作品，并把你自己的成人条目放进“隐藏媒体”。';

  @override
  String get kitsuAccountOptions => 'Kitsu 账号选项';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka 账号选项';

  @override
  String get couldNotUpdateKitsuSettings => '无法更新你的 Kitsu 设置';

  @override
  String get titleCanonical => '规范名';

  @override
  String get titleRomanized => '罗马音';

  @override
  String get titleLocalized => '本地化';

  @override
  String get ratingSystem => '评分制';

  @override
  String get ratingSimple => '简单（3 种表情）';

  @override
  String get ratingRegular => '常规（5 星）';

  @override
  String get ratingAdvanced => '高级（10 分）';

  @override
  String get contentFilter => '内容过滤';

  @override
  String get contentSfw => '仅限安全内容';

  @override
  String get contentSometimes => '搜索中显示成人内容';

  @override
  String get contentEverywhere => '所有地方都显示成人内容';

  @override
  String get shareToGlobal => '分享到全站动态';

  @override
  String get shareToGlobalDesc => '让你的活动出现在 Kitsu 的全站动态里。';

  @override
  String get memberSince => '注册时间';

  @override
  String get location => '所在地';

  @override
  String get accountType => '账号类型';

  @override
  String get accountSupporter => '赞助者';

  @override
  String get accountFree => '免费';

  @override
  String get accountDetails => '账号详情';

  @override
  String get refreshFromKitsu => '从 Kitsu 刷新';

  @override
  String get simklReadOnly => 'Simkl 只授予了只读权限';

  @override
  String get incognitoEditsBlocked => '无痕模式：列表编辑已被禁止';

  @override
  String serviceError(String service, String error) {
    return '$service：$error';
  }

  @override
  String get incognitoProgressNotSaved => '无痕模式：进度未保存';

  @override
  String progressSet(int progress) {
    return '进度已设为 $progress';
  }

  @override
  String removedFromList(String title) {
    return '已将 $title 从你的列表中移除';
  }

  @override
  String get following => '关注中';

  @override
  String get homeSections => '首页栏目';

  @override
  String get homeSectionsHint => '拖动可调整顺序。隐藏的栏目不会加载。';

  @override
  String get customListDeleteFailed => '删除自定义列表失败';

  @override
  String get customListsSaveFailed => '保存自定义列表失败';

  @override
  String get customListsSaved => '已保存自定义列表';

  @override
  String get listName => '列表名称';

  @override
  String get addList => '添加列表';

  @override
  String voiceActorsIn(String name) {
    return '声优 · $name';
  }

  @override
  String get animeAppearances => '动画出演';

  @override
  String get mangaAppearances => '漫画登场';

  @override
  String get voicedCharacters => '配音角色';

  @override
  String get animeCredits => '动画参与作品';

  @override
  String get mangaCredits => '漫画参与作品';

  @override
  String get mainProductions => '主要作品';

  @override
  String get otherWorks => '其他作品';

  @override
  String get prequelSequel => '前传与续作';

  @override
  String get previousSeason => '上一季';

  @override
  String get thisSeason => '本季';

  @override
  String get nextSeason => '下一季';

  @override
  String get voiceRoles => '配音角色';

  @override
  String get staffPositions => '制作职位';

  @override
  String get mangaWorks => '漫画作品';

  @override
  String get malProfile => 'MyAnimeList 个人资料';

  @override
  String get refreshFromMal => '从 MyAnimeList 刷新';

  @override
  String get repullProfileCounts => '重新拉取你的个人资料和统计';

  @override
  String get refreshed => '已刷新';

  @override
  String get simklProfile => 'Simkl 个人资料';

  @override
  String get refreshFromSimkl => '从 Simkl 刷新';

  @override
  String get repullProfileLibrary => '重新拉取你的个人资料和片库';

  @override
  String get simklSignInToSearch => '登录 Simkl 后才能搜索';

  @override
  String get dropRate => '弃坑率';

  @override
  String get simklAttribution => '数据和图片由 Simkl 提供。在 Simkl 上查看';

  @override
  String get onHold => '搁置';

  @override
  String get scoredBy => '评分人数';

  @override
  String get planToWatch => '想看';

  @override
  String get planToRead => '想读';

  @override
  String get timesRewatched => '重看次数';

  @override
  String get timesReread => '重读次数';

  @override
  String get comments => '评论';

  @override
  String get moviesAndSeries => '电影与剧集';

  @override
  String get trackingOnly => '仅追踪';

  @override
  String get signedIn => '已登录';

  @override
  String get searchLanguage => '搜索语言';

  @override
  String get savedToList => '已保存到你的列表';

  @override
  String get removedFromYourList => '已从你的列表移除';

  @override
  String get retry => '重试';

  @override
  String get synopsis => '简介';

  @override
  String get details => '详情';

  @override
  String get addToList => '添加到列表';

  @override
  String get trailer => '预告片';

  @override
  String get titleCopied => '已复制标题';

  @override
  String get linkCopied => '已复制链接';

  @override
  String get watchTrailer => '观看预告片';

  @override
  String get copyTitle => '复制标题';

  @override
  String get copyLink => '复制链接';

  @override
  String get openInBrowser => '在浏览器中打开';

  @override
  String viewOnSource(String source) {
    return '在 $source 上查看';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return '第 $ep 集将在 $time后播出';
  }

  @override
  String nextEpisodeIn(String time) {
    return '下一集将在 $time后播出';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return '第 $chapter 话预计约 $time 后更新';
  }

  @override
  String get logPathCopied => '已将日志文件路径复制到剪贴板';

  @override
  String get animeSource => '动画源';

  @override
  String get mangaSource => '漫画源';

  @override
  String get popular => '热门';

  @override
  String get latest => '最新';

  @override
  String get saved => '已收藏';

  @override
  String get nothingMatched => '没有匹配的内容';

  @override
  String get nothingSavedFromSource => '这个源里还没有收藏';

  @override
  String get sourceReturnedNothing => '这个源什么都没返回';

  @override
  String get checkConnectionOrSource => '检查一下网络，或者换个源试试。';

  @override
  String get tryDifferentSearch => '换个搜索词试试。';

  @override
  String get savedTitlesAppearHere => '你添加到列表的作品会显示在这里。';

  @override
  String get tryOtherFeed => '试试其他信息流，或者用搜索。';

  @override
  String searchSource(String source) {
    return '搜索 $source';
  }

  @override
  String get animeExtensions => '动画扩展';

  @override
  String get mangaExtensions => '漫画扩展';

  @override
  String get nothingHereYet => '这里还什么都没有';

  @override
  String get savedOnDeviceUntilLogin => '下面的所有内容都会保存在这台设备上，直到你另行操作。';

  @override
  String get yourProfile => '你的个人资料';

  @override
  String get activity => '动态';

  @override
  String get extensions => '扩展';

  @override
  String get logOut => '退出登录';

  @override
  String get logIn => '登录';

  @override
  String get logOutConfirm => '确定要退出登录吗？';

  @override
  String get incognitoMode => '无痕模式';

  @override
  String get alsoBlockListEdits => '同时禁止编辑列表';

  @override
  String get offlineMode => '离线模式';

  @override
  String get switchService => '切换服务';

  @override
  String logOutOf(String name) {
    return '退出 $name';
  }

  @override
  String get loggedIn => '已登录';

  @override
  String get notifications => '通知';

  @override
  String get nothingNew => '没有新消息';

  @override
  String get thisWeek => '本周';

  @override
  String get listOnly => '仅限列表';

  @override
  String get filter => '筛选';

  @override
  String get searchResults => '搜索结果';

  @override
  String get recentSearches => '最近搜索';

  @override
  String get searchOrSetFilter => '搜索或设置筛选';

  @override
  String get filters => '筛选';

  @override
  String get showLess => '收起';

  @override
  String get showAll => '显示全部';

  @override
  String get apply => '应用';

  @override
  String get preview => '预览';

  @override
  String get preset => '预设';

  @override
  String get cardNormal => '常规';

  @override
  String get cardOnCard => '卡片上';

  @override
  String get cardInCard => '卡片内';

  @override
  String get size => '大小';

  @override
  String get cardWidth => '卡片宽度';

  @override
  String get compact => '紧凑';

  @override
  String get coverAndTitleOnly => '仅封面和标题';

  @override
  String get titleLines => '标题行数';

  @override
  String get shape => '形状';

  @override
  String get posterShape => '海报形状';

  @override
  String get cornerRadius => '圆角半径';

  @override
  String get off => '关闭';

  @override
  String get topLeft => '左上';

  @override
  String get topRight => '右上';

  @override
  String get bottomLeft => '左下';

  @override
  String get bottomRight => '右下';

  @override
  String get overlays => '叠加层';

  @override
  String get progressCount => '进度 / 数量';

  @override
  String get pill => '胶囊';

  @override
  String get bar => '进度条';

  @override
  String get outside => '外部';

  @override
  String get scoreBadge => '评分角标';

  @override
  String get airingDot => '播出中圆点';

  @override
  String get updateAvailable => '有可用更新';

  @override
  String get notInstalled => '未安装';

  @override
  String get done => '完成';

  @override
  String get searchOrEnterUrl => '搜索或输入 URL';

  @override
  String get refresh => '刷新';

  @override
  String get share => '分享';

  @override
  String get characters => '角色';

  @override
  String get staff => '制作人员';

  @override
  String get readMore => '阅读更多';

  @override
  String get couldNotLoadList => '无法加载列表';

  @override
  String get logInToFavourite => '登录后才能收藏';

  @override
  String get alsoKnownAs => '又名';

  @override
  String get hideSpoilerNames => '隐藏剧透名称';

  @override
  String get showSpoilerNames => '显示剧透名称';

  @override
  String get favourited => '已收藏';

  @override
  String get favourite => '收藏';

  @override
  String get couldNotOpenTitle => '无法打开该作品';

  @override
  String get nobodyHereYet => '这里还没有人';

  @override
  String get noMatches => '没有匹配项';

  @override
  String get gridView => '网格视图';

  @override
  String get fullWidth => '全宽';

  @override
  String get userNotFound => '找不到该用户';

  @override
  String get couldNotUpdateFollow => '无法更新关注状态';

  @override
  String followedUser(String name) {
    return '已关注 $name';
  }

  @override
  String unfollowedUser(String name) {
    return '已取消关注 $name';
  }

  @override
  String get messages => '私信';

  @override
  String get logInToSeeMessages => '登录后查看你的私信';

  @override
  String get editActivity => '编辑动态';

  @override
  String get newActivity => '新动态';

  @override
  String get editMessage => '编辑消息';

  @override
  String get writeMessage => '写条消息';

  @override
  String get editReply => '编辑回复';

  @override
  String get posted => '已发布';

  @override
  String get couldNotPost => '发布失败';

  @override
  String get nothingToPreview => '没有可预览的内容';

  @override
  String get writeSomethingHint => '写点什么吧…这里支持 AniList markdown';

  @override
  String get privateMessage => '私信';

  @override
  String get post => '发布';

  @override
  String get nothingHere => '这里什么都没有';

  @override
  String get noAnimeProgress => '没有动画进度';

  @override
  String get noMangaProgress => '没有漫画进度';

  @override
  String get noMessages => '没有消息';

  @override
  String get writeMessageHint => '写条消息…';

  @override
  String get shareSomethingHint => '分享点什么…';

  @override
  String get all => '全部';

  @override
  String get anime => '动画';

  @override
  String get manga => '漫画';

  @override
  String get count => '数量';

  @override
  String get hoursWatched => '观看时长';

  @override
  String get chaptersRead => '已读话数';

  @override
  String get meanScore => '平均评分';

  @override
  String get noStatsYet => '暂无统计';

  @override
  String get totalEntries => '条目总数';

  @override
  String get episodesWatched => '已看集数';

  @override
  String get daysWatched => '观看天数';

  @override
  String get volumesRead => '已读卷数';

  @override
  String get standardDeviation => '标准差';

  @override
  String get showMore => '显示更多';

  @override
  String get followsYou => '关注了你';

  @override
  String get nobodyYet => '还没有人';

  @override
  String get logInToLike => '登录后才能点赞';

  @override
  String get failedToLikeActivity => '点赞动态失败';

  @override
  String get deleteActivityConfirm => '要删除这条动态吗？';

  @override
  String get deletedActivity => '动态已删除';

  @override
  String get failedToDeleteActivity => '删除动态失败';

  @override
  String get subscribed => '已订阅';

  @override
  String get unsubscribed => '已取消订阅';

  @override
  String get failedToUpdateSubscription => '更新订阅失败';

  @override
  String get edit => '编辑';

  @override
  String get delete => '删除';

  @override
  String get likedBy => '点赞的人';

  @override
  String get follow => '关注';

  @override
  String get nameCopied => '已复制名称';

  @override
  String get followsEachOther => '互相关注';

  @override
  String get unfollow => '取消关注';

  @override
  String get userIdCopied => '已复制用户 ID';

  @override
  String get shareProfile => '分享个人资料';

  @override
  String get copyUserId => '复制用户 ID';

  @override
  String get failedToDelete => '删除失败';

  @override
  String get failedToLike => '点赞失败';

  @override
  String get replies => '回复';

  @override
  String get reply => '回复';

  @override
  String get noRepliesYet => '还没有回复';

  @override
  String get favouriteAnime => '喜欢的动画';

  @override
  String get favouriteManga => '喜欢的漫画';

  @override
  String get favouriteCharacters => '喜欢的角色';

  @override
  String get favouriteStaff => '喜欢的制作人员';

  @override
  String get favouriteStudios => '喜欢的制作公司';

  @override
  String get noFavouritesYet => '还没有收藏';

  @override
  String get yourStory => '你的动态';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get justNow => '刚刚';

  @override
  String get openImage => '打开图片';

  @override
  String get hideSpoiler => '隐藏剧透';

  @override
  String get showSpoiler => '显示剧透';

  @override
  String get status => '状态';

  @override
  String get score => '评分';

  @override
  String get started => '开始时间';

  @override
  String get completed => '完成时间';

  @override
  String get private => '私密';

  @override
  String get hideFromStatusLists => '不在状态列表中显示';

  @override
  String get totalRepeats => '重复总次数';

  @override
  String get other => '其他';

  @override
  String get customLists => '自定义列表';

  @override
  String get activeDays => '活跃天数';

  @override
  String get longestStreak => '最长连续';

  @override
  String get currentStreak => '当前连续';

  @override
  String get tapOrHoverDay => '点按或悬停在某一天上';

  @override
  String get less => '少';

  @override
  String get more => '多';

  @override
  String epIn(int ep, String time) {
    return '第 $ep 集将在 $time后播出';
  }

  @override
  String get sectionLoading => '加载中';

  @override
  String get querySize => '查询方式';

  @override
  String get querySizeDesc =>
      '“单个大查询”会用一次请求加载所有行（以及整个个人资料）。“拆分查询”会为每一行或个人资料的每个部分发一个小请求：每个都很快，内容陆续出现。';

  @override
  String get oneBig => '单个大查询';

  @override
  String get split => '拆分查询';

  @override
  String get sectionSocial => '社交';

  @override
  String get systemNotifications => '系统通知';

  @override
  String get feedLayout => '信息流布局';

  @override
  String sectionsShown(int shown, int total) {
    return '已显示 $shown/$total — 点按可挑选和排序';
  }

  @override
  String labelSections(String label) {
    return '$label栏目';
  }

  @override
  String get accountOptions => '账号选项';

  @override
  String get anilistAccountOptions => 'AniList 账号选项';

  @override
  String get sectionPrivacy => '隐私';

  @override
  String get hidePrivateEntries => '隐藏私密条目';

  @override
  String get hidePrivateEntriesDesc => '不在信息流中显示 AniList 上标记为私密的条目';

  @override
  String get anilistExcludeList => '排除我的列表';

  @override
  String get anilistExcludeListDesc => '已经在你 AniList 里的作品不再出现在动画和漫画页面';

  @override
  String get anilistProfile => 'AniList 个人资料';

  @override
  String get refreshFromAnilist => '从 AniList 刷新';

  @override
  String get couldNotUpdateAnilistSettings => '无法更新 AniList 设置';

  @override
  String get sectionNames => '名称';

  @override
  String get titleLanguage => '标题语言';

  @override
  String get titleLanguageDesc =>
      '标题在各处的写法，例如 Attack on Titan / Shingeki no Kyojin / 進撃の巨人。';

  @override
  String get staffCharacterNames => '制作人员和角色名称';

  @override
  String get sectionLists => '列表';

  @override
  String get scoreFormat => '评分格式';

  @override
  String get sortListsBy => '列表排序方式';

  @override
  String labelCustomLists(String label) {
    return '$label自定义列表';
  }

  @override
  String customListsCount(int count) {
    return '$count 个列表 — 点按可添加或移除';
  }

  @override
  String get mergeActivities => '合并动态';

  @override
  String minutesCount(int count) {
    return '$count 分钟';
  }

  @override
  String get timezone => '时区';

  @override
  String get notSet => '未设置';

  @override
  String get airingNotifications => '播出通知';

  @override
  String get airingNotificationsDesc => '你关注的番剧更新一集时通知你';

  @override
  String get displayAdultContent => '显示成人内容';

  @override
  String get displayAdultContentDesc => '在浏览、搜索和信息流中包含 18+ 作品';

  @override
  String get restrictMessages => '仅限关注的人发私信';

  @override
  String get restrictMessagesDesc => '只有你关注的人才能给你发私信';

  @override
  String get sectionServices => '服务';

  @override
  String get novel => '轻小说';

  @override
  String labelService(String label) {
    return '$label服务';
  }

  @override
  String nameSettings(String name) {
    return '$name 设置';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '来自 $name 扩展桥的选项';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name 无法启动：$error';
  }

  @override
  String get importLists => '导入列表';

  @override
  String get importListsDesc => '来自 Aniyomi、Mihon / Tachiyomi 或 Kotatsu 备份';

  @override
  String get exportLists => '导出列表';

  @override
  String get exportListsDesc => '导出为 Aniyomi、Mihon 或 Kotatsu 备份';

  @override
  String get sectionBrowse => '浏览';

  @override
  String get readingTab => '阅读标签页';

  @override
  String get readingTabDesc => '第三个标签页显示哪些扩展';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => '默认信息流';

  @override
  String get defaultFeedDesc => '打开源时默认显示哪个列表';

  @override
  String noServiceSupports(String type) {
    return '没有服务支持$type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · 已加载 $loaded/$installed 个源';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return '这里没有支持$type的扩展服务。';
  }

  @override
  String get loadDataFrom => '数据来源';

  @override
  String noInstalledSourcesYet(String type) {
    return '还没有安装$type源。';
  }

  @override
  String extensionNotInstalled(String name) {
    return '尚未安装 $name 的扩展';
  }

  @override
  String get thisSource => '这个源';

  @override
  String failedToAddRepository(String error) {
    return '添加仓库失败：$error';
  }

  @override
  String installedType(String type) {
    return '已安装的$type';
  }

  @override
  String availableType(String type) {
    return '可用的$type';
  }

  @override
  String noInstalledExtensions(String type) {
    return '没有已安装的$type扩展';
  }

  @override
  String noAvailableExtensions(String type) {
    return '没有可用的$type扩展';
  }

  @override
  String get nothingToShowYet => '暂时没有内容';

  @override
  String get addTitlesHint => '把作品加进你的列表，它们就会显示在这里。';

  @override
  String get couldntLoad => '无法加载';

  @override
  String get progressStyleHint => '胶囊和进度条叠在海报上；“外部”则把同样的数量显示成普通文字 — 二选一。';

  @override
  String get nixManagedUpdate =>
      '此版本由 Nix 管理 — 请在你的 flake 上运行“nix flake update”并重新构建，而不是在这里更新';

  @override
  String autoUpdateFailed(String error) {
    return '自动更新失败（$error）— 改为打开下载页面';
  }

  @override
  String get unknownPreference => '未知偏好设置';

  @override
  String unsupportedPreferenceType(String type) {
    return '不支持的偏好设置类型 $type';
  }

  @override
  String get notYetReleased => '尚未发布';

  @override
  String get notStarted => '尚未开始';

  @override
  String get country => '国家/地区';

  @override
  String get sort => '排序';

  @override
  String get chooseBackupDialog => '选择 Aniyomi、Mihon 或 Kotatsu 备份';

  @override
  String get importListsHint =>
      '把片库从 Aniyomi、Mihon / Tachiyomi 或 Kotatsu 搬过来。作品、封面、进度和分类都会保留。';

  @override
  String get chooseBackupFile => '选择备份文件';

  @override
  String importAnimeCount(int count) {
    return '导入 $count 部动画';
  }

  @override
  String importMangaCount(int count) {
    return '导入 $count 部漫画';
  }

  @override
  String get mergeWithExisting => '与现有列表合并';

  @override
  String get mergeWithExistingDesc => '保留你已有的内容；关闭则替换同名作品';

  @override
  String get chooseAnother => '换一个';

  @override
  String get import => '导入';

  @override
  String animeCount(int count) {
    return '$count 部动画';
  }

  @override
  String mangaCount(int count) {
    return '$count 部漫画';
  }

  @override
  String get chooseSaveLocation => '选择备份的保存位置';

  @override
  String savedPath(String path) {
    return '已保存 $path';
  }

  @override
  String exportFailed(String error) {
    return '导出失败：$error';
  }

  @override
  String get nothingInLocalLists => '你的本地列表里还没有内容。';

  @override
  String exportsSummary(int anime, int manga) {
    return '从你的本地列表导出 $anime 部动画和 $manga 部漫画。Kotatsu 只支持漫画。';
  }

  @override
  String get saveToFolder => '保存到文件夹';

  @override
  String get formatAnimeManga => '动画和漫画 · .tachibk';

  @override
  String get formatMangaTachibk => '仅漫画 · .tachibk';

  @override
  String get formatMangaZip => '仅漫画 · .zip';

  @override
  String get genres => '类型';

  @override
  String get relations => '关联作品';

  @override
  String get recommendations => '推荐';

  @override
  String get openings => 'OP';

  @override
  String get endings => 'ED';

  @override
  String get background => '背景';

  @override
  String get links => '链接';

  @override
  String get rank => '排名';

  @override
  String get members => '成员';

  @override
  String get favorites => '收藏数';

  @override
  String get episodes => '集数';

  @override
  String get chapters => '话数';

  @override
  String get volumes => '卷数';

  @override
  String get format => '格式';

  @override
  String get source => '原作';

  @override
  String get duration => '时长';

  @override
  String minutesPerEpisode(int minutes) {
    return '每集 $minutes 分钟';
  }

  @override
  String get rating => '分级';

  @override
  String get studio => '制作公司';

  @override
  String get serialization => '连载杂志';

  @override
  String get season => '季度';

  @override
  String get broadcast => '播出时间';

  @override
  String get aired => '播出日期';

  @override
  String get published => '出版日期';

  @override
  String get popularity => '人气';

  @override
  String get community => '社区';

  @override
  String get watching => '在看';

  @override
  String get reading => '在读';

  @override
  String get dropped => '抛弃';

  @override
  String get planned => '计划中';

  @override
  String get trailers => '预告片';

  @override
  String get ratings => '评分';

  @override
  String get originalTitle => '原版';

  @override
  String get titleLabel => '标题';

  @override
  String get votes => '投票数';

  @override
  String get watchedStat => '已看';

  @override
  String get runtime => '片长';

  @override
  String get director => '导演';

  @override
  String get network => '电视网';

  @override
  String get certification => '分级认证';

  @override
  String get airs => '播出';

  @override
  String get budget => '预算';

  @override
  String get revenue => '票房';

  @override
  String get released => '上映日期';

  @override
  String get tags => '标签';

  @override
  String get author => '作者';

  @override
  String get born => '出生';

  @override
  String get website => '网站';

  @override
  String get established => '成立';

  @override
  String get manhwa => '韩漫';

  @override
  String get manhua => '国漫';

  @override
  String get novels => '轻小说';

  @override
  String get thisMonth => '本月';

  @override
  String get movies => '电影';

  @override
  String get shows => '剧集';

  @override
  String get rewatching => '重看中';

  @override
  String get rereading => '重读中';

  @override
  String get watchedStatus => '已看';

  @override
  String get planning => '计划中';

  @override
  String get paused => '搁置';

  @override
  String get watch => '观看';

  @override
  String get read => '阅读';

  @override
  String get finished => '已完结';

  @override
  String get releasing => '连载中';

  @override
  String get cancelled => '已取消';

  @override
  String get hiatus => '休刊';

  @override
  String get remove => '移除';

  @override
  String syncToService(String service) {
    return '同步到 $service';
  }

  @override
  String syncedToService(String service) {
    return '已同步到 $service';
  }

  @override
  String get latestReleases => '最新发布';

  @override
  String get topRated => '高分榜';

  @override
  String localSection(String title) {
    return '$title · 本地';
  }

  @override
  String get localEntryNote =>
      '这部作品只存在于这台设备的本地列表中。这里已关闭编辑，因为可能与你的账号列表冲突；不过你仍然可以移除它。';

  @override
  String get cardPresetPoster => '海报';

  @override
  String get cardPresetCard => '卡片';

  @override
  String get cardPresetCozy => '舒适';

  @override
  String get sortTopRated => '高分榜';

  @override
  String get sortMostPopular => '最受欢迎';

  @override
  String get sortTrending => '热门';

  @override
  String get sortNewest => '最新';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => '收藏最多';

  @override
  String get anyCountry => '所有国家/地区';

  @override
  String get orderScore => '评分';

  @override
  String get orderTitle => '标题';

  @override
  String get orderLastUpdated => '最近更新';

  @override
  String get orderLastAdded => '最近添加';

  @override
  String get never => '从不';

  @override
  String get always => '总是';

  @override
  String get scorePoint100 => '100 分制';

  @override
  String get scorePoint10Decimal => '10 分制（带小数）';

  @override
  String get scorePoint10 => '10 分制';

  @override
  String get scorePoint5 => '5 星制';

  @override
  String get scorePoint3 => '3 档表情';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 小时',
      one: '1 小时',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天',
      one: '1 天',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 周',
      one: '1 周',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => '继续';

  @override
  String get resumeSourceMissing => '安装该作品的源后才能继续';

  @override
  String get resumeRemove => '从继续列表移除';

  @override
  String resumeAt(String time) {
    return '还剩 $time';
  }

  @override
  String resumePage(int page, int total) {
    return '第 $page/$total 页';
  }

  @override
  String get continueWatching => '继续观看';

  @override
  String get continueReading => '继续阅读';

  @override
  String get favouriteAnimeSection => '喜欢的动画';

  @override
  String get favouriteMangaSection => '喜欢的漫画';

  @override
  String get plannedAnime => '计划看的动画';

  @override
  String get plannedManga => '计划读的漫画';

  @override
  String get completedAnime => '看完的动画';

  @override
  String get completedManga => '读完的漫画';

  @override
  String get hiddenMedia => '隐藏媒体';

  @override
  String get recentUpdates => '最近更新';

  @override
  String get trendingNow => '当前热门';

  @override
  String get popularThisSeason => '本季热门';

  @override
  String get trendingMovies => '热门电影';

  @override
  String get topRatedSeries => '高分剧集';

  @override
  String get mostFavouriteSeries => '最受喜爱的剧集';

  @override
  String get popularAnime => '热门动画';

  @override
  String get trendingManhwa => '热门韩漫';

  @override
  String get trendingNovels => '热门轻小说';

  @override
  String get topRatedManga => '高分漫画';

  @override
  String get mostFavouriteManga => '最受喜爱的漫画';

  @override
  String get popularManga => '热门漫画';

  @override
  String get topMovies => '电影榜';

  @override
  String get topOna => 'ONA 榜';

  @override
  String get topOva => 'OVA 榜';

  @override
  String get mostPopular => '最受欢迎';

  @override
  String get mostFavourite => '最受喜爱';

  @override
  String get upcoming => '即将播出';

  @override
  String get topManga => '漫画榜';

  @override
  String get topManhwa => '韩漫榜';

  @override
  String get topManhua => '国漫榜';

  @override
  String get topNovels => '轻小说榜';

  @override
  String get topOneShots => '单篇榜';

  @override
  String get trendingMoviesToday => '今日热门电影';

  @override
  String get trendingShowsToday => '今日热门剧集';

  @override
  String get trendingMoviesWeek => '本周热门电影';

  @override
  String get trendingShowsWeek => '本周热门剧集';

  @override
  String get mostWatchedMoviesMonth => '本月观看最多的电影';

  @override
  String get mostWatchedShowsMonth => '本月观看最多的剧集';

  @override
  String get trendingThisWeek => '本周热门';

  @override
  String get mostWatchedThisMonth => '本月观看最多';

  @override
  String get repoLinksAdded => '已成功添加仓库链接！';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => '从 AniList 获取数据出错。';

  @override
  String get navInfo => '信息';

  @override
  String get navComments => '评论';

  @override
  String get playerNotAvailable => '播放器暂不可用';

  @override
  String deepLinkInitialError(String error) {
    return '获取初始深度链接出错：$error';
  }

  @override
  String deepLinkOpenError(String error) {
    return '打开链接出错：$error';
  }

  @override
  String linkCantBeOpened(String link) {
    return '无法打开此链接：$link';
  }

  @override
  String linkOpenError(String error) {
    return '打开链接出错：$error';
  }

  @override
  String get forReleasingTitles => '适用于正在连载的作品';

  @override
  String get progress => '进度';

  @override
  String get notes => '备注';

  @override
  String serviceNotFound(String id) {
    return '找不到服务“$id”';
  }

  @override
  String get glassEffectEnabled => '已开启玻璃效果';

  @override
  String get glassEffectDisabled => '已关闭玻璃效果';

  @override
  String get materialYouEnabled => '已开启 Material You';

  @override
  String get materialYouDisabled => '已关闭 Material You';

  @override
  String get darkModeEnabled => '已开启深色模式';

  @override
  String get darkModeDisabled => '已关闭深色模式';

  @override
  String get animeList => '动画列表';

  @override
  String get mangaList => '漫画列表';

  @override
  String ownerAnimeList(String owner) {
    return '$owner的动画列表';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner的漫画列表';
  }

  @override
  String get loadingList => '正在加载列表';

  @override
  String get earlier => '更早';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天前',
      one: '1 天前',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 小时前',
      one: '1 小时前',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 分钟前',
      one: '1 分钟前',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count 分钟前';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count 小时前';
  }

  @override
  String daysAgoShort(int count) {
    return '$count 天前';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count 周前';
  }

  @override
  String get couldntLoadSource => '无法加载此源';

  @override
  String get followers => '粉丝';

  @override
  String couldntLoadTitle(String title) {
    return '无法加载 $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => '无法加载此个人资料';

  @override
  String get profile => '个人资料';

  @override
  String get feed => '动态';

  @override
  String get stats => '统计';

  @override
  String get received => '收到的';

  @override
  String get sent => '发出的';

  @override
  String get global => '全站';

  @override
  String get couldntLoadPage => '无法加载此页面';

  @override
  String get couldntLoadAllDetails => '无法加载全部详情';

  @override
  String get series => '剧集';

  @override
  String get studios => '制作公司';

  @override
  String get users => '用户';

  @override
  String repositoriesTitle(String type) {
    return '$type仓库';
  }

  @override
  String get repositoryUrl => '仓库 URL';

  @override
  String get downloadingRepository => '正在下载仓库…';

  @override
  String get noRepositories => '还没添加仓库';

  @override
  String repoExtensionsCount(String count) {
    return '$count 个扩展';
  }

  @override
  String get searchExtensions => '搜索扩展...';

  @override
  String deletePluginTitle(String name) {
    return '删除 $name？';
  }

  @override
  String get deletePluginMessage => '确定要删除这个插件吗？';

  @override
  String pluginDeleted(String name) {
    return '已删除 $name';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name 不在已配置的仓库中';
  }

  @override
  String get pluginFetchFailed => '获取插件信息失败';

  @override
  String installPluginTitle(String name) {
    return '安装 $name';
  }

  @override
  String sizeLabel(String size) {
    return '大小：$size';
  }

  @override
  String get installedState => '已安装';

  @override
  String updatePluginTitle(String name) {
    return 'Update $name';
  }

  @override
  String get errorLabel => '错误：';

  @override
  String get stackTraceDetails => '详情（堆栈跟踪）';

  @override
  String get shareLogFile => '分享日志文件';

  @override
  String get copyLogs => '复制日志';

  @override
  String noListToEdit(String service) {
    return '$service 没有可编辑的列表';
  }

  @override
  String get couldNotReadFile => '无法读取该文件';

  @override
  String importedSummary(int anime, int manga) {
    return '已导入 $anime 部动画和 $manga 部漫画';
  }

  @override
  String alreadyThere(int count) {
    return ' · 已有 $count 项';
  }

  @override
  String get airingNow => '正在播出';

  @override
  String get topRatedMovies => '高分电影';

  @override
  String get koreanDramas => '韩剧';

  @override
  String get chineseDramas => '国产剧';

  @override
  String get japaneseDramas => '日剧';

  @override
  String get thaiDramas => '泰剧';

  @override
  String get turkishDramas => '土耳其剧';

  @override
  String get miniSeries => '迷你剧';

  @override
  String get topRatedShows => '高分剧集';

  @override
  String get recommendedSection => '推荐';

  @override
  String get syncRow => '同步列表';

  @override
  String get syncRowDesc => '把一个服务的列表镜像到你的其他账号';

  @override
  String get syncTitle => '同步';

  @override
  String get syncMainService => '主服务';

  @override
  String get syncMainServiceDesc => '以它的列表为准，其他已登录的服务都会更新成与它一致';

  @override
  String get syncAuto => '自动同步';

  @override
  String get syncAutoDesc => '打开应用时以及每 30 分钟，在后台获取并同步';

  @override
  String get syncAddMissing => '添加缺失条目';

  @override
  String get syncAddMissingDesc => '也添加另一个服务里还没有的条目';

  @override
  String get syncOnlyForward => '保留更靠前的进度';

  @override
  String get syncOnlyForwardDesc => '不降低已领先服务的进度';

  @override
  String get syncFetch => '获取';

  @override
  String get syncFetchAgain => '重新获取';

  @override
  String get syncAll => '全部同步';

  @override
  String get syncStop => '停止';

  @override
  String get syncResume => '继续';

  @override
  String get syncNothingToSync => '该服务不支持同步这个类型';

  @override
  String get syncNoTargets => '请先登录另一个服务再同步';

  @override
  String get syncLoadingMap => '正在加载 ID 映射';

  @override
  String get syncComparing => '正在比较列表';

  @override
  String get syncIntro => '选好主服务，然后点“获取”。每个服务只会请求一次你的列表，再与主服务比较。';

  @override
  String get syncStateSynced => '已同步';

  @override
  String get syncStateOutdated => '不同步';

  @override
  String get syncStateMissing => '不在列表中';

  @override
  String get syncStateUnmapped => '无匹配';

  @override
  String syncPaused(String time) {
    return '正在等待限流，$time后继续';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count 项只在 $name 上，保持不动';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done/$total';
  }

  @override
  String get syncNothingHere => '没有可显示的内容';

  @override
  String syncLimits(int used, int max, String window) {
    return '每$window已用 $used/$max 次请求';
  }

  @override
  String get syncMinute => '分钟';

  @override
  String get syncDay => '天';

  @override
  String get syncNotInList => '尚未加入列表';

  @override
  String get syncCleared => '已清除计划';

  @override
  String get syncClear => '清除';

  @override
  String get syncOptions => '选项';

  @override
  String get syncShared => '与另一项共用同一条目';

  @override
  String syncNotFound(String service) {
    return '在 $service 上未找到';
  }

  @override
  String syncService(String service, int count) {
    return '同步 $service（$count）';
  }

  @override
  String get syncOnEdit => '即时同步';

  @override
  String get syncOnEditDesc => '每次进度更新和列表编辑都立刻推送到你其他已登录的服务';

  @override
  String syncPushed(String services) {
    return '已同步到 $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service：$error';
  }

  @override
  String get syncRateLimited => '触发限流，稍等一下再试';

  @override
  String get syncAhead => '谁领先听谁的';

  @override
  String get syncAheadDesc => '双向：每部作品都以进度最靠前的条目为准，并复制到你所有其他服务';

  @override
  String syncAheadFrom(String service) {
    return '来自 $service';
  }

  @override
  String get syncConfirm => '同步前先预览';

  @override
  String get syncConfirmDesc => '显示“全部同步”会改动什么，以及需要多少次请求';

  @override
  String get syncPreviewTitle => '准备同步';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates 项更新，$adds 项待添加';
  }

  @override
  String syncPreviewRequests(int count) {
    return '约 $count 次请求';
  }

  @override
  String syncPreviewLookups(int count) {
    return '有 $count 个 ID 需要先查询';
  }

  @override
  String get syncPreviewNothing => '没有需要改动的';

  @override
  String get syncStart => '开始';

  @override
  String get syncRetry => '重试';

  @override
  String get syncSkip => '跳过此项';

  @override
  String get syncInclude => '重新加入此项';

  @override
  String get syncSkippedLabel => '已跳过';

  @override
  String get syncChanges => '差异';

  @override
  String get syncChangeStatus => '状态';

  @override
  String get syncChangeProgress => '进度';

  @override
  String get syncChangeScore => '评分';

  @override
  String get syncChangeDates => '日期';

  @override
  String get syncChangeRepeat => '重看次数';

  @override
  String get syncFailedReason => '失败原因';

  @override
  String get syncSkippedHint => '被跳过的项目不会被改动，即使重新获取也一样';

  @override
  String get commentsRules => '评论规则';

  @override
  String get commentsRulesBody =>
      '违反任何规则 = 直接封号\n\n1. 禁止种族主义、歧视或仇恨言论\n2. 禁止刷屏或自我宣传\n3. 绝对禁止 NSFW 内容\n4. 仅限英文，没有例外\n5. 禁止冒充、骚扰或辱骂\n6. 禁止违法内容，也禁止对任何圈子极端不尊重\n7. 不要索取或分享仓库或扩展\n8. 剧透必须使用剧透标签并附带警告\n9. 禁止对未成年角色进行性化或发表不当评论\n10. 觉得不对的，就别发！';

  @override
  String get commentsRulesAccept => '我知道了';

  @override
  String get commentsSortNewest => '最新';

  @override
  String get commentsSortOldest => '最早';

  @override
  String get commentsSortHighest => '评分最高';

  @override
  String get commentsSortLowest => '评分最低';

  @override
  String commentsEpisodeShort(int number) {
    return '第 $number 集';
  }

  @override
  String commentsChapterShort(int number) {
    return '第 $number 话';
  }

  @override
  String get commentsFilterEpisodeTitle => '按集数筛选';

  @override
  String get commentsFilterChapterTitle => '按话数筛选';

  @override
  String get commentsFilterTagTitle => '输入集数或话数';

  @override
  String get commentsFilterHint => '编号';

  @override
  String get commentsFilterApply => '筛选';

  @override
  String get commentsFilterClear => '显示全部';

  @override
  String get commentsPlaceholder => '添加评论…';

  @override
  String commentsReplyingTo(String name) {
    return '回复 $name';
  }

  @override
  String get commentsSend => '发送';

  @override
  String get commentsTagButton => '标记';

  @override
  String commentsTagTitle(String label) {
    return '标记$label（可选）';
  }

  @override
  String get commentsTagEpisode => '集';

  @override
  String get commentsTagChapter => '话';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label编号';
  }

  @override
  String commentsTagTooHigh(int total) {
    return '标记不能超过总数（$total）';
  }

  @override
  String get commentsNoTag => '不标记';

  @override
  String get commentsSpoiler => '剧透';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => '搜索 GIF';

  @override
  String get commentsGifEmpty => '没有找到 GIF';

  @override
  String get commentsEmptyText => '评论不能为空';

  @override
  String get commentsBannedYou => '你已被禁止评论';

  @override
  String get commentsEdited => '评论已编辑';

  @override
  String get commentsDeleted => '评论已删除';

  @override
  String get commentsDeletedPlaceholder => '[已删除]';

  @override
  String get commentsReported => '评论已举报';

  @override
  String get commentsUserBanned => '用户已被封禁';

  @override
  String get commentsReport => '举报';

  @override
  String get commentsReportAsk => '要把这条评论举报给管理员吗？';

  @override
  String get commentsDelete => '删除';

  @override
  String get commentsDeleteAsk => '这条评论会对所有人删除。';

  @override
  String get commentsBan => '封禁';

  @override
  String get commentsBanAsk => '要禁止该用户评论吗？';

  @override
  String get commentsCopy => '复制';

  @override
  String get commentsViewReply => '查看 1 条回复';

  @override
  String commentsViewReplies(int count) {
    return '查看 $count 条回复';
  }

  @override
  String get commentsHideReplies => '收起回复';

  @override
  String get commentsLoadMore => '加载更多评论';

  @override
  String get commentsEmpty => '还没有评论，来抢沙发吧！';

  @override
  String get commentsEmptyFiltered => '此筛选下没有评论';

  @override
  String get commentsSignIn => '登录 AniList 后才能阅读和发表评论';

  @override
  String get commentsSignInMessage => '评论在所有服务间共享，并使用你的 AniList 账号。';

  @override
  String get commentsUnavailable => '该作品暂无评论功能';

  @override
  String get commentsUnavailableMessage => '它没能匹配到 AniList 条目。';

  @override
  String get commentsDisabled => '评论已关闭';

  @override
  String get commentsDisabledMessage => '你可以在 设置 › 通用 中重新开启。';

  @override
  String get commentsOffline => '无法加载评论';

  @override
  String get commentsSingleTitle => '正在显示一条评论';

  @override
  String get commentsShowAll => '显示全部评论';

  @override
  String get commentsSettingsHeader => '评论';

  @override
  String get commentsSettingEnabled => '评论';

  @override
  String get commentsSettingEnabledDesc => '在作品页显示评论标签页，并用你的 AniList 账号登录评论服务器';

  @override
  String get commentsSettingAlerts => '回复通知';

  @override
  String get commentsSettingAlertsDesc => '有人回复我的评论时通知我';

  @override
  String get commentsNoticeReplyTitle => '新的评论回复';

  @override
  String commentsNoticeReply(String name) {
    return '$name 回复了你的评论';
  }

  @override
  String get commentsNoticeWarningTitle => '你收到了一条警告';

  @override
  String get commentsNoticeWarning => '发评论时请多考虑一下';

  @override
  String get commentsNoticeUpdateTitle => '来自 Dantotsu 的更新';

  @override
  String get barcodeTitle => '扫描条形码';

  @override
  String get barcodeTooltip => '通过条形码查找漫画或轻小说';

  @override
  String get barcodeIntro => '把相机对准单行本背面的条形码，或者输入 ISBN。';

  @override
  String get barcodeIntroManual => '输入印在单行本背面条形码上方的 ISBN。';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => '这不是有效的 ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return '没有找到 $isbn 对应的书';
  }

  @override
  String get barcodeCameraDenied => '相机不可用。请允许相机权限，或改为输入 ISBN。';

  @override
  String get themesTitle => 'OP 和 ED';

  @override
  String get themesPlayVideo => '播放视频';

  @override
  String get themesPlayAudio => '仅播放音频';

  @override
  String get themesOpenSite => '在 AnimeThemes 上打开';

  @override
  String get themesCredit => '来自 AnimeThemes 的主题曲';

  @override
  String get themesVersions => '版本';

  @override
  String get sauceTitle => '找出处';

  @override
  String get sauceIntro => '上传漫画页面或插画，或粘贴链接，找到它的出处。';

  @override
  String get sauceKeyTitle => 'SauceNAO API 密钥';

  @override
  String get sauceKeyHint => '可选，可提高每日搜索上限';

  @override
  String get sauceKeyDesc => '在 saucenao.com/user.php 免费获取密钥';

  @override
  String get sauceOpen => '打开出处';

  @override
  String get sauceCredit => 'SauceNAO 提供的以图搜图';

  @override
  String get sauceEmpty => '没有找到匹配项';

  @override
  String get sauceTooltip => '查找漫画页面或插画的出处';

  @override
  String get trendzTitle => '动画排行榜';

  @override
  String get trendzAnime => '动画';

  @override
  String get trendzFemale => '女性角色';

  @override
  String get trendzMale => '男性角色';

  @override
  String get trendzCouple => 'CP';

  @override
  String get trendzCredit => 'AniTrendz 每周排行榜';

  @override
  String get trendzNew => '新';

  @override
  String get trendzEmpty => '排行榜是空的';

  @override
  String get shareCard => '分享卡片';

  @override
  String get shareCardList => '分享列表卡片';

  @override
  String get shareCardSaved => '卡片已保存';

  @override
  String get shareCardFailed => '无法生成卡片';

  @override
  String get shareCardListEmpty => '你的列表里还没有可分享的内容';

  @override
  String get shareCardTop => '我的最爱';

  @override
  String themesEpisodes(String eps) {
    return '集数 $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '匹配度 $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return '第 $week 周 · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count 票';
  }

  @override
  String trendzPeak(String rank) {
    return '最高 #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count 周进入前十';
  }

  @override
  String get imageSearchTitle => '以图搜图';

  @override
  String get imageSearchTooltip => '用截图找动画';

  @override
  String get imageSearchIntro => '选一张截图或粘贴图片链接，trace.moe 会找出它来自哪一集的哪个瞬间。';

  @override
  String get imageSearchPick => '选择图片';

  @override
  String get imageSearchLinkHint => '粘贴图片链接';

  @override
  String get imageSearchGo => '搜索';

  @override
  String get imageSearchEmpty => '没有找到匹配项';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return '第 $number 集';
  }

  @override
  String imageSearchAt(String time) {
    return '位于 $time';
  }

  @override
  String get imageSearchPreview => '预览片段';

  @override
  String imageSearchSimilarity(int percent) {
    return '匹配度 $percent%';
  }

  @override
  String get imageSearchCredit => '由 trace.moe 提供支持';

  @override
  String get imageSearchOpenFailed => '无法打开该作品';

  @override
  String get groups => '小组';

  @override
  String get groupsYours => '你的小组';

  @override
  String get groupsPopular => '热门';

  @override
  String get groupsNew => '最新';

  @override
  String get groupsFeatured => '精选';

  @override
  String get groupsSearch => '搜索小组';

  @override
  String get groupsAll => '全部';

  @override
  String get groupsEmpty => '没有找到小组';

  @override
  String get groupsEmptyYours => '你还没有加入任何小组';

  @override
  String get groupsSignIn => '登录后查看你加入的小组';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 位成员',
      one: '1 位成员',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => '加入';

  @override
  String get groupsJoined => '已加入';

  @override
  String get groupsLeave => '退出小组';

  @override
  String get groupsLeaveAsk => '你的信息流里将不再显示该小组的帖子。';

  @override
  String get groupsJoinFailed => '无法加入该小组，可能只能凭邀请加入';

  @override
  String get groupsLeaveFailed => '无法退出该小组';

  @override
  String get groupsPosts => '帖子';

  @override
  String get groupsMembersTab => '成员';

  @override
  String get groupsAbout => '关于';

  @override
  String get groupsRules => '规则';

  @override
  String get groupsPrivacyOpen => '开放';

  @override
  String get groupsPrivacyRestricted => '受限';

  @override
  String get groupsPrivacyClosed => '封闭';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => '管理员';

  @override
  String get groupsRoleMod => '版主';

  @override
  String get groupsCouldntLoad => '无法加载该小组';

  @override
  String get groupsNewPost => '发布到小组';

  @override
  String get groupsPostHint => '和小组分享点什么';

  @override
  String get groupsOpenInBrowser => '在浏览器中打开';

  @override
  String get groupsCategory => '分类';

  @override
  String get groupsLanguage => '语言';

  @override
  String get groupsCreated => '创建时间';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 位组长',
      one: '1 位组长',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => '隐私';

  @override
  String get notificationsAll => '全部';

  @override
  String get notificationsAiring => '播出';

  @override
  String get notificationsMedia => '新作品';

  @override
  String get notificationsReplies => '回复';

  @override
  String get notificationsMentions => '提及';

  @override
  String get notificationsMessages => '私信';

  @override
  String get notificationsLikes => '点赞';

  @override
  String get notificationsFollows => '关注';

  @override
  String get notificationsNoServices => '已登录的服务都没有通知';

  @override
  String get notificationsNoServicesMessage => '登录一个会发送通知的服务，通知就会显示在这里。';

  @override
  String get notificationsEmptyKind => '该分类下暂时没有内容';

  @override
  String get notificationsCommentsEmpty => '没有评论通知';

  @override
  String get notificationsCommentsEmptyMessage =>
      '对你评论的回复和来自 Dantotsu 的公告会显示在这里。';

  @override
  String get notificationsSettings => '通知设置';

  @override
  String get notificationsPollTitle => '检查新通知';

  @override
  String notificationsPollDesc(int minutes) {
    return '应用打开时每 $minutes 分钟一次';
  }

  @override
  String get notificationsNotifyAbout => '通知我';

  @override
  String get notificationsCommentsHeader => '评论通知';

  @override
  String systemNotificationsDescFor(String service) {
    return '应用运行时，每条未读的 $service 通知都弹出系统通知。';
  }

  @override
  String get notificationsTestSent => '测试通知已发送';

  @override
  String get notificationsTestDenied => 'Dartotsu 的通知权限未开启，请在系统设置中打开。';

  @override
  String get notificationsTestHint => '长按发送测试通知';

  @override
  String get notificationsTestSample => '这是一条测试通知';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name 在 $media 中回复了你的评论';
  }

  @override
  String get imageSearchNotLink => '这看起来不像链接';

  @override
  String get imageSearchQuota => '搜索额度已用完';

  @override
  String get imageSearchBusy => '请求太频繁了，稍等一下再试';

  @override
  String imageSearchFailed(int code) {
    return '搜索失败（$code）';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count 条新通知';
  }

  @override
  String get reactionsTitle => '表情回应';

  @override
  String get reactionsNeedEntry => '请先把这部作品加入列表再回应';

  @override
  String get reactionsAdd => '添加回应';

  @override
  String get reactionsHint => '你觉得怎么样？（简短、不剧透）';

  @override
  String get reactionsPost => '发布';

  @override
  String get reactionsFailed => '无法更新回应';

  @override
  String get settingsWatch => '观看与阅读';

  @override
  String get settingsWatchDesc => '剧集列表、源匹配和剧集详情';

  @override
  String get watchSettingsLayout => '剧集列表';

  @override
  String get watchSettingsSources => '源';

  @override
  String get watchSettingsMetadata => '剧集详情';

  @override
  String get watchLayout => '布局';

  @override
  String get watchListView => '列表';

  @override
  String get watchGridView => '网格';

  @override
  String get watchCompactView => '紧凑';

  @override
  String get watchDefaultLayoutDesc => '在你为某部作品单独修改之前，剧集和章节的默认排列方式';

  @override
  String get watchChunkSize => '分组大小';

  @override
  String get watchChunkSizeDesc => '每个分组标签页包含多少集或多少话';

  @override
  String get watchShowDescription => '显示简介';

  @override
  String get watchShowDescriptionDesc => '在列表布局中，在每个标题下显示该集简介';

  @override
  String get watchShowFiller => '显示填充集';

  @override
  String get watchShowFillerDesc => '关闭后会隐藏标记为填充集的剧集';

  @override
  String get watchBlurUnwatched => '隐藏剧透缩略图';

  @override
  String get watchBlurUnwatchedDesc => '把你还没看的剧集的缩略图模糊掉';

  @override
  String get watchResumeShelf => '继续栏';

  @override
  String get watchResumeShelfDesc => '在首页显示“继续”一栏';

  @override
  String get watchMarkOnLongPress => '长按标记进度';

  @override
  String get watchMarkOnLongPressDesc => '长按某一集或某一话，可将其标记为已看或未看';

  @override
  String get watchMatching => '源匹配';

  @override
  String get watchMatchingDesc => '“最接近”会采用最佳搜索结果。“仅完全匹配”只接受几乎一模一样的标题，其余由你自己挑。';

  @override
  String get watchMatchClosest => '最接近的匹配';

  @override
  String get watchMatchExact => '仅完全匹配';

  @override
  String get watchMetadataDesc =>
      '剧集标题、简介、缩略图、播出日期和填充集标记的来源。拖动设置优先级；第一个有值的源生效。';

  @override
  String get watchMetaAniZipDesc => '剧集标题、简介、剧照和播出日期';

  @override
  String get watchMetaKitsuDesc => '剧集标题、简介和缩略图';

  @override
  String get watchMetaSimklDesc => '剧集标题、简介、剧照和播出日期';

  @override
  String get watchMetaAniListDesc => '流媒体剧集标题、缩略图和播出时间表';

  @override
  String get watchMetaTenraiDesc =>
      '通过 Tenrai 获取 MyAnimeList 的剧集标题、播出日期、填充集和总集篇标记';

  @override
  String get watchClearMetadata => '刷新剧集详情';

  @override
  String get watchClearMetadataDesc => '清除缓存的剧集详情，下次重新获取';

  @override
  String get watchMetadataCleared => '将重新获取剧集详情';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 集',
      one: '1 集',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 话',
      one: '1 话',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return '第 $number 集';
  }

  @override
  String watchChapterNumber(String number) {
    return '第 $number 话';
  }

  @override
  String get watchSearching => '搜索中…';

  @override
  String watchSearchingFor(String term) {
    return '正在搜索：$term';
  }

  @override
  String watchSelected(String title) {
    return '已选择：$title';
  }

  @override
  String watchFound(String title) {
    return '已找到：$title';
  }

  @override
  String get watchNothingFound => '在这个源中没找到';

  @override
  String get watchSearchFailed => '源搜索失败';

  @override
  String get watchLoadFailed => '无法加载列表';

  @override
  String get watchSignInToTrack => '登录后才能追踪你的进度';

  @override
  String watchInstallSource(String action) {
    return '安装一个扩展后才能开始$action';
  }

  @override
  String get watchSourceMissing => '这个源还没安装';

  @override
  String get watchWrongTitle => '标题不对？';

  @override
  String get watchSearchAgain => '重新搜索';

  @override
  String watchSearchSource(String source) {
    return '搜索 $source';
  }

  @override
  String get watchSource => '源';

  @override
  String get watchOptions => '选项';

  @override
  String get watchReverse => '倒序';

  @override
  String get watchScanlators => '分组';

  @override
  String get watchResetOptions => '重置这些选项';

  @override
  String get watchContinue => '继续';

  @override
  String get watchStart => '开始';

  @override
  String get watchPlay => '播放';

  @override
  String get watchRead => '阅读';

  @override
  String get watchMarkWatched => '标记为已看';

  @override
  String get watchMarkUnwatched => '标记为未看';

  @override
  String get watchMarkRead => '标记为已读';

  @override
  String get watchMarkUnread => '标记为未读';

  @override
  String get watchFiller => '填充集';

  @override
  String get watchRecap => '总集篇';

  @override
  String get watchNoEpisodes => '没有找到剧集';

  @override
  String get watchNoChapters => '没有找到章节';

  @override
  String get watchSourceTools => '源工具';

  @override
  String get watchSourceSettings => '源设置';

  @override
  String get watchOpenWebView => '在 WebView 中打开';

  @override
  String get watchOpenWebViewDesc => '通过 Cloudflare 验证或登录；Cookie 会与源请求共享';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已为 $host 保存 $count 个 Cookie',
      one: '已为 $host 保存 1 个 Cookie',
      zero: '没有为 $host 保存 Cookie',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare 放行有效，$time';
  }

  @override
  String get watchClearanceMissing => '没有 Cloudflare 放行 Cookie';

  @override
  String get watchClearanceSession => '持续到应用关闭';

  @override
  String get watchAgentShared => '请求使用 WebView 的 user agent，Cloudflare 会检查它';

  @override
  String get watchAgentCustom =>
      '已设置自定义 user agent，所以来自 WebView 的 Cloudflare 放行可能会被拒绝';

  @override
  String get watchTestConnection => '测试连接';

  @override
  String get watchSolveChallenge => '去验证';

  @override
  String watchProbeOk(int code) {
    return '可访问（HTTP $code）';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare 仍在要求验证';

  @override
  String watchProbeBlocked(int code) {
    return '被网站拦截（HTTP $code）';
  }

  @override
  String get watchProbeFailed => '无法访问该网站';

  @override
  String get watchClearCookies => '清除此网站的 Cookie';

  @override
  String get watchCookiesCleared => '已清除 Cookie';

  @override
  String get watchFailTimeout => 'The check didn\'t finish in time';

  @override
  String get watchFailBlocked =>
      'The site blocked this device (access denied). A check won\'t help';

  @override
  String get watchFailTurnstile =>
      'This check needs a tap that the background solver can\'t do';

  @override
  String get watchFailLoad =>
      'The page didn\'t load. Check the connection and the site address';

  @override
  String get watchFailRejected =>
      'The site rejected the clearance it just gave. Try again or clear the cookies';

  @override
  String get watchFailDismissed => 'The check was closed before it finished';

  @override
  String get watchFailCooldown =>
      'You closed the check a moment ago. Press Solve it to try again';

  @override
  String get watchFailQuiet =>
      'The check needs you, and the app was working on its own';

  @override
  String get watchFailWebView => 'The background web view couldn\'t start';

  @override
  String get watchFailUnavailable => 'There is no screen to show the check on';

  @override
  String get watchStatusReady => 'Ready';

  @override
  String get watchStatusChallenge => 'Cloudflare check needed';

  @override
  String get watchStatusBlocked => 'Blocked by the site';

  @override
  String get watchStatusOffline => 'Can\'t reach the site';

  @override
  String get watchStatusUntested => 'Not tested yet';

  @override
  String get watchStatusTesting => 'Testing the connection…';

  @override
  String get watchStatusSolving => 'Passing the Cloudflare check…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare check passed in the background ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare check passed';

  @override
  String watchClearanceIssued(String time) {
    return 'earned $time';
  }

  @override
  String get watchClearanceStale =>
      'The clearance was earned with another user agent, so it isn\'t sent. Test the connection to get a new one';

  @override
  String get watchSectionConnection => 'Connection';

  @override
  String get watchSectionSession => 'Session';

  @override
  String get watchSectionTools => 'Tools';

  @override
  String get watchMetaSource => '剧集详情来源';

  @override
  String get watchMetaAuto => '自动';

  @override
  String get watchMetaOff => '关闭';

  @override
  String get playerSettingsTitle => '播放器设置';

  @override
  String get playerSectionPlayback => '播放';

  @override
  String get playerSectionSkip => '跳过';

  @override
  String get playerSectionGestures => '控制';

  @override
  String get playerSectionSubtitles => '字幕';

  @override
  String get playerSectionShaders => '着色器';

  @override
  String get playerSectionEngine => '引擎';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => '播放速度';

  @override
  String get playerCursedSpeed => '额外倍速';

  @override
  String get playerCursedSpeedDesc => '在列表中加入最高 10 倍的速度';

  @override
  String get playerResize => '缩放模式';

  @override
  String get playerFitFit => '适应';

  @override
  String get playerFitCover => '填满';

  @override
  String get playerFitStretch => '拉伸';

  @override
  String get playerSkipDuration => '跳过按钮时长';

  @override
  String get playerSkipDurationDesc => '在 OP 和 ED 之外，跳过按钮跳过的秒数';

  @override
  String get playerSeekDuration => '双击快进';

  @override
  String get playerSeekDurationDesc => '双击或按方向键时跳转的秒数';

  @override
  String get playerAutoPlay => '自动播放下一集';

  @override
  String get playerAutoPlayDesc => '这一集结束后自动开始下一集';

  @override
  String get playerResume => '从上次位置继续';

  @override
  String get playerResumeDesc => '从上次的位置继续播放';

  @override
  String get playerOrientation => '方向';

  @override
  String get playerOrientationAuto => '跟随设备';

  @override
  String get playerOrientationLandscape => '横屏';

  @override
  String get playerOrientationPortrait => '竖屏';

  @override
  String get playerAutoSkipOpening => '跳过 OP';

  @override
  String get playerAutoSkipEnding => '跳过 ED';

  @override
  String get playerAutoSkipRecap => '跳过总集篇';

  @override
  String get playerAutoSkipDesc => '一开始就直接跳过，依据 AniSkip 和视频流的时间戳';

  @override
  String get playerSkipOnce => '只跳过一次';

  @override
  String get playerSkipOnceDesc => '如果你拖回那一段，不会再次跳过';

  @override
  String get playerAdjustBrightness => '亮度手势';

  @override
  String get playerAdjustBrightnessDesc => '在屏幕右半边上下滑动';

  @override
  String get playerAdjustVolume => '音量手势';

  @override
  String get playerAdjustVolumeDesc => '在屏幕左半边上下滑动';

  @override
  String get playerHoldToSpeed => '长按加速';

  @override
  String get playerHoldToSpeedDesc => '按住视频即可加速播放，左右拖动可调整速度';

  @override
  String get playerThumbless => '加粗进度条';

  @override
  String get playerThumblessDesc => '不带滑块的粗进度条';

  @override
  String get playerShowSubtitles => '显示字幕';

  @override
  String get playerShowSubtitlesDesc => '关闭后会隐藏所有字幕轨';

  @override
  String get playerSubtitleLanguage => '首选字幕语言';

  @override
  String get playerSubtitleSize => '字幕大小';

  @override
  String get playerSubtitleWeight => '字幕粗细';

  @override
  String get playerSubtitleBottom => '字幕底部边距';

  @override
  String get playerSubtitleFont => '字幕字体';

  @override
  String get playerSubtitleColor => '字幕颜色';

  @override
  String get playerSubtitleBackground => '字幕背景';

  @override
  String get playerSubtitleOutline => '字幕描边';

  @override
  String get playerLibass => '使用 libass';

  @override
  String get playerLibassDesc => '渲染带样式的 .ass 字幕。上面的大小、颜色和字体将不再生效';

  @override
  String get playerShaders => '着色器';

  @override
  String get playerShadersEnable => '启用着色器';

  @override
  String get playerShadersEnableDesc => '用 Anime4K 这类 GLSL 着色器放大并优化画面';

  @override
  String get playerShadersOff => '着色器已关闭';

  @override
  String get playerShadersMissing => '未安装 Anime4K';

  @override
  String get playerShadersMissingDesc => '下载 Anime4K 着色器包（约 0.8 MB）以使用内置模式。';

  @override
  String get playerShadersDownload => '下载 Anime4K';

  @override
  String get playerPictureSave => 'Save this frame';

  @override
  String get playerPictureOriginal => 'Original';

  @override
  String get playerPictureOriginalDesc =>
      'The frame as the video has it, without shaders or colors';

  @override
  String get playerPictureProcessed => 'With shaders and colors';

  @override
  String get playerPictureProcessedDesc => 'The frame as you see it now';

  @override
  String get playerPictureSaved => 'Frame saved';

  @override
  String get playerPictureSaveFailed => 'Could not save the frame';

  @override
  String get playerShadersPreview => '在当前画面预览';

  @override
  String get playerShadersUse => '使用这个';

  @override
  String get playerPicture => '画面';

  @override
  String get playerColors => '颜色';

  @override
  String get playerColorDefault => '默认';

  @override
  String get playerColorVivid => '鲜艳';

  @override
  String get playerColorPop => '动漫风';

  @override
  String get playerColorSoft => '柔和';

  @override
  String get playerColorCinematic => '电影感';

  @override
  String get playerColorBright => '明亮';

  @override
  String get playerColorNight => '夜间';

  @override
  String get playerColorMono => '黑白';

  @override
  String get playerColorCustom => '自定义';

  @override
  String get playerColorBrightness => '亮度';

  @override
  String get playerColorContrast => '对比度';

  @override
  String get playerColorSaturation => '饱和度';

  @override
  String get playerColorGamma => '伽马';

  @override
  String get playerColorHue => '色相';

  @override
  String get playerColorReset => '重置';

  @override
  String get playerColorAdjust => '调整';

  @override
  String get playerShadersOriginal => '原始';

  @override
  String get playerShadersPreviewFailed => '无法截取画面用于预览';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => '你的着色器';

  @override
  String get playerShadersCustom => '自定义着色器';

  @override
  String get playerShadersImport => '导入 .glsl';

  @override
  String get playerShadersNone => '导入你自己的 .glsl 或 .hook 文件，勾选后可串联使用';

  @override
  String get playerShadersBadFile => '选择 .glsl 或 .hook 着色器文件';

  @override
  String get playerDecoder => '解码器';

  @override
  String get playerDecoderAuto => '自动';

  @override
  String get playerDecoderAutoSafe => '自动（安全）';

  @override
  String get playerDecoderSoftware => '软解';

  @override
  String get playerDecoderHardware => '硬解';

  @override
  String get playerDecoderHardwarePlus => '硬解+';

  @override
  String get playerVideoOutput => '视频输出';

  @override
  String get playerAudioChannels => '音频声道';

  @override
  String get playerBuffer => '缓冲区大小（MB）';

  @override
  String get playerBufferDesc => '播放器可用于缓冲视频流的内存';

  @override
  String get playerUseMpvConf => '使用 mpv.conf';

  @override
  String get playerUseMpvConfDesc => '开始播放时应用 mpv.conf 中的选项';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => '编辑 mpv 配置';

  @override
  String get playerMpvConfDesc =>
      '每行一个选项，就像普通 mpv.conf 里的 --hwdec=auto。[方括号] 里的配置组会被忽略。';

  @override
  String get playerMpvConfSaved => 'mpv.conf 已保存';

  @override
  String get playerUseScripts => '使用 mpv 脚本';

  @override
  String get playerUseScriptsDesc =>
      '从 scripts 文件夹加载插件。需要支持 Lua 或 JavaScript 的 libmpv 构建';

  @override
  String get playerScripts => 'mpv 脚本';

  @override
  String get playerScriptsManage => '添加、移除和开关插件';

  @override
  String get playerScriptsAdd => '添加脚本';

  @override
  String get playerScriptsDesc => '放在这里的 Lua、JavaScript 和原生插件会在开始播放时加载。';

  @override
  String get playerScriptsNone => '还没有脚本';

  @override
  String get playerScriptsBadFile => '选择 .lua、.js 或原生插件文件';

  @override
  String get playerTuning => '高级视频调节';

  @override
  String get playerTuningDesc => '覆盖同步、缓存、缩放和色调映射设置。数值设错可能影响播放';

  @override
  String get playerVideoSync => '视频同步';

  @override
  String get playerInterpolation => '帧插值';

  @override
  String get playerInterpolationDesc => '让动作更流畅，需要 display-resample 同步';

  @override
  String get playerPitch => '音调校正';

  @override
  String get playerPitchDesc => '在其他速度下保持人声自然';

  @override
  String get playerCacheSeconds => '缓存（秒）';

  @override
  String get playerReadahead => '预读（秒）';

  @override
  String get playerThreads => '解码线程数';

  @override
  String get playerDeband => '去色带';

  @override
  String get playerDebandDesc => '减少渐变中的色彩断层';

  @override
  String get playerDebandIterations => '去色带迭代次数';

  @override
  String get playerDebandThreshold => '去色带阈值';

  @override
  String get playerCorrectDownscaling => '正确缩小';

  @override
  String get playerSigmoid => 'Sigmoid 放大';

  @override
  String get playerScale => '放大算法';

  @override
  String get playerCscale => '色度放大算法';

  @override
  String get playerDscale => '缩小算法';

  @override
  String get playerToneMapping => '色调映射';

  @override
  String get playerTargetPeak => '目标峰值';

  @override
  String get playerOpenFiles => '打开视频文件';

  @override
  String get playerOpenFilesDesc => '播放这台设备上的文件';

  @override
  String get playerOpenFolder => '打开文件夹';

  @override
  String get playerOpenFolderDesc => '把文件夹里的所有视频当作播放列表播放';

  @override
  String get playerNetworkStream => '网络流';

  @override
  String get playerNetworkStreamDesc => '打开视频直链或 HLS 链接';

  @override
  String get playerStreamUrl => '流地址 URL';

  @override
  String get playerStreamReferer => 'Referer（可选）';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => '播放磁力链接或 .torrent 文件';

  @override
  String get playerMagnetLink => '磁力链接或 torrent URL';

  @override
  String get playerPickTorrent => '选择 .torrent 文件';

  @override
  String get playerTorrentMissing => '请先在 设置 > 附加组件 中安装 torrent 组件';

  @override
  String get playerNoVideos => '没有找到可播放的视频';

  @override
  String get playerReset => '重置播放器设置';

  @override
  String get playerResetDesc => '把所有播放器选项恢复为默认值';

  @override
  String get playerResetConfirm => '要重置所有播放器设置吗？';

  @override
  String get playerResetDone => '播放器设置已重置';

  @override
  String get playerQuality => '画质';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Hard Sub';

  @override
  String get streamGroupSoftSub => 'Soft Sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Raw';

  @override
  String get streamGroupOther => 'Other';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count streams',
      one: '1 stream',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => '视频流';

  @override
  String get playerAutoSelect => '自动选择视频流';

  @override
  String get playerAutoSelectDesc => '选择与你上次为该作品所选最接近的视频流';

  @override
  String get playerLoadingStreams => '正在查找视频流…';

  @override
  String get playerNoStreams => '这一集没有视频流';

  @override
  String get playerNoStreamsTitle => '没有找到视频流';

  @override
  String get playerFailed => '播放失败';

  @override
  String get playerTorrentNeeded => '这个视频流是 torrent';

  @override
  String get playerTorrentNeededDesc => '安装 torrent 组件后才能播放磁力链接和 .torrent 文件';

  @override
  String get playerOpenAddons => '打开附加组件';

  @override
  String get playerTryAnotherStream => '换个视频流试试';

  @override
  String get playerEpisodes => '剧集';

  @override
  String get playerLock => '锁定控制';

  @override
  String get playerFullscreen => '全屏';

  @override
  String get readerChapters => '章节';

  @override
  String get readerSettingsTitle => '阅读器设置';

  @override
  String get readerPreviousChapter => '上一话';

  @override
  String get readerNextChapter => '下一话';

  @override
  String get readerFirstChapter => '这是第一话';

  @override
  String get readerLastChapter => '你已经追到最新了';

  @override
  String get readerFailed => '无法打开这一话';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => '这一话没有文字';

  @override
  String get readerPerTitle => '仅此作品';

  @override
  String get readerPerTitleDesc => '这些阅读器设置只对这部作品生效';

  @override
  String get readerSectionReading => '阅读';

  @override
  String get readerSectionControls => '控制';

  @override
  String get readerSectionDisplay => '显示';

  @override
  String get readerSectionNovel => '轻小说';

  @override
  String get readerMode => '阅读模式';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => '从右到左';

  @override
  String get readerModeLtr => '从左到右';

  @override
  String get readerModeVertical => '竖向分页';

  @override
  String get readerModeWebtoon => '条漫';

  @override
  String get readerModeContinuous => '连续滚动';

  @override
  String get readerScale => '图片缩放';

  @override
  String get readerScaleFit => '适应屏幕';

  @override
  String get readerScaleWidth => '适应宽度';

  @override
  String get readerScaleHeight => '适应高度';

  @override
  String get readerScaleOriginal => '原始大小';

  @override
  String get readerScaleSmart => '智能适应';

  @override
  String get readerDoublePage => '双页';

  @override
  String get readerDoublePageDesc => '横屏时并排显示两页';

  @override
  String get readerDoubleTapZoom => '双击缩放';

  @override
  String get readerDoubleTapZoomDesc => '双击可放大或缩小页面';

  @override
  String get readerAnimate => '翻页动画';

  @override
  String get readerAnimateDesc => '翻页时播放动画';

  @override
  String get readerSidePadding => '两侧留白';

  @override
  String get readerSidePaddingDesc => '页面两侧的留白，按百分比';

  @override
  String get readerPageGap => '页面间距';

  @override
  String get readerPageGapDesc => '页面之间的间距';

  @override
  String get readerAutoNext => '连续读下一话';

  @override
  String get readerAutoNextDesc => '读到这一话末尾时就提前加载下一话';

  @override
  String get readerPreload => '预加载页面';

  @override
  String get readerPreloadDesc => '提前下载多少页';

  @override
  String get readerTapZones => '点击区域';

  @override
  String get readerTapDefault => '默认';

  @override
  String get readerTapLShaped => 'L 形';

  @override
  String get readerTapKindle => '类 Kindle';

  @override
  String get readerTapEdge => '仅边缘';

  @override
  String get readerTapOff => '已禁用';

  @override
  String get readerInvertTaps => '反转点击区域';

  @override
  String get readerInvertTapsDesc => '交换上一页和下一页的区域';

  @override
  String get readerBackground => '背景';

  @override
  String get readerBackgroundBlack => '黑色';

  @override
  String get readerBackgroundGray => '灰色';

  @override
  String get readerBackgroundWhite => '白色';

  @override
  String get readerBackgroundTheme => '应用主题';

  @override
  String get readerFilter => '颜色滤镜';

  @override
  String get readerFilterNone => '无';

  @override
  String get readerFilterGrayscale => '灰度';

  @override
  String get readerFilterInvert => '反色';

  @override
  String get readerFilterSepia => '棕褐色';

  @override
  String get readerFilterQuality => 'Image filter quality';

  @override
  String get readerFilterQualityNone => 'None (Nearest neighbor)';

  @override
  String get readerFilterQualityLow => 'Low (Bilinear)';

  @override
  String get readerFilterQualityMedium => 'Medium (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'High (Bicubic)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Rust high quality)';

  @override
  String get readerDim => '调暗';

  @override
  String get readerDimDesc => '让页面变暗';

  @override
  String get readerPageNumber => '页码';

  @override
  String get readerPageNumberDesc => '阅读时显示页码';

  @override
  String get readerFullscreen => '全屏';

  @override
  String get readerFullscreenDesc => '隐藏系统栏';

  @override
  String get readerCropBorders => '裁剪边缘';

  @override
  String get readerCropBordersDesc => '裁掉页面上空白的白边或黑边';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => '音量键翻页';

  @override
  String get readerVolumeKeysDesc => '音量减是下一页，音量加是上一页';

  @override
  String get readerBookmarks => '书签';

  @override
  String get readerBookmarkAdd => '添加书签';

  @override
  String get readerBookmarkRemove => '移除书签';

  @override
  String get readerBookmarksEmpty => '还没有书签';

  @override
  String readerBookmarkPage(int page, int total) {
    return '第 $page/$total 页';
  }

  @override
  String get readerAutoScroll => '自动滚动';

  @override
  String get readerAutoScrollStop => '停止自动滚动';

  @override
  String get readerAutoScrollSpeed => '自动滚动速度';

  @override
  String get readerAutoScrollSpeedDesc => '页面自动滚动或翻页的速度';

  @override
  String get readerKeepOn => '保持屏幕常亮';

  @override
  String get readerKeepOnDesc => '阅读时不让屏幕熄灭';

  @override
  String get readerOrientation => '方向';

  @override
  String get readerOrientationFree => '自由';

  @override
  String get readerOrientationPortrait => '竖屏';

  @override
  String get readerOrientationLandscape => '横屏';

  @override
  String get readerSaveProgress => '保存进度';

  @override
  String get readerSaveProgressDesc => '记住你读到的页数，并把章节标记为已读';

  @override
  String get readerReset => '重置阅读器设置';

  @override
  String get readerResetDesc => '恢复默认值';

  @override
  String get novelSize => '文字大小';

  @override
  String get novelFont => '字体';

  @override
  String get novelLineHeight => '行高';

  @override
  String get novelParagraph => '段落间距';

  @override
  String get novelMargin => '边距';

  @override
  String get novelTheme => '阅读器主题';

  @override
  String get novelThemeApp => '应用主题';

  @override
  String get novelThemeLight => '浅色';

  @override
  String get novelThemeSepia => '棕褐色';

  @override
  String get novelThemeDark => '深色';

  @override
  String get novelThemeBlack => '黑色';

  @override
  String get novelJustify => '两端对齐';

  @override
  String get novelJustifyDesc => '让文字对齐到两侧边缘';

  @override
  String get trackProgressTitle => '保存进度？';

  @override
  String trackProgressAnime(String name) {
    return '观看时要在你的列表里追踪 $name 吗？选“仅此设备”则只保存在本地，选“否”则什么都不保存。';
  }

  @override
  String trackProgressManga(String name) {
    return '读完一话后要在你的列表里追踪 $name 吗？选“仅此设备”则只保存在本地，选“否”则什么都不保存。';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Save your progress on $name to your list on this device as you watch?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Save your progress on $name to your list on this device when you finish a chapter?';
  }

  @override
  String get downloadClearQueue => 'Clear queue';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Cancel all $count downloads in the queue? What was already downloaded is deleted.';
  }

  @override
  String get castTitle => 'Cast to device';

  @override
  String get castSearching => 'Looking for devices on your network…';

  @override
  String get castNoDevices =>
      'No devices found. Make sure the TV or Chromecast is on the same Wi-Fi, then search again.';

  @override
  String get castRefresh => 'Search again';

  @override
  String get castFailed => 'Could not start casting';

  @override
  String get castStop => 'Stop casting';

  @override
  String castNowCasting(String name) {
    return 'Casting to $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku can\'t report or change the position';

  @override
  String get castControls => 'Controls';

  @override
  String get castVolume => 'TV volume';

  @override
  String castSkipPart(String name) {
    return 'Skip $name';
  }

  @override
  String get trackProgressRememberSeries => 'Remember for this series';

  @override
  String get trackProgressYes => '保存';

  @override
  String get trackProgressReset => '已重置此类型的保存进度提示，下次会再次询问';

  @override
  String get trackProgressNo => '否';

  @override
  String get trackProgressOff => '关闭';

  @override
  String get trackProgressLocal => '仅此设备';

  @override
  String get trackProgressSettingAnime => '追踪动画进度';

  @override
  String get trackProgressSettingManga => '追踪漫画和轻小说进度';

  @override
  String get trackProgressSettingDesc => '打开一集或读完一话时怎么处理';

  @override
  String get trackProgressAsk => '每次询问';

  @override
  String get trackProgressAlways => '总是';

  @override
  String get dantotsuImport => '从 Dantotsu 导入';

  @override
  String get dantotsuImportDesc => '读取 Dantotsu 设置备份（.ani，或加密的 .sani）';

  @override
  String get dantotsuPick => '选择 Dantotsu 备份';

  @override
  String get dantotsuNothing => '这个文件里没有可导入的内容';

  @override
  String get dantotsuApply => '导入所选项';

  @override
  String dantotsuDone(int done, int total) {
    return '已导入 $done/$total';
  }

  @override
  String get dantotsuGroupAccounts => '账号';

  @override
  String get dantotsuGroupAppearance => '外观';

  @override
  String get dantotsuGroupExtensions => '扩展';

  @override
  String get dantotsuGroupApp => '应用';

  @override
  String get dantotsuGroupPlayer => '播放器';

  @override
  String get dantotsuAnilist => 'AniList 登录';

  @override
  String get dantotsuMal => 'MyAnimeList 登录';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence Token';

  @override
  String get dantotsuTheme => '主题';

  @override
  String get dantotsuReposAnime => '动画扩展仓库';

  @override
  String get dantotsuReposManga => '漫画扩展仓库';

  @override
  String get dantotsuReposNovel => '轻小说扩展仓库';

  @override
  String get dantotsuUpdates => '检查更新';

  @override
  String get dantotsuComments => '评论';

  @override
  String get dantotsuActivity => 'AniList 通知轮询';

  @override
  String get dantotsuDns => 'DNS 服务商';

  @override
  String get dantotsuPlayer => '播放器速度和字幕颜色';

  @override
  String get dantotsuWarning => '此文件包含登录令牌，请妥善保管。';

  @override
  String get novelIndent => '段落缩进';

  @override
  String get novelIndentDesc => '每个段落首行缩进';

  @override
  String get novelLetterSpacing => '字间距';

  @override
  String get novelSectionTranslate => '翻译';

  @override
  String get sectionExperimental => '实验性';

  @override
  String get kitsuGraphqlDetail => '更快的详情页（GraphQL）';

  @override
  String get kitsuGraphqlDetailDesc => '用一次请求加载作品及其角色、制作人员和你的条目';

  @override
  String get togetherTitle => '一起看';

  @override
  String get togetherIntro => '粘贴朋友发给你的房间链接。你会马上加入，对方开始播放时播放器会自动打开。';

  @override
  String get togetherName => '你的名字';

  @override
  String get togetherConnecting => '连接中…';

  @override
  String get togetherLeave => '离开房间';

  @override
  String get togetherYou => '你';

  @override
  String get togetherNoChat => '还没有消息';

  @override
  String get togetherChatHint => '消息';

  @override
  String get togetherCopyInvite => '复制邀请';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => '已复制服务器和房间';

  @override
  String get togetherConnectionLost => '连接已断开';

  @override
  String togetherConnectedTo(String room) {
    return '已连接到 $room';
  }

  @override
  String togetherFailed(String error) {
    return '无法连接：$error';
  }

  @override
  String togetherJoined(String name) {
    return '$name 加入了';
  }

  @override
  String togetherLeft(String name) {
    return '$name 离开了';
  }

  @override
  String togetherPaused(String name) {
    return '$name 暂停了';
  }

  @override
  String togetherResumed(String name) {
    return '$name 继续播放了';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name 跳转到了 $time';
  }

  @override
  String get togetherFollowFailed => '无法打开房主的那一集，请自己打开。';

  @override
  String get togetherJoinRole => '加入房间';

  @override
  String get togetherOpenHost => '打开房主的剧集';

  @override
  String get togetherShowChat => '显示实时聊天';

  @override
  String get togetherWaitingHost => '正在等待房主开始播放';

  @override
  String get togetherRoomLink => '房间链接';

  @override
  String get togetherBadLink => '这不是房间链接';

  @override
  String get togetherHostClosed => '房主关闭了房间';

  @override
  String get togetherNowPlaying => '正在播放';

  @override
  String togetherWatchingCount(int count) {
    return '$count 人在看';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user 想暂停';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user 想继续播放';
  }

  @override
  String get togetherChip => '一起';

  @override
  String get togetherSettingsDesc => '通过链接加入朋友的房间';

  @override
  String get novelBilingual => '显示原文和译文';

  @override
  String get novelBilingualDesc => '每个段落显示原文，译文在下方';

  @override
  String get novelTranslateTo => '翻译为';

  @override
  String get novelTranslateOff => '关闭';

  @override
  String get novelSectionSpeech => '文字转语音';

  @override
  String get novelSpeechRate => '朗读速度';

  @override
  String get novelSpeechPitch => '朗读音调';

  @override
  String get novelSpeak => '朗读出来';

  @override
  String get novelSpeakStop => '停止朗读';

  @override
  String get novelTranslate => '翻译本话';

  @override
  String get novelTranslateShowOriginal => '显示原文';

  @override
  String novelTranslateFailed(String error) {
    return '翻译失败：$error';
  }

  @override
  String get novelSpeechUnavailable => '这台设备不支持文字转语音';

  @override
  String get novelSpeechVoice => '声音';

  @override
  String get novelSpeechVoiceDefault => '系统默认';

  @override
  String get novelSpeakPrevious => '上一行';

  @override
  String get novelSpeakNext => '下一行';

  @override
  String get novelTapPaging => '点按边缘翻页';

  @override
  String get novelTapPagingDesc => '点按左侧或右侧滚动一页，点中间显示控制栏';

  @override
  String get novelPaged => 'Page turning';

  @override
  String get novelPagedDesc =>
      'Split the chapter into pages and swipe or tap to turn them instead of scrolling';

  @override
  String novelPageOf(int current, int total) {
    return 'Page $current of $total';
  }

  @override
  String get novelPaginating => 'Laying out pages';

  @override
  String get novelTools => 'Contents, search and highlights';

  @override
  String get novelContents => 'Contents';

  @override
  String get novelContentsEmpty => 'This chapter has no headings';

  @override
  String get novelSearch => 'Search';

  @override
  String get novelSearchHint => 'Search in this chapter';

  @override
  String get novelSearchNone => 'No matches';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count matches',
      one: '1 match',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Highlights';

  @override
  String get novelHighlightsEmpty =>
      'Select some text and tap Highlight to keep it here';

  @override
  String get novelHighlight => 'Highlight';

  @override
  String get novelHighlightNote => 'Note';

  @override
  String get novelHighlightNoteHint => 'Add a note';

  @override
  String get novelHighlightRemove => 'Remove highlight';

  @override
  String get novelHighlightFailed =>
      'Couldn\'t match that selection to the text';

  @override
  String novelMinutesLeft(int count) {
    return '还剩 $count 分钟';
  }

  @override
  String get novelBold => '加粗文字';

  @override
  String get novelBoldDesc => '使用更粗的字重';

  @override
  String readerFinishedChapter(String chapter) {
    return '已读完 $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return '下一话：$chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return '上一话：$chapter';
  }

  @override
  String get readerNoPages => '这一话没有页面';

  @override
  String get readerLoadingPages => '正在加载页面…';

  @override
  String get readerSlowPage => '这一页还在加载…';

  @override
  String get readerPageFailed => '无法加载这一页';

  @override
  String get playerShowComments => '显示评论';

  @override
  String get playerHideComments => '隐藏评论';

  @override
  String get playerSubtitles => '字幕';

  @override
  String get playerSubtitlesOff => '字幕已关闭';

  @override
  String get playerAudio => '音频';

  @override
  String get playerAddSubtitle => '添加字幕文件';

  @override
  String get playerAddAudio => '添加音频文件';

  @override
  String get playerChapters => '章节';

  @override
  String get playerSkipSubmit => 'Submit skip times';

  @override
  String get playerSkipSubmitDesc =>
      'Mark where the opening, ending or recap starts and ends in this episode and share it with AniSkip, so everyone gets the skip button.';

  @override
  String get playerSkipStart => 'Start';

  @override
  String get playerSkipEnd => 'End';

  @override
  String get playerSkipUseNow => 'Use current position';

  @override
  String get playerSkipSend => 'Submit to AniSkip';

  @override
  String get playerSkipSent => 'Skip times submitted to AniSkip, thank you';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip refused the skip times: $error';
  }

  @override
  String get playerUnsupported =>
      'The video player can\'t run on this device (its Android version is too old for the bundled player library). Tap to copy the details.';

  @override
  String get playerSkipNoMal =>
      'This title has no MyAnimeList id, AniSkip can\'t take it';

  @override
  String get playerNoChapters => '没有章节';

  @override
  String get playerTimestamp => '时间戳';

  @override
  String get playerAutoPlayDelay => '下一集倒计时';

  @override
  String get playerWatchedAt => '计为已看的时间点';

  @override
  String playerNextIn(int seconds) {
    return '$seconds 秒后播放下一集';
  }

  @override
  String get playerPlayNow => '立即播放';

  @override
  String playerAutoSkipOn(String name) {
    return '$name：此作品将自动跳过';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name：此作品不会自动跳过';
  }

  @override
  String get playerAudioLanguage => '首选音频语言';

  @override
  String get playerLanguageOrderHint => '多个语言用逗号分隔，使用找到的第一个。';

  @override
  String get playerPip => '画中画';

  @override
  String get playerAutoPip => '离开时进入画中画';

  @override
  String get playerAutoPipDesc => '离开应用时，在小窗口里继续播放';

  @override
  String playerAutoPlaying(String title) {
    return '接下来播放 $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return '无法安装着色器：$error';
  }

  @override
  String playerChapter(int number) {
    return '第 $number 话';
  }

  @override
  String get playerPerTitle => '仅此作品';

  @override
  String get playerPerTitleDesc => '这些选项只对这部作品生效，不影响你的默认设置';

  @override
  String get playerSwapGestures => '左右滑动互换';

  @override
  String get playerSwapGesturesDesc => '左边调亮度，右边调音量';

  @override
  String get playerOpenBig => '以大画面打开';

  @override
  String get playerOpenBigDesc => '播放器直接全屏启动，不显示剧集列表';

  @override
  String get playerPauseOnBlur => '失去焦点时暂停';

  @override
  String get playerPauseOnBlurDesc => '应用被通知栏等遮住时暂停，回来后自动继续';

  @override
  String get playerAudioOutput => '音频输出';

  @override
  String get fontAppDefault => '应用字体';

  @override
  String get fontImport => '导入字体';

  @override
  String get fontSample => '天地玄黄，宇宙洪荒，日月盈昃，辰宿列张';

  @override
  String get playerSubtitleDelay => '字幕延迟';

  @override
  String get playerAudioDelay => '音频延迟';

  @override
  String get playerDelayReset => '重置';

  @override
  String get playerOnlineSubtitles => '在线字幕';

  @override
  String get playerOnlineSearchHint => '标题和集数';

  @override
  String get playerOnlineNone => '没有找到字幕';

  @override
  String playerOnlineFailed(String error) {
    return '字幕搜索失败：$error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return '无法下载此字幕：$error';
  }

  @override
  String get playerOnlineMatch => '匹配此文件';

  @override
  String get playerOnlineEpisode => '集数匹配';

  @override
  String playerOnlineDownloads(int count) {
    return '$count 次下载';
  }

  @override
  String get playerSeekPreview => '拖动预览';

  @override
  String get playerSeekPreviewDesc =>
      '拖动进度条时在上方显示小画面预览。会额外打开一个低分辨率解码器，所以在视频流上会多用流量。';

  @override
  String get playerSettingsChip => '设置';

  @override
  String get playerAudioDevice => '音频设备';

  @override
  String get settingsDownloads => '下载';

  @override
  String get settingsDownloadsDesc => '离线剧集、队列和离线模式';

  @override
  String get downloadsTitle => '下载';

  @override
  String get widgetContinue => 'Continue';

  @override
  String get widgetReleases => 'Releasing soon';

  @override
  String get widgetMore => 'Also in progress';

  @override
  String get widgetNothing => 'Nothing to continue yet';

  @override
  String get downloadStorageTitle => 'Storage';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads',
      one: '1 download',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size already watched or read';
  }

  @override
  String get downloadFreeUp => 'Free up space';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count watched downloads',
      one: '1 watched download',
    );
    return 'Delete $_temp0 and free $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Freed $size';
  }

  @override
  String get downloadDeleteWatched => 'Delete watched';

  @override
  String get downloadDeleteAll => 'Delete all';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Delete every download of $title?';
  }

  @override
  String get downloadNothingWatched =>
      'Nothing you have finished is downloaded';

  @override
  String get downloadStorageEmpty => 'No downloads are using space';

  @override
  String get downloadsOpenDesc => '查看队列以及这台设备上保存的所有内容';

  @override
  String get downloadTitle => '下载';

  @override
  String get downloadAlready => '已下载或在队列中';

  @override
  String get downloadPickStream => '下载哪个视频流？';

  @override
  String get downloadPickSubtitle => '下载哪个字幕？';

  @override
  String get downloadPickAudio => '下载哪个音轨？';

  @override
  String get downloadNoAudio => '不要额外音频';

  @override
  String get downloadAudio => '音频';

  @override
  String get downloadNoSubtitle => '无字幕';

  @override
  String get downloadHlsNeedsFfmpeg => '这个视频流是 HLS 播放列表，下载需要 FFmpeg 组件。';

  @override
  String get downloadSourceMissing => '这一集的源还没安装';

  @override
  String get downloadWaitingConnection => '等待网络连接';

  @override
  String get downloadSubtitles => '字幕';

  @override
  String get downloadDownloaded => '已下载';

  @override
  String get downloadOffline => '离线';

  @override
  String get downloadDelete => '删除下载';

  @override
  String get downloadCancel => '取消';

  @override
  String get downloadPause => '暂停';

  @override
  String get downloadPaused => '已暂停';

  @override
  String get downloadResume => '继续';

  @override
  String get downloadPauseAll => '全部暂停';

  @override
  String get downloadResumeAll => '全部继续';

  @override
  String get downloadQueuedState => '队列中等待';

  @override
  String get downloadResolving => '正在获取视频流…';

  @override
  String get downloadUsedFallback => '没有匹配的视频流，已使用第一个';

  @override
  String get downloadTabQueue => '队列';

  @override
  String get downloadTabDone => '完成';

  @override
  String get downloadTabFailed => '失败';

  @override
  String get downloadEmptyQueue => '没有正在下载的内容';

  @override
  String get downloadEmptyDone => '还没有下载任何内容';

  @override
  String get downloadEmptyFailed => '没有失败的下载';

  @override
  String get downloadNext => '下一集';

  @override
  String downloadNextN(int count) {
    return '接下来 $count 集';
  }

  @override
  String downloadUnwatched(int count) {
    return '所有未看（$count）';
  }

  @override
  String downloadRange(int count) {
    return '此范围（$count）';
  }

  @override
  String downloadAll(int count) {
    return '所有剧集（$count）';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已把 $count 集加入队列',
      one: '已把 1 集加入队列',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name 已下载';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name 下载失败';
  }

  @override
  String downloadStorage(String size) {
    return '下载已占用 $size';
  }

  @override
  String get downloadQueueHeader => '队列';

  @override
  String get downloadParallel => '同时下载数';

  @override
  String get downloadParallelDesc => '一次下载一个，或同时下载多个';

  @override
  String get downloadOneByOne => '逐个下载';

  @override
  String get downloadNotifications => '下载通知';

  @override
  String get downloadNotificationsDesc => '系统支持时显示实时进度，否则在下载完成时提示一下';

  @override
  String get downloadNotifyLive => '实时';

  @override
  String get downloadNotifyDone => '完成时';

  @override
  String get downloadNotifyOff => '关闭';

  @override
  String get downloadInfoFile => '在每个下载旁写入信息文件';

  @override
  String get downloadInfoFileDesc => '把视频流、画质、字幕和跳过时间保存为一个小的 .json 文件';

  @override
  String get offlineHeader => '离线';

  @override
  String get offlineModeDesc => '“自动”只会在应用启动时没有网络才进入离线。“总是”则一直保持离线，直到你修改。';

  @override
  String get offlineModeOff => '关闭';

  @override
  String get offlineModeAlways => '总是';

  @override
  String get offlineModeOn => '离线模式已开启。更改会先保存在这里，等你恢复联网后再发送。';

  @override
  String get offlineSaved => '已保存在这台设备上，联网后会同步';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '已同步 $count 项更改',
      one: '已同步 1 项更改',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 项更改等待同步',
      one: '1 项更改等待同步',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => '等待同步的更改';

  @override
  String get offlinePendingNone => '没有在等待的内容';

  @override
  String get offlineSyncNow => '立即同步';

  @override
  String get offlineDiscard => '丢弃';

  @override
  String get downloadNotOffline => '这一集还没下载，所以离线时无法使用';

  @override
  String get offlineModeChip => '离线';

  @override
  String get downloadNextChapter => '下一话';

  @override
  String downloadNextChapters(int count) {
    return '接下来 $count 话';
  }

  @override
  String downloadUnread(int count) {
    return '所有未读（$count）';
  }

  @override
  String downloadAllChapters(int count) {
    return '所有章节（$count）';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done/$total 页';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count 页';
  }

  @override
  String get downloadFfmpegTitle => '需要 FFmpeg 组件';

  @override
  String get downloadFfmpegBody =>
      '这个视频流是 HLS 播放列表。FFmpeg 组件会把它的分片合并成一个 mp4 文件。没有它的话，分片会保留在剧集文件夹里，并从那里播放。';

  @override
  String get downloadFfmpegInstall => '安装';

  @override
  String get downloadFfmpegInstalling => '正在安装 FFmpeg，可能需要一会儿…';

  @override
  String get downloadFinishing => '正在把分片合并成一个文件…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done/$total 个分片';
  }

  @override
  String get downloadTorrentNoFile => '这个 torrent 里没有可下载的视频文件';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '正在下载 $count 项',
      one: '正在下载 1 项',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => '删除已看的下载';

  @override
  String get downloadAutoDeleteDesc => '当你的进度到达那一集或那一话时，自动删除对应的下载';

  @override
  String get downloadConnections => '每个下载的连接数';

  @override
  String get downloadConnectionsDesc => '把大文件拆成几部分同时下载。有些服务器会限制这个。';

  @override
  String get downloadPlayChoice => '播放来源';

  @override
  String get downloadPlayLocalDesc => '保存在这台设备上的文件';

  @override
  String get downloadPlayStream => '在线播放';

  @override
  String get downloadPlayStreamDesc => '从源加载剧集';

  @override
  String get offlineFeedTitle => '已下载到这台设备';

  @override
  String get offlineFeedEmpty => '联网时下载点什么，它就会显示在这里';

  @override
  String get offlineEnabled => '离线模式已开启';

  @override
  String get offlineDisabled => '离线模式已关闭';

  @override
  String get downloadReadChoice => '阅读来源';

  @override
  String get downloadReadLocalDesc => '保存在这台设备上的页面';

  @override
  String get downloadReadOnline => '在线阅读';

  @override
  String get downloadReadOnlineDesc => '从源加载章节';

  @override
  String downloadDeleteConfirm(String name) {
    return '要把 $name 从这台设备上删除吗？';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '要取消下载 $name 吗？已下载的部分会被删除。';
  }

  @override
  String get downloadFfmpegFolder => '保留为文件夹';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '要丢弃从未发送的这 $count 项更改吗？此操作无法撤销。',
      one: '要丢弃从未发送的这项更改吗？此操作无法撤销。',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => '等待 Wi-Fi';

  @override
  String get downloadWaitingMetered => '因计费网络已暂停';

  @override
  String get downloadWifiOnly => '仅限 Wi-Fi';

  @override
  String get downloadWifiOnlyDesc => '使用移动数据时，下载会先等着';

  @override
  String get downloadMetered => '在计费网络上暂停';

  @override
  String get downloadMeteredDesc => '被设备标记为计费的 Wi-Fi 也会等待';

  @override
  String get downloadSpeedLimit => '速度限制';

  @override
  String get downloadSpeedLimitDesc => '限制下载总速度';

  @override
  String get downloadUnlimited => '不限速';

  @override
  String get downloadMoveToTop => '移到最前';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds 个做种 · $peers 个节点';
  }

  @override
  String get downloadTorrentFile => '哪个文件？';

  @override
  String get downloadTorrentAuto => '自动匹配剧集';

  @override
  String get downloadTorrentLoading => '正在读取 torrent…';

  @override
  String get watchAutoSource => '自动切换到下一个源';

  @override
  String get watchAutoSourceDesc => '如果源找不到该作品或加载失败，就试试下一个已安装的源';

  @override
  String get extensionTest => '测试扩展';

  @override
  String get extensionTestCopy => '复制失败项及其日志';

  @override
  String get extensionTestQuery => '搜索词';

  @override
  String get extensionTestRun => '运行';

  @override
  String get extensionTestStop => '停止';

  @override
  String get extensionTestNone => '没有该类型的已安装扩展';

  @override
  String get extensionTestNotRun => '尚未测试';

  @override
  String get extensionTestSearch => '搜索';

  @override
  String get extensionTestDetail => '详情';

  @override
  String get extensionTestUnits => '剧集 / 章节';

  @override
  String get extensionTestLinks => '视频流 / 页面';

  @override
  String extensionTestFailedAt(String step) {
    return '在$step步骤失败';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '已测试 $done/$total · $passed 通过 · $failed 失败';
  }

  @override
  String get extensionTestCopyLogs => '复制全部内容和完整日志';

  @override
  String get onboardingFeaturesTitle => '一站搞定';

  @override
  String get onboardingFeaturesBody => '你追的、看的、读的一切，不用再来回切换各种应用。';

  @override
  String get onboardingFeatureTrack => '追踪一切';

  @override
  String get onboardingFeatureTrackDesc =>
      '在 AniList、MyAnimeList、Simkl、Kitsu 和 MangaBaka 上管理列表、进度和评分。';

  @override
  String get onboardingFeatureWatch => '观看与阅读';

  @override
  String get onboardingFeatureWatchDesc => '安装扩展，直接在应用里看动画、读漫画和轻小说。';

  @override
  String get onboardingFeatureOffline => '离线也能用';

  @override
  String get onboardingFeatureOfflineDesc => '下载剧集和章节，没有网络也能接着看。';

  @override
  String get onboardingFeatureSync => '保持列表同步';

  @override
  String get onboardingFeatureSyncDesc => '在各个服务之间镜像你的列表，或者让进度领先的那边说了算。';

  @override
  String get onboardingServices => '兼容';

  @override
  String sourceNotifyOn(String source) {
    return 'You\'ll be told when $source has something new';
  }

  @override
  String get sourceNotifyOff => 'Release notifications off';

  @override
  String get sourceNotifyNeedsSource => 'Pick a source with a match first';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Everything ($count) is already out, nothing to wait for';
  }

  @override
  String get sourceNotifyTooltipOn => 'Stop release notifications';

  @override
  String get sourceNotifyTooltipOff => 'Notify me about new releases';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Episode $number is out on $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Episodes $from–$to are out on $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Chapter $number is out on $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Chapters $from–$to are out on $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count titles have something new';
  }

  @override
  String get navSources => 'Sources';

  @override
  String sourceInactiveOpen(String manager) {
    return 'This source belongs to $manager, which isn\'t the active extension service';
  }

  @override
  String get sourceAlertsHeader => 'Release notifications';

  @override
  String get sourceAlertsSwitch => 'Check subscribed titles';

  @override
  String get sourceAlertsSwitchDesc =>
      'Once each time the app opens, for titles you turned the bell on';

  @override
  String get sourceSkipUnstarted => 'Skip titles you haven\'t started';

  @override
  String get sourceSkipUnstartedDesc =>
      'Nothing watched or read yet, but episodes already exist';

  @override
  String get sourceSkipUnseen => 'Skip while you have unseen episodes';

  @override
  String get sourceSkipUnseenDesc =>
      'You still have released episodes to catch up on';

  @override
  String get sourceManage => 'Subscriptions';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titles',
      one: '1 title',
      zero: 'No titles',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Check now';

  @override
  String get sourceCheckNowDesc => 'Ignores the schedule and the skip rules';

  @override
  String get sourceChecking => 'Checking…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titles have something new',
      one: '1 title has something new',
      zero: 'Nothing new',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'No subscriptions yet';

  @override
  String get sourceEmptyMessage =>
      'Tap the bell above a title\'s episodes to be told about new ones';

  @override
  String get sourceAll => 'All';

  @override
  String sourceInactive(String manager) {
    return 'Inactive: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source isn\'t installed in this extension service';
  }

  @override
  String get sourceUnreachable => 'Source isn\'t responding';

  @override
  String get sourceFinished => 'Finished';

  @override
  String get sourceSkippedCompleted => 'Skipped: completed';

  @override
  String get sourceSkippedUnstarted => 'Skipped: not started';

  @override
  String get sourceSkippedUnseen => 'Skipped: unseen episodes';

  @override
  String get sourceWaiting => 'Waiting for the next release';

  @override
  String sourceNextCheck(String when) {
    return 'Next check $when';
  }

  @override
  String get sourceSoon => 'soon';

  @override
  String sourceInHours(int count) {
    return 'in ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'in ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Latest: $number';
  }

  @override
  String get sourceMute => 'Mute';

  @override
  String get sourceUnmute => 'Unmute';

  @override
  String get sourceMuted => 'Muted';

  @override
  String get sourceUnsubscribe => 'Unsubscribe';

  @override
  String get sourcePickAnother => 'Pick another source';

  @override
  String get sourceOpenExtensions => 'Open extensions';

  @override
  String get sourceNoticesEmpty => 'No release notices yet';

  @override
  String get sourceNoticesEmptyMessage =>
      'New episodes and chapters from your subscribed titles show up here';

  @override
  String get sourceOpenTitle => 'Open title';

  @override
  String get extensionsLoading => 'Loading extensions…';

  @override
  String get updateWhatsNew => 'What\'s new';

  @override
  String get updateLater => 'Later';

  @override
  String get updateSkipVersion => 'Skip this version';

  @override
  String get updatePreparing => 'Preparing…';

  @override
  String get updateDownloading => 'Downloading';

  @override
  String get updateInstalling => 'Installing…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done of $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Released $date';
  }

  @override
  String get updateNoAsset => 'This release has no download for your device';

  @override
  String get updateUpToDate => 'You\'re on the latest version';

  @override
  String get updateIosHint =>
      'iOS builds aren\'t on the App Store. Grab the .ipa from the release page and sideload it with AltStore or SideStore';

  @override
  String get updateOpenedBrowser => 'Check your browser';

  @override
  String get updateTryAgain => 'Try again';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsNotificationsDesc =>
      'Alerts for your lists, new episodes and chapters, and comment replies';

  @override
  String get settingsAboutUpdates => 'About & updates';

  @override
  String get settingsAboutUpdatesDesc =>
      'App updates, version, logs, links and support';

  @override
  String get settingsGroupAccount => 'Your account';

  @override
  String get settingsGroupContent => 'Content';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Player, subtitles, skipping, episode list and episode details';

  @override
  String get settingsMangaDesc =>
      'Reader mode, controls, display and chapter tracking';

  @override
  String get settingsNovelDesc =>
      'Text, page turning, translation and read aloud';

  @override
  String get settingsLocalPlay => 'Local play';

  @override
  String get settingsLocalPlayDesc =>
      'Play files, folders, network streams and torrents, or open a book';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Books';

  @override
  String get settingsWatchSections => 'Sections';

  @override
  String get settingsSectionLists => 'Episode and chapter lists';

  @override
  String get settingsSectionProgress => 'Progress tracking';

  @override
  String get updateChannelDesc =>
      'Stable is the tested release. Pre-release and Alpha get new features sooner but may break';

  @override
  String get checkNowDesc => 'Look for a newer version right away';

  @override
  String get generalSectionBasics => 'Language & behaviour';

  @override
  String get generalSectionSecurity => 'Security';

  @override
  String get generalSectionPrivacy => 'Privacy';

  @override
  String notificationsOtherService(String service) {
    return 'Switch to $service to open this';
  }

  @override
  String get secPlayerPlayback =>
      'Default speed, auto play, video fit, orientation and picture in picture';

  @override
  String get secPlayerSkip => 'Skip openings, endings and recaps automatically';

  @override
  String get secPlayerControls =>
      'Swipe, hold and tap gestures and seek preview';

  @override
  String get secPlayerSubtitles =>
      'Languages, appearance and subtitle rendering';

  @override
  String get secPlayerShaders => 'Anime upscaling and your own shaders';

  @override
  String get secPlayerEngine =>
      'Decoder, video and audio output, buffering. Only change these if playback has problems';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts and advanced tuning';

  @override
  String get secAnimeList => 'Filler episodes and unwatched thumbnails';

  @override
  String get secProgress =>
      'When your watched or read progress is saved to your list';

  @override
  String get secAnimeDetails =>
      'Where episode titles, thumbnails and summaries come from';

  @override
  String get secReaderReading =>
      'Reading mode, page turning, zoom and next chapter';

  @override
  String get secReaderControls => 'Tap zones, volume keys and auto scroll';

  @override
  String get secReaderDisplay =>
      'Background, brightness, fullscreen and page number';

  @override
  String get secNovelText => 'Font, size, spacing, margins and page turning';

  @override
  String get secNovelTranslate => 'Translate chapters while you read';

  @override
  String get secNovelSpeech => 'Voice, speed and pitch for read aloud';

  @override
  String get secNotifyAbout => 'Pick which kinds of activity send an alert';

  @override
  String get layoutTitle => 'Layout';

  @override
  String get layoutDesc => 'Choose, move and hide the buttons on the bars';

  @override
  String get layoutHint =>
      'Drag a button to move it (hold first on a touch screen). Tap one to cut, move or hide it';

  @override
  String layoutDropInto(String zone) {
    return 'Drop in: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Moving $name. Press a paste button to place it';
  }

  @override
  String get layoutTitleFixed => 'Title';

  @override
  String get layoutZoneTopStart => 'Top bar, before the title';

  @override
  String get layoutZoneTopEnd => 'Top bar, after the title';

  @override
  String get layoutZoneBottomStart => 'Bottom bar, left';

  @override
  String get layoutZoneBottomEnd => 'Bottom bar, right';

  @override
  String get layoutZoneSecondRow => 'Hidden: second row in normal view';

  @override
  String get layoutZoneOverflow => 'Hidden: in the more menu';

  @override
  String get layoutEmptyZone => 'Drop buttons here';

  @override
  String get layoutCut => 'Cut';

  @override
  String get layoutPaste => 'Paste here';

  @override
  String get layoutHide => 'Hide';

  @override
  String layoutMoveTo(String zone) {
    return 'Move to $zone';
  }

  @override
  String get layoutReset => 'Reset to default';

  @override
  String get layoutMore => 'More';

  @override
  String get sourceWhyAction => 'Why no alert?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Last checked';

  @override
  String get sourceWhyNever => 'Not yet';

  @override
  String get sourceWhyNextCheck => 'Next check';

  @override
  String get sourceWhyNewest => 'Newest at the source';

  @override
  String get sourceWhyProgress => 'Your progress';

  @override
  String get sourceWhyListStatus => 'List status';

  @override
  String get sourceWhyFailures => 'Failed checks in a row';

  @override
  String get sourceWhyLastRelease => 'Last new release seen';

  @override
  String get sourceWhyVerdictNew =>
      'A new release appears here as soon as the source lists it and the next check runs.';

  @override
  String get sourceWhyVerdictAhead =>
      'The source is already ahead of your progress, so you were told about it once. Read or watch up to it to get the next alert.';

  @override
  String get sourceWhyVerdictSkipped =>
      'This title is skipped by the rules above. Change them in notification settings, or use Check now to run it anyway.';

  @override
  String get sourceWhyVerdictBroken =>
      'The source can\'t be reached or has been removed, so nothing is being checked.';

  @override
  String get sourceWhyVerdictMuted => 'This subscription is muted.';

  @override
  String get externalPlayerTitle => 'Open stream elsewhere';

  @override
  String get externalCopyUrl => 'Copy stream link';

  @override
  String get externalCopied => 'Stream link copied';

  @override
  String get externalChooser => 'Open in another app';

  @override
  String get externalVlc => 'Open in VLC';

  @override
  String get externalMpv => 'Open in mpv';

  @override
  String get externalFailed =>
      'Couldn\'t open the stream. Is the player installed?';

  @override
  String get addonInstalled => 'Installed';

  @override
  String get loadFailedActivity => 'Couldn\'t load activity';

  @override
  String get loadFailedFavourites => 'Couldn\'t load favourites. Retry';

  @override
  String get loadFailedStats => 'Couldn\'t load stats';

  @override
  String get loadFailedReplies => 'Couldn\'t load replies';

  @override
  String get cantBeUndone => 'This can\'t be undone.';

  @override
  String get searchTags => 'Search tags';

  @override
  String get spoilerTapToView => ' Spoiler, tap to view ';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Someone';

  @override
  String get notificationATitle => 'a title';

  @override
  String get notificationAddedDetail => 'Was added to AniList';

  @override
  String get updateNoReleases => 'No releases found';

  @override
  String get updateInvalidResponse => 'Invalid update response';

  @override
  String get commentsRateLimited => 'Rate limited';

  @override
  String get commentsConnectFailed => 'Failed to connect';

  @override
  String get dnsNoRecords => 'No A records returned';

  @override
  String get importTokenRejected => 'Token rejected';

  @override
  String get developerRoleLead => 'Lead Developer';

  @override
  String get developerRoleModerator => 'Discord Moderator';

  @override
  String extensionManagerTitle(String type) {
    return '$type manager';
  }

  @override
  String extensionsOfType(String type) {
    return '$type extensions';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name settings';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name doesn\'t provide any settings.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Episode $episode of $title aired';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Episode $episode aired';
  }

  @override
  String notificationAdded(String title) {
    return '$title was added to AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Update server couldn\'t find that release: $message';
  }
}

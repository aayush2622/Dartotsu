// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'НОВОЕ лучшее приложение,\nчтобы отслеживать аниме и мангу';

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
  String get loadMore => 'Загрузить ещё';

  @override
  String get login => 'Войти';

  @override
  String get continueAsGuest => 'Продолжить как гость';

  @override
  String get getStarted => 'Начать';

  @override
  String get loginWithToken => 'Войти по токену';

  @override
  String get pasteTokenHint => 'Вставь свой токен доступа';

  @override
  String loginTo(String service) {
    return 'Вход в $service';
  }

  @override
  String get settings => 'Настройки';

  @override
  String get account => 'Аккаунт';

  @override
  String get about => 'О приложении';

  @override
  String get language => 'Язык';

  @override
  String get animationSpeed => 'Анимации';

  @override
  String get animationSpeedDesc =>
      'Скорость переходов и эффектов появления по всему приложению';

  @override
  String get animationSpeedOff => 'Выкл.';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Расширения',
      many: 'Расширений',
      few: 'Расширения',
      one: 'Расширение',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Неизвестный источник';

  @override
  String get install => 'Установить';

  @override
  String get update => 'Обновить';

  @override
  String get uninstall => 'Удалить';

  @override
  String get updateInstallCancelled =>
      'Установка отменена. Если Android написал, что приложение конфликтует с установленным, значит подпись отличается: сначала удали текущую версию, потом установи обновление';

  @override
  String updateInstallFailed(String error) {
    return 'Не удалось обновить: $error';
  }

  @override
  String get appLock => 'Блокировка приложения';

  @override
  String get appLockDesc =>
      'Спрашивать код при открытии приложения или возвращении в него спустя время';

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
  String get appLockUnlock => 'Введи код';

  @override
  String get appLockWrong => 'Неверный код';

  @override
  String appLockWait(String seconds) {
    return 'Слишком много попыток, подожди $seconds с';
  }

  @override
  String get appLockNew => 'Придумай код';

  @override
  String get appLockNewHint => 'От 4 до 8 цифр';

  @override
  String get appLockConfirm => 'Введи ещё раз';

  @override
  String get appLockMismatch => 'Коды не совпадают';

  @override
  String get appLockOn => 'Код установлен';

  @override
  String get appLockRemoveTitle => 'Введи код, чтобы отключить блокировку';

  @override
  String get installFailed => 'Не удалось установить';

  @override
  String get updateFailed => 'Не удалось обновить';

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
  String get noSourceSettings => 'У источника нет настроек';

  @override
  String get addPluginRepository => 'Добавить репозиторий плагинов';

  @override
  String get pluginIndexUrlHint => 'URL индекса плагинов';

  @override
  String get addRepository => 'Добавить репозиторий';

  @override
  String get pluginRepoUpdated => 'Репозиторий плагинов обновлён';

  @override
  String get pluginRepoUpdateFailed =>
      'Не удалось обновить репозиторий плагинов';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Отмена';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get save => 'Сохранить';

  @override
  String get reset => 'Сбросить';

  @override
  String get clear => 'Очистить';

  @override
  String get test => 'Проверить';

  @override
  String get testing => 'Проверяю…';

  @override
  String get resolving => 'Определяю…';

  @override
  String get none => 'Нет';

  @override
  String get selectMediaService => 'Выбери медиасервис';

  @override
  String get pickColor => 'Выбери цвет';

  @override
  String get colorPickerCustom => 'Свой';

  @override
  String get colorPickerTransparent => 'Прозрачный';

  @override
  String get ltr => 'Слева направо';

  @override
  String get searchSettings => 'Поиск по настройкам';

  @override
  String nothingMatches(String query) {
    return 'Ничего не найдено по запросу «$query»';
  }

  @override
  String searchCategory(String category) {
    return 'Поиск: $category';
  }

  @override
  String get settingsAppearance => 'Оформление';

  @override
  String get settingsAppearanceDesc => 'Тема, цвета, стеклянный режим';

  @override
  String get settingsGeneral => 'Общие';

  @override
  String get settingsGeneralDesc => 'Язык и поведение';

  @override
  String get settingsNetwork => 'Сеть';

  @override
  String get settingsNetworkDesc => 'User agent, сертификаты, DNS и прокси';

  @override
  String get settingsAccountDesc => 'Сервис учёта и вход';

  @override
  String get settingsUpdates => 'Обновления';

  @override
  String get amoledBlack => 'Чёрный AMOLED';

  @override
  String get amoledBlackDesc => 'Чисто чёрный фон в тёмном режиме';

  @override
  String get glassMode => 'Стеклянный режим';

  @override
  String get glassModeDesc =>
      'Матовые поверхности поверх обложек твоей библиотеки';

  @override
  String get shelfFrame => 'Рамка вокруг разделов';

  @override
  String get shelfFrameDesc =>
      'Показывать карточку за каждой полкой или оставить строки прямо на странице';

  @override
  String get settingsExtensionsDesc =>
      'Менеджеры источников, репозитории и настройки расширений';

  @override
  String get settingsAddons => 'Дополнения';

  @override
  String get customPath => 'Свой путь хранения';

  @override
  String get customPathDesc =>
      'Где хранятся данные приложения. Долгое нажатие — сброс';

  @override
  String get selectDirectory => 'Выбрать папку';

  @override
  String get differentCacheManager => 'Другой кэш изображений';

  @override
  String get differentCacheManagerDesc =>
      'Использовать другой менеджер кэша для изображений';

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
  String get backupAndRestore => 'Резервная копия и восстановление';

  @override
  String get backupAndRestoreDesc => 'Сохрани или загрузи свои настройки';

  @override
  String get backup => 'Резервная копия';

  @override
  String get restore => 'Восстановить';

  @override
  String get loadExtensionsIcon => 'Загружать иконки расширений';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Показывать иконки источников в списках расширений';

  @override
  String get sectionStorage => 'Хранилище';

  @override
  String get sectionManagers => 'Менеджеры';

  @override
  String get sectionOptions => 'Параметры';

  @override
  String get backupTabBackup => 'Сделать копию';

  @override
  String get backupTabRestore => 'Восстановить';

  @override
  String backupSummary(Object keys, Object categories) {
    return 'Настроек: $keys в категориях: $categories';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Последняя копия: $time';
  }

  @override
  String get backupNever => 'Копий пока нет';

  @override
  String get backupSelectAll => 'Выбрать всё';

  @override
  String get backupClearAll => 'Очистить';

  @override
  String backupKeys(Object count) {
    return 'Настроек: $count';
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
  String get backupPassword => 'Пароль (необязательно)';

  @override
  String get backupPasswordHint =>
      'Оставь пустым, чтобы использовать стандартный';

  @override
  String get backupSensitive =>
      'Включает токены входа. Не показывай этот файл другим';

  @override
  String get backupCreate => 'Создать копию';

  @override
  String backupSaved(Object name) {
    return 'Копия сохранена: $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Не удалось сделать копию: $error';
  }

  @override
  String get backupPickFile => 'Выбери файл копии';

  @override
  String get backupPickFileDesc => 'Выбери .json-файл, созданный в Dartotsu';

  @override
  String get backupChooseAnother => 'Выбрать другой файл';

  @override
  String get backupCreatedAt => 'Создано';

  @override
  String get backupAppVersion => 'Версия приложения';

  @override
  String get backupDevice => 'Устройство';

  @override
  String get backupAccounts => 'Аккаунты';

  @override
  String get backupSize => 'Размер';

  @override
  String get backupEncrypted => 'Защищено паролем';

  @override
  String get backupUnlock => 'Разблокировать';

  @override
  String get backupWrongPassword => 'Не удалось прочитать файл. Проверь пароль';

  @override
  String get backupRestoreSelected => 'Восстановить выбранное';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Восстановить настройки ($count)? Существующие значения в этих категориях будут перезаписаны.';
  }

  @override
  String get backupRestored =>
      'Восстановлено. Перезапусти приложение, чтобы всё применилось';

  @override
  String backupRestoreFailed(Object error) {
    return 'Не удалось восстановить: $error';
  }

  @override
  String get backupSelectOne => 'Выбери хотя бы одну категорию';

  @override
  String get backupCatTheme => 'Оформление';

  @override
  String get backupCatThemeDesc =>
      'Тема, цвета, стекло, шрифты и стиль карточек';

  @override
  String get backupCatCommon => 'Общие';

  @override
  String get backupCatCommonDesc =>
      'Язык, хранилище, сеть и настройки расширений';

  @override
  String get backupCatPlayer => 'Плеер';

  @override
  String get backupCatPlayerDesc => 'Настройки плеера';

  @override
  String get backupCatReader => 'Читалка';

  @override
  String get backupCatReaderDesc => 'Настройки читалки';

  @override
  String get backupCatProtected => 'Аккаунты';

  @override
  String get backupCatProtectedDesc => 'Токены входа и данные авторизации';

  @override
  String get backupCatOther => 'Сервисы и ленты';

  @override
  String get backupCatOtherDesc =>
      'Раскладка лент, списки и настройки сервисов';

  @override
  String get logFile => 'Файл логов';

  @override
  String get logFileDesc =>
      'Поделись логом приложения или скопируй путь к нему в Linux';

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
  String get logFileCopied => 'Путь к логу скопирован';

  @override
  String get donateSheetTitle => 'Нравится Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu делает и поддерживает один человек. Если приложение тебе полезно, поддержи разработку.';

  @override
  String get donateLater => 'Может, позже';

  @override
  String get glassBackground => 'Стеклянный фон';

  @override
  String get glassBackgroundDesc =>
      'Баннер твоего профиля, если не задана ссылка на картинку';

  @override
  String get glassBackgroundHint => 'Ссылка на картинку (пусто — твой баннер)';

  @override
  String get followCover => 'Следовать обложке';

  @override
  String get followCoverDesc =>
      'Цвета подстраиваются под фон, а на страницах тайтлов — под обложку';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Стиль карточек';

  @override
  String get cardStyleDesc => 'Положение названия, размер, прогресс и значки';

  @override
  String get customFont => 'Шрифт';

  @override
  String get customFontDesc =>
      'Стандартный, файл с устройства или Google Fonts';

  @override
  String get customFontError => 'Не удалось загрузить файл шрифта';

  @override
  String get googleFontError => 'Не удалось скачать шрифт';

  @override
  String get yourFonts => 'Твои шрифты';

  @override
  String get addFontFile => 'Добавить файл шрифта…';

  @override
  String get browseGoogleFonts => 'Обзор Google Fonts…';

  @override
  String get searchGoogleFonts => 'Поиск по Google Fonts';

  @override
  String get defaultFont => 'По умолчанию';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Динамические цвета системы';

  @override
  String get jsonTheme => 'Файл своей темы';

  @override
  String get jsonThemeDesc =>
      'Живые цвета из ~/.config/dartotsu/theme.json (свой скрипт или ручные правки)';

  @override
  String get themeMode => 'Режим темы';

  @override
  String get mode => 'Режим';

  @override
  String get trackingService => 'Сервис учёта';

  @override
  String get signOut => 'Выйти';

  @override
  String get signIn => 'Войти';

  @override
  String get notSignedIn => 'Вход не выполнен';

  @override
  String signOutOf(String service) {
    return 'Выйти из $service?';
  }

  @override
  String get checkForUpdates => 'Проверять обновления';

  @override
  String get checkForUpdatesDesc => 'Уведомлять о новом релизе на GitHub';

  @override
  String get updateChannel => 'Канал обновлений';

  @override
  String get channel => 'Канал';

  @override
  String get stable => 'Стабильный';

  @override
  String get preRelease => 'Пре-релиз';

  @override
  String get alpha => 'Альфа';

  @override
  String get checkNow => 'Проверить сейчас';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'По умолчанию';

  @override
  String currentlyUsing(String value) {
    return 'Сейчас: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'По умолчанию (Cloudflare)';

  @override
  String get proxy => 'Прокси';

  @override
  String get proxyProtocol => 'Тип';

  @override
  String get proxyHost => 'Хост';

  @override
  String get proxyPort => 'Порт';

  @override
  String get proxyUsername => 'Имя пользователя';

  @override
  String get proxyPassword => 'Пароль';

  @override
  String get optional => 'Необязательно';

  @override
  String get clearCookies => 'Очистить cookies';

  @override
  String get clearCookiesDesc => 'Удалить все сохранённые cookies';

  @override
  String notImplementedArea(String area) {
    return '$area — скоро';
  }

  @override
  String notImplementedService(String service) {
    return '$service пока не поддерживает это.';
  }

  @override
  String get couldNotLoadResults => 'Не удалось загрузить результаты';

  @override
  String get updateCheckFailed => 'Не удалось проверить обновления';

  @override
  String get highRefreshRate => 'Высокая частота обновления';

  @override
  String get highRefreshRateDesc =>
      'Использовать максимальную частоту обновления твоего экрана';

  @override
  String get imageSave => 'Сохранить изображение';

  @override
  String imageSavedTo(String path) {
    return 'Сохранено: $path';
  }

  @override
  String get imageActionFailed => 'Не удалось скачать изображение';

  @override
  String get imageTitleCover => 'Обложка';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Баннер';

  @override
  String get imageTitleAvatar => 'Фото профиля';

  @override
  String get verifyTls => 'Проверять сертификаты';

  @override
  String get verifyTlsDesc =>
      'Отклонять серверы с недействительными HTTPS-сертификатами. Выключай только для источника с самоподписанным сертификатом';

  @override
  String get clearCookiesConfirm =>
      'Удалить все сохранённые cookies? Тебя могут выкинуть из некоторых источников.';

  @override
  String get version => 'Версия';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Исходники, issues и релизы';

  @override
  String get discordDesc => 'Сообщество и поддержка';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Поддержать разработку';

  @override
  String get contributors => 'Участники';

  @override
  String get contributorsDesc => 'Люди, которые сделали Dartotsu';

  @override
  String get contributorsLoadFailed => 'Не удалось загрузить участников';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Проекты на основе Dartotsu';

  @override
  String get forksEmpty => 'Форков не найдено';

  @override
  String get sectionColors => 'Цвета';

  @override
  String get sectionDisplay => 'Экран';

  @override
  String get sectionStyle => 'Стиль';

  @override
  String get sectionCommunity => 'Сообщество';

  @override
  String get sectionAppInfo => 'О приложении';

  @override
  String get sectionRequests => 'Запросы';

  @override
  String get sectionDnsProxy => 'DNS и прокси';

  @override
  String get onboardingBack => 'Назад';

  @override
  String get onboardingNext => 'Далее';

  @override
  String get onboardingSkip => 'Пропустить';

  @override
  String get onboardingPaletteTitle => 'Сделай под себя';

  @override
  String get onboardingPaletteBody =>
      'Выбери палитру. Все акценты, от карточек до плеера, подстроятся под неё.';

  @override
  String get themeModeAuto => 'Авто';

  @override
  String get themeModeLight => 'Светлая';

  @override
  String get themeModeDark => 'Тёмная';

  @override
  String get onboardingSyncTitle => 'Синхронизируй библиотеку';

  @override
  String get onboardingSyncBody =>
      'Войди через AniList, чтобы подтянуть свои списки, прогресс и оценки. Или пропусти и заходи как гость.';

  @override
  String get onboardingOpenLinks =>
      'Открывать ссылки AniList и репозиториев в Dartotsu';

  @override
  String get onboardingPermsTitle => 'Разрешения';

  @override
  String get onboardingPermsBody =>
      'Разреши их сейчас, чтобы загрузки, обновления и уведомления работали без сбоев. Потом можно поменять в настройках системы.';

  @override
  String get permNotifications => 'Уведомления';

  @override
  String get permNotificationsDesc => 'Прогресс загрузок, новые серии и ответы';

  @override
  String get permStorage => 'Доступ ко всем файлам';

  @override
  String get permStorageDesc => 'Сохранять загрузки в общую папку Dartotsu';

  @override
  String get permInstall => 'Установка обновлений';

  @override
  String get permInstallDesc =>
      'Разрешить Dartotsu самому ставить свои обновления';

  @override
  String get permBattery => 'Без ограничений батареи';

  @override
  String get permBatteryDesc => 'Не прерывать долгие загрузки в фоне';

  @override
  String get permGrant => 'Разрешить';

  @override
  String get linkOpenInApp => 'Открывать ссылки в Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Пусть ссылки AniList и репозиториев открываются в приложении';

  @override
  String get reviewsTitle => 'Рецензии';

  @override
  String get reviewsEmpty => 'Рецензий пока нет';

  @override
  String get reviewsFailed => 'Не удалось загрузить рецензии';

  @override
  String get reviewHelpfulQuestion => 'Была ли рецензия полезной?';

  @override
  String get reviewVoteFailed => 'Не удалось сохранить твой голос';

  @override
  String reviewHelpful(int n, int total) {
    return '$n из $total считают это полезным';
  }

  @override
  String get calendarTitle => 'Расписание выхода';

  @override
  String get calendarToday => 'Сегодня';

  @override
  String get calendarEmpty => 'В этот день ничего не выходит';

  @override
  String get calendarFailed => 'Не удалось загрузить расписание';

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
    return 'Серия $n';
  }

  @override
  String get shareAnalytics => 'Делиться анонимной статистикой';

  @override
  String get shareAnalyticsDesc =>
      'Анонимное число пользователей и отчёты о сбоях. Без аккаунта и личных данных';

  @override
  String get linkOpenAnilist => 'Открывать ссылки AniList в Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Включи обработку ссылок, чтобы ссылки anilist.co открывались в приложении';

  @override
  String get linkSettingsFailed => 'Не удалось открыть настройки системы';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Показывать в профиле Discord, чем ты занят. Нужен твой токен Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Показывать в профиле Discord, чем ты занят. Нужно, чтобы был запущен десктопный Discord.';

  @override
  String get discordBrowsing => 'Показывать активность в приложении';

  @override
  String get discordBrowsingDesc =>
      'Показывать ещё и вкладку, страницу или профиль, которые ты смотришь, а не только что смотришь или читаешь.';

  @override
  String get discordLookHeader => 'Вид статуса';

  @override
  String get discordActivityType => 'Тип активности';

  @override
  String get discordActivityTypeDesc =>
      'Как это пишет Discord: «Смотрит …» или «Играет в …». Авто — «Смотрит» для аниме и «Играет в» для остального.';

  @override
  String get discordWatching => 'Смотрит';

  @override
  String get discordPlaying => 'Играет';

  @override
  String get discordCovers => 'Показывать обложки';

  @override
  String get discordCoversDesc => 'Обложка и иконка Dartotsu на карточке.';

  @override
  String get discordTimer => 'Показывать таймер';

  @override
  String get discordTimerDesc =>
      'Прошедшее или оставшееся время под названием.';

  @override
  String get discordButtons => 'Показывать кнопки';

  @override
  String get discordButtonsDesc =>
      'Кнопки «Открыть аниме / мангу» и «Открыть Dartotsu».';

  @override
  String get discordHideTitles => 'Скрывать названия';

  @override
  String get discordHideTitlesDesc =>
      'Заменять названия аниме и манги (и их обложку и ссылку) на «Что-то личное».';

  @override
  String get discordConnectionHeader => 'Подключение';

  @override
  String get listSearchHint => 'Поиск по списку';

  @override
  String get listSort => 'Сортировка';

  @override
  String get listFilter => 'Фильтр';

  @override
  String get listRandom => 'Случайный тайтл';

  @override
  String get listReverse => 'Обратный порядок';

  @override
  String get listSortDefault => 'Порядок списка';

  @override
  String get listSortScore => 'Твоя оценка';

  @override
  String get listSortTitle => 'Название';

  @override
  String get listSortUpdated => 'Обновлено';

  @override
  String get listSortProgress => 'Прогресс';

  @override
  String get listSortReleased => 'Дата выхода';

  @override
  String get listSortAverage => 'Средняя оценка';

  @override
  String get listFilterFormat => 'Формат';

  @override
  String get listFilterStatus => 'Статус';

  @override
  String get listFilterGenres => 'Жанры';

  @override
  String get listFilterClear => 'Сбросить фильтры';

  @override
  String get listNoMatches => 'В этом списке ничего не подходит';

  @override
  String get discordLogin => 'Войти в Discord';

  @override
  String get discordToken => 'Токен Discord';

  @override
  String get discordTokenSaved =>
      'Сохранён. Нажми, чтобы заменить, удерживай, чтобы удалить.';

  @override
  String get discordTokenNotSet => 'Не задан. Нажми, чтобы добавить.';

  @override
  String get discordTokenSavedSnack => 'Токен Discord сохранён';

  @override
  String get discordTokenRemovedSnack => 'Токен Discord удалён';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'Вкл. · нажми, чтобы поменять вид';

  @override
  String get discordRichPresenceRowOff =>
      'Показывать в профиле Discord, чем ты занят';

  @override
  String get loginCancelled => 'Вход отменён';

  @override
  String get invalidToken => 'Неверный токен';

  @override
  String loginFailed(String error) {
    return 'Не удалось войти: $error';
  }

  @override
  String get malLoginFailed => 'Не удалось войти в MyAnimeList';

  @override
  String get kitsuLoginFailed =>
      'Не удалось войти в Kitsu. Проверь почту и пароль.';

  @override
  String get kitsuLoginTitle => 'Вход в Kitsu';

  @override
  String get emailOrUsername => 'Почта или имя пользователя';

  @override
  String get password => 'Пароль';

  @override
  String get kitsuProfile => 'Профиль Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Не удалось войти в MangaBaka';

  @override
  String get mangaBakaProfile => 'Профиль MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Обновить из MangaBaka';

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
  String get artistsLabel => 'Художники';

  @override
  String get authorsLabel => 'Авторы';

  @override
  String get publishersLabel => 'Издатели';

  @override
  String get licensedLabel => 'Лицензировано';

  @override
  String get contentRatingLabel => 'Возрастной рейтинг';

  @override
  String get yesLabel => 'Да';

  @override
  String get noLabel => 'Нет';

  @override
  String get ratingSteps => 'Шаги оценки';

  @override
  String get hideNsfw => 'Скрывать NSFW';

  @override
  String get hideNsfwDesc =>
      'Убирает взрослые тайтлы из лент и поиска, а твои взрослые записи — в «Скрытое».';

  @override
  String get kitsuAccountOptions => 'Настройки аккаунта Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Настройки аккаунта MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Не удалось обновить настройки Kitsu';

  @override
  String get titleCanonical => 'Канонические';

  @override
  String get titleRomanized => 'Ромадзи';

  @override
  String get titleLocalized => 'Локализованные';

  @override
  String get ratingSystem => 'Система оценок';

  @override
  String get ratingSimple => 'Простая (3 смайлика)';

  @override
  String get ratingRegular => 'Обычная (5 звёзд)';

  @override
  String get ratingAdvanced => 'Расширенная (10 баллов)';

  @override
  String get contentFilter => 'Фильтр контента';

  @override
  String get contentSfw => 'Только безопасный контент';

  @override
  String get contentSometimes => 'Взрослый контент в поиске';

  @override
  String get contentEverywhere => 'Взрослый контент везде';

  @override
  String get shareToGlobal => 'Делиться в общей ленте';

  @override
  String get shareToGlobalDesc =>
      'Пусть твоя активность показывается в общей ленте Kitsu.';

  @override
  String get memberSince => 'С нами с';

  @override
  String get location => 'Местоположение';

  @override
  String get accountType => 'Тип аккаунта';

  @override
  String get accountSupporter => 'Спонсор';

  @override
  String get accountFree => 'Бесплатный';

  @override
  String get accountDetails => 'Данные аккаунта';

  @override
  String get refreshFromKitsu => 'Обновить из Kitsu';

  @override
  String get simklReadOnly => 'Simkl дал доступ только на чтение';

  @override
  String get incognitoEditsBlocked => 'Инкогнито: правки списка заблокированы';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Инкогнито: прогресс не сохранён';

  @override
  String progressSet(int progress) {
    return 'Прогресс: $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title удалён из твоего списка';
  }

  @override
  String get following => 'Подписки';

  @override
  String get homeSections => 'Разделы главной';

  @override
  String get homeSectionsHint =>
      'Перетащи, чтобы изменить порядок. Скрытые разделы не загружаются.';

  @override
  String get customListDeleteFailed => 'Не удалось удалить свой список';

  @override
  String get customListsSaveFailed => 'Не удалось сохранить свои списки';

  @override
  String get customListsSaved => 'Свои списки сохранены';

  @override
  String get listName => 'Название списка';

  @override
  String get addList => 'Добавить список';

  @override
  String voiceActorsIn(String name) {
    return 'Сейю · $name';
  }

  @override
  String get animeAppearances => 'Роли в аниме';

  @override
  String get mangaAppearances => 'Роли в манге';

  @override
  String get voicedCharacters => 'Озвученные персонажи';

  @override
  String get animeCredits => 'Работы в аниме';

  @override
  String get mangaCredits => 'Работы в манге';

  @override
  String get mainProductions => 'Основные работы';

  @override
  String get otherWorks => 'Другие работы';

  @override
  String get prequelSequel => 'Приквел и сиквел';

  @override
  String get previousSeason => 'Прошлый сезон';

  @override
  String get thisSeason => 'Этот сезон';

  @override
  String get nextSeason => 'Следующий сезон';

  @override
  String get voiceRoles => 'Роли озвучки';

  @override
  String get staffPositions => 'Должности в команде';

  @override
  String get mangaWorks => 'Работы в манге';

  @override
  String get malProfile => 'Профиль MyAnimeList';

  @override
  String get refreshFromMal => 'Обновить из MyAnimeList';

  @override
  String get repullProfileCounts => 'Заново подтянуть профиль и счётчики';

  @override
  String get refreshed => 'Обновлено';

  @override
  String get simklProfile => 'Профиль Simkl';

  @override
  String get refreshFromSimkl => 'Обновить из Simkl';

  @override
  String get repullProfileLibrary => 'Заново подтянуть профиль и библиотеку';

  @override
  String get simklSignInToSearch => 'Войди в Simkl, чтобы искать';

  @override
  String get dropRate => 'Доля бросивших';

  @override
  String get simklAttribution =>
      'Данные и арты предоставлены Simkl. Открыть в Simkl';

  @override
  String get onHold => 'Отложено';

  @override
  String get scoredBy => 'Оценили';

  @override
  String get planToWatch => 'В планах (смотреть)';

  @override
  String get planToRead => 'В планах (читать)';

  @override
  String get timesRewatched => 'Раз пересмотрено';

  @override
  String get timesReread => 'Раз перечитано';

  @override
  String get comments => 'Комментарии';

  @override
  String get moviesAndSeries => 'Фильмы и сериалы';

  @override
  String get trackingOnly => 'Только учёт';

  @override
  String get signedIn => 'Вход выполнен';

  @override
  String get searchLanguage => 'Язык поиска';

  @override
  String get savedToList => 'Сохранено в твой список';

  @override
  String get removedFromYourList => 'Удалено из твоего списка';

  @override
  String get retry => 'Повторить';

  @override
  String get synopsis => 'Описание';

  @override
  String get details => 'Подробности';

  @override
  String get addToList => 'Добавить в список';

  @override
  String get trailer => 'Трейлер';

  @override
  String get titleCopied => 'Название скопировано';

  @override
  String get linkCopied => 'Ссылка скопирована';

  @override
  String get watchTrailer => 'Смотреть трейлер';

  @override
  String get copyTitle => 'Копировать название';

  @override
  String get copyLink => 'Копировать ссылку';

  @override
  String get openInBrowser => 'Открыть в браузере';

  @override
  String viewOnSource(String source) {
    return 'Смотреть на $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Серия $ep выйдет через $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Следующая серия через $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Глава $chapter выйдет примерно через $time';
  }

  @override
  String get logPathCopied => 'Путь к файлу логов скопирован в буфер';

  @override
  String get animeSource => 'Источник аниме';

  @override
  String get mangaSource => 'Источник манги';

  @override
  String get popular => 'Популярное';

  @override
  String get latest => 'Новое';

  @override
  String get saved => 'Сохранённое';

  @override
  String get nothingMatched => 'Ничего не найдено';

  @override
  String get nothingSavedFromSource =>
      'Из этого источника пока ничего не сохранено';

  @override
  String get sourceReturnedNothing => 'Источник ничего не вернул';

  @override
  String get checkConnectionOrSource =>
      'Проверь соединение или попробуй другой источник.';

  @override
  String get tryDifferentSearch => 'Попробуй другой запрос.';

  @override
  String get savedTitlesAppearHere =>
      'Добавленные в список тайтлы появятся здесь.';

  @override
  String get tryOtherFeed => 'Попробуй другую ленту или поиск.';

  @override
  String searchSource(String source) {
    return 'Поиск: $source';
  }

  @override
  String get animeExtensions => 'Расширения для аниме';

  @override
  String get mangaExtensions => 'Расширения для манги';

  @override
  String get nothingHereYet => 'Здесь пока пусто';

  @override
  String get savedOnDeviceUntilLogin =>
      'Всё ниже хранится на этом устройстве, пока ты не сделаешь это.';

  @override
  String get yourProfile => 'Твой профиль';

  @override
  String get activity => 'Активность';

  @override
  String get extensions => 'Расширения';

  @override
  String get logOut => 'Выйти';

  @override
  String get logIn => 'Войти';

  @override
  String get logOutConfirm => 'Точно хочешь выйти?';

  @override
  String get incognitoMode => 'Режим инкогнито';

  @override
  String get alsoBlockListEdits => 'Также блокировать правки списка';

  @override
  String get offlineMode => 'Офлайн-режим';

  @override
  String get switchService => 'Сменить сервис';

  @override
  String logOutOf(String name) {
    return 'Выйти из $name';
  }

  @override
  String get loggedIn => 'Вход выполнен';

  @override
  String get notifications => 'Уведомления';

  @override
  String get nothingNew => 'Нового нет';

  @override
  String get thisWeek => 'На этой неделе';

  @override
  String get listOnly => 'Только список';

  @override
  String get filter => 'Фильтр';

  @override
  String get searchResults => 'Результаты поиска';

  @override
  String get recentSearches => 'Недавние запросы';

  @override
  String get searchOrSetFilter => 'Введи запрос или задай фильтр';

  @override
  String get filters => 'Фильтры';

  @override
  String get showLess => 'Свернуть';

  @override
  String get showAll => 'Показать всё';

  @override
  String get apply => 'Применить';

  @override
  String get preview => 'Предпросмотр';

  @override
  String get preset => 'Пресет';

  @override
  String get cardNormal => 'Обычная';

  @override
  String get cardOnCard => 'На карточке';

  @override
  String get cardInCard => 'В карточке';

  @override
  String get size => 'Размер';

  @override
  String get cardWidth => 'Ширина карточки';

  @override
  String get compact => 'Компактная';

  @override
  String get coverAndTitleOnly => 'Только обложка и название';

  @override
  String get titleLines => 'Строк в названии';

  @override
  String get shape => 'Форма';

  @override
  String get posterShape => 'Форма постера';

  @override
  String get cornerRadius => 'Скругление углов';

  @override
  String get off => 'Выкл.';

  @override
  String get topLeft => 'Сверху слева';

  @override
  String get topRight => 'Сверху справа';

  @override
  String get bottomLeft => 'Снизу слева';

  @override
  String get bottomRight => 'Снизу справа';

  @override
  String get overlays => 'Наложения';

  @override
  String get progressCount => 'Прогресс / счётчик';

  @override
  String get pill => 'Плашка';

  @override
  String get bar => 'Полоса';

  @override
  String get outside => 'Снаружи';

  @override
  String get scoreBadge => 'Значок оценки';

  @override
  String get airingDot => 'Точка выхода';

  @override
  String get updateAvailable => 'Есть обновление';

  @override
  String get notInstalled => 'Не установлено';

  @override
  String get done => 'Готово';

  @override
  String get searchOrEnterUrl => 'Поиск или URL';

  @override
  String get refresh => 'Обновить';

  @override
  String get share => 'Поделиться';

  @override
  String get characters => 'Персонажи';

  @override
  String get staff => 'Команда';

  @override
  String get readMore => 'Читать дальше';

  @override
  String get couldNotLoadList => 'Не удалось загрузить список';

  @override
  String get logInToFavourite => 'Войди, чтобы добавлять в избранное';

  @override
  String get alsoKnownAs => 'Также известно как';

  @override
  String get hideSpoilerNames => 'Скрыть имена со спойлерами';

  @override
  String get showSpoilerNames => 'Показать имена со спойлерами';

  @override
  String get favourited => 'В избранном';

  @override
  String get favourite => 'В избранное';

  @override
  String get couldNotOpenTitle => 'Не удалось открыть этот тайтл';

  @override
  String get nobodyHereYet => 'Пока никого';

  @override
  String get noMatches => 'Нет совпадений';

  @override
  String get gridView => 'Сетка';

  @override
  String get fullWidth => 'На всю ширину';

  @override
  String get userNotFound => 'Пользователь не найден';

  @override
  String get couldNotUpdateFollow => 'Не удалось обновить подписку';

  @override
  String followedUser(String name) {
    return 'Ты подписался на $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Ты отписался от $name';
  }

  @override
  String get messages => 'Сообщения';

  @override
  String get logInToSeeMessages => 'Войди, чтобы видеть свои сообщения';

  @override
  String get editActivity => 'Изменить запись';

  @override
  String get newActivity => 'Новая запись';

  @override
  String get editMessage => 'Изменить сообщение';

  @override
  String get writeMessage => 'Написать сообщение';

  @override
  String get editReply => 'Изменить ответ';

  @override
  String get posted => 'Опубликовано';

  @override
  String get couldNotPost => 'Не удалось опубликовать';

  @override
  String get nothingToPreview => 'Нечего показывать';

  @override
  String get writeSomethingHint =>
      'Напиши что-нибудь… здесь работает разметка AniList';

  @override
  String get privateMessage => 'Личное сообщение';

  @override
  String get post => 'Опубликовать';

  @override
  String get nothingHere => 'Здесь пусто';

  @override
  String get noAnimeProgress => 'Нет прогресса по аниме';

  @override
  String get noMangaProgress => 'Нет прогресса по манге';

  @override
  String get noMessages => 'Нет сообщений';

  @override
  String get writeMessageHint => 'Напиши сообщение…';

  @override
  String get shareSomethingHint => 'Поделись чем-нибудь…';

  @override
  String get all => 'Все';

  @override
  String get anime => 'Аниме';

  @override
  String get manga => 'Манга';

  @override
  String get count => 'Количество';

  @override
  String get hoursWatched => 'Часов просмотрено';

  @override
  String get chaptersRead => 'Глав прочитано';

  @override
  String get meanScore => 'Средняя оценка';

  @override
  String get noStatsYet => 'Статистики пока нет';

  @override
  String get totalEntries => 'Всего записей';

  @override
  String get episodesWatched => 'Серий просмотрено';

  @override
  String get daysWatched => 'Дней просмотрено';

  @override
  String get volumesRead => 'Томов прочитано';

  @override
  String get standardDeviation => 'Стандартное отклонение';

  @override
  String get showMore => 'Показать больше';

  @override
  String get followsYou => 'Подписан на тебя';

  @override
  String get nobodyYet => 'Пока никого';

  @override
  String get logInToLike => 'Войди, чтобы ставить лайки';

  @override
  String get failedToLikeActivity => 'Не удалось лайкнуть запись';

  @override
  String get deleteActivityConfirm => 'Удалить запись?';

  @override
  String get deletedActivity => 'Запись удалена';

  @override
  String get failedToDeleteActivity => 'Не удалось удалить запись';

  @override
  String get subscribed => 'Подписка оформлена';

  @override
  String get unsubscribed => 'Подписка отменена';

  @override
  String get failedToUpdateSubscription => 'Не удалось обновить подписку';

  @override
  String get edit => 'Изменить';

  @override
  String get delete => 'Удалить';

  @override
  String get likedBy => 'Лайкнули';

  @override
  String get follow => 'Подписаться';

  @override
  String get nameCopied => 'Имя скопировано';

  @override
  String get followsEachOther => 'Подписаны друг на друга';

  @override
  String get unfollow => 'Отписаться';

  @override
  String get userIdCopied => 'ID пользователя скопирован';

  @override
  String get shareProfile => 'Поделиться профилем';

  @override
  String get copyUserId => 'Копировать ID пользователя';

  @override
  String get failedToDelete => 'Не удалось удалить';

  @override
  String get failedToLike => 'Не удалось лайкнуть';

  @override
  String get replies => 'Ответы';

  @override
  String get reply => 'Ответить';

  @override
  String get noRepliesYet => 'Ответов пока нет';

  @override
  String get favouriteAnime => 'Избранное аниме';

  @override
  String get favouriteManga => 'Избранная манга';

  @override
  String get favouriteCharacters => 'Избранные персонажи';

  @override
  String get favouriteStaff => 'Избранная команда';

  @override
  String get favouriteStudios => 'Избранные студии';

  @override
  String get noFavouritesYet => 'Избранного пока нет';

  @override
  String get yourStory => 'Твоя история';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get justNow => 'Только что';

  @override
  String get openImage => 'Открыть изображение';

  @override
  String get hideSpoiler => 'Скрыть спойлер';

  @override
  String get showSpoiler => 'Показать спойлер';

  @override
  String get status => 'Статус';

  @override
  String get score => 'Оценка';

  @override
  String get started => 'Начато';

  @override
  String get completed => 'Завершено';

  @override
  String get private => 'Личное';

  @override
  String get hideFromStatusLists => 'Скрыть из списков по статусу';

  @override
  String get totalRepeats => 'Всего повторов';

  @override
  String get other => 'Другое';

  @override
  String get customLists => 'Свои списки';

  @override
  String get activeDays => 'Активных дней';

  @override
  String get longestStreak => 'Самая длинная серия';

  @override
  String get currentStreak => 'Текущая серия';

  @override
  String get tapOrHoverDay => 'Нажми на день или наведи на него курсор';

  @override
  String get less => 'Меньше';

  @override
  String get more => 'Больше';

  @override
  String epIn(int ep, String time) {
    return 'Серия $ep через $time';
  }

  @override
  String get sectionLoading => 'Загрузка';

  @override
  String get querySize => 'Размер запроса';

  @override
  String get querySizeDesc =>
      'Один большой запрос загружает все строки (и весь профиль) разом. Разделённые запросы шлют маленький запрос на каждую строку или часть профиля: каждый быстрый, а части появляются по мере загрузки.';

  @override
  String get oneBig => 'Один большой';

  @override
  String get split => 'Разделённые';

  @override
  String get sectionSocial => 'Соцсеть';

  @override
  String get systemNotifications => 'Системные уведомления';

  @override
  String get feedLayout => 'Раскладка ленты';

  @override
  String sectionsShown(int shown, int total) {
    return 'Показано: $shown из $total — нажми, чтобы выбрать и переставить';
  }

  @override
  String labelSections(String label) {
    return 'Разделы: $label';
  }

  @override
  String get accountOptions => 'Настройки аккаунта';

  @override
  String get anilistAccountOptions => 'Настройки аккаунта AniList';

  @override
  String get sectionPrivacy => 'Приватность';

  @override
  String get hidePrivateEntries => 'Скрывать приватные записи';

  @override
  String get hidePrivateEntriesDesc =>
      'Не показывать в ленте записи, помеченные приватными в AniList';

  @override
  String get anilistExcludeList => 'Скрыть мой список';

  @override
  String get anilistExcludeListDesc =>
      'Не показывать на страницах аниме и манги тайтлы, которые уже есть в твоём AniList';

  @override
  String get anilistProfile => 'Профиль AniList';

  @override
  String get refreshFromAnilist => 'Обновить из AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Не удалось обновить настройки AniList';

  @override
  String get sectionNames => 'Имена';

  @override
  String get titleLanguage => 'Язык названий';

  @override
  String get titleLanguageDesc =>
      'Как везде пишутся названия, например Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Имена персонажей и команды';

  @override
  String get sectionLists => 'Списки';

  @override
  String get scoreFormat => 'Формат оценок';

  @override
  String get sortListsBy => 'Сортировать списки по';

  @override
  String labelCustomLists(String label) {
    return 'Свои списки: $label';
  }

  @override
  String customListsCount(int count) {
    return 'Списков: $count — нажми, чтобы добавить или убрать';
  }

  @override
  String get mergeActivities => 'Объединять записи активности';

  @override
  String minutesCount(int count) {
    return '$count мин';
  }

  @override
  String get timezone => 'Часовой пояс';

  @override
  String get notSet => 'Не задан';

  @override
  String get airingNotifications => 'Уведомления о выходе серий';

  @override
  String get airingNotificationsDesc =>
      'Получай уведомление, когда выходит серия отслеживаемого тайтла';

  @override
  String get displayAdultContent => 'Показывать контент 18+';

  @override
  String get displayAdultContentDesc =>
      'Включать тайтлы 18+ в обзор, поиск и ленты';

  @override
  String get restrictMessages => 'Сообщения только от тех, на кого подписан';

  @override
  String get restrictMessagesDesc =>
      'Писать тебе смогут только те, на кого ты подписан';

  @override
  String get sectionServices => 'Сервисы';

  @override
  String get novel => 'Новелла';

  @override
  String labelService(String label) {
    return 'Сервис: $label';
  }

  @override
  String nameSettings(String name) {
    return 'Настройки $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Параметры моста расширений $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name не удалось запустить: $error';
  }

  @override
  String get importLists => 'Импорт списков';

  @override
  String get importListsDesc =>
      'Из бэкапов Aniyomi, Mihon / Tachiyomi или Kotatsu';

  @override
  String get exportLists => 'Экспорт списков';

  @override
  String get exportListsDesc => 'В бэкап Aniyomi, Mihon или Kotatsu';

  @override
  String get sectionBrowse => 'Обзор';

  @override
  String get readingTab => 'Вкладка чтения';

  @override
  String get readingTabDesc => 'Какие расширения показывает третья вкладка';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Лента по умолчанию';

  @override
  String get defaultFeedDesc => 'С какого списка открывается источник';

  @override
  String noServiceSupports(String type) {
    return 'Ни один сервис не поддерживает: $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · источников загружается: $loaded из $installed';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Ни один сервис расширений здесь не поддерживает: $type.';
  }

  @override
  String get loadDataFrom => 'Загружать данные из';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Источников ($type) пока не установлено.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Расширение для $name не установлено';
  }

  @override
  String get thisSource => 'этот источник';

  @override
  String failedToAddRepository(String error) {
    return 'Не удалось добавить репозиторий: $error';
  }

  @override
  String installedType(String type) {
    return 'Установлено: $type';
  }

  @override
  String availableType(String type) {
    return 'Доступно: $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Нет установленных расширений ($type)';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Нет доступных расширений ($type)';
  }

  @override
  String get nothingToShowYet => 'Пока нечего показать';

  @override
  String get addTitlesHint =>
      'Добавь тайтлы в свой список, и они появятся здесь.';

  @override
  String get couldntLoad => 'Не удалось загрузить';

  @override
  String get progressStyleHint =>
      'Плашка и полоса лежат поверх постера; «снаружи» показывает тот же счётчик обычным текстом — выбери что-то одно.';

  @override
  String get nixManagedUpdate =>
      'Эта сборка управляется через Nix — запусти «nix flake update» в своём flake и пересобери, а не обновляй отсюда';

  @override
  String autoUpdateFailed(String error) {
    return 'Не удалось обновить автоматически ($error) — открываю страницу загрузки';
  }

  @override
  String get unknownPreference => 'Неизвестная настройка';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Неподдерживаемый тип настройки: $type';
  }

  @override
  String get notYetReleased => 'Ещё не вышло';

  @override
  String get notStarted => 'Не начато';

  @override
  String get country => 'Страна';

  @override
  String get sort => 'Сортировка';

  @override
  String get chooseBackupDialog => 'Выбери бэкап Aniyomi, Mihon или Kotatsu';

  @override
  String get importListsHint =>
      'Перенеси библиотеку из Aniyomi, Mihon / Tachiyomi или Kotatsu. Названия, обложки, прогресс и категории сохранятся.';

  @override
  String get chooseBackupFile => 'Выбрать файл бэкапа';

  @override
  String importAnimeCount(int count) {
    return 'Импортировать аниме: $count';
  }

  @override
  String importMangaCount(int count) {
    return 'Импортировать мангу: $count';
  }

  @override
  String get mergeWithExisting => 'Объединить с текущими списками';

  @override
  String get mergeWithExistingDesc =>
      'Сохраняет то, что уже есть; выключено — заменяет совпавшие тайтлы';

  @override
  String get chooseAnother => 'Выбрать другой';

  @override
  String get import => 'Импорт';

  @override
  String animeCount(int count) {
    return 'Аниме: $count';
  }

  @override
  String mangaCount(int count) {
    return 'Манга: $count';
  }

  @override
  String get chooseSaveLocation => 'Выбери, куда сохранить бэкап';

  @override
  String savedPath(String path) {
    return 'Сохранено: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Не удалось экспортировать: $error';
  }

  @override
  String get nothingInLocalLists => 'В твоих локальных списках пока пусто.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Экспортирует аниме: $anime и мангу: $manga из твоих локальных списков. Kotatsu поддерживает только мангу.';
  }

  @override
  String get saveToFolder => 'Сохранить в папку';

  @override
  String get formatAnimeManga => 'Аниме и манга · .tachibk';

  @override
  String get formatMangaTachibk => 'Только манга · .tachibk';

  @override
  String get formatMangaZip => 'Только манга · .zip';

  @override
  String get genres => 'Жанры';

  @override
  String get relations => 'Связанное';

  @override
  String get recommendations => 'Рекомендации';

  @override
  String get openings => 'Опенинги';

  @override
  String get endings => 'Эндинги';

  @override
  String get background => 'Предыстория';

  @override
  String get links => 'Ссылки';

  @override
  String get rank => 'Место';

  @override
  String get members => 'Участники';

  @override
  String get favorites => 'В избранном';

  @override
  String get episodes => 'Серии';

  @override
  String get chapters => 'Главы';

  @override
  String get volumes => 'Тома';

  @override
  String get format => 'Формат';

  @override
  String get source => 'Источник';

  @override
  String get duration => 'Длительность';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes мин на серию';
  }

  @override
  String get rating => 'Рейтинг';

  @override
  String get studio => 'Студия';

  @override
  String get serialization => 'Журнал';

  @override
  String get season => 'Сезон';

  @override
  String get broadcast => 'Трансляция';

  @override
  String get aired => 'Выходило';

  @override
  String get published => 'Опубликовано';

  @override
  String get popularity => 'Популярность';

  @override
  String get community => 'Сообщество';

  @override
  String get watching => 'Смотрю';

  @override
  String get reading => 'Читаю';

  @override
  String get dropped => 'Брошено';

  @override
  String get planned => 'В планах';

  @override
  String get trailers => 'Трейлеры';

  @override
  String get ratings => 'Оценки';

  @override
  String get originalTitle => 'Оригинал';

  @override
  String get titleLabel => 'Название';

  @override
  String get votes => 'Голосов';

  @override
  String get watchedStat => 'Просмотрено';

  @override
  String get runtime => 'Хронометраж';

  @override
  String get director => 'Режиссёр';

  @override
  String get network => 'Канал';

  @override
  String get certification => 'Сертификация';

  @override
  String get airs => 'Выходит';

  @override
  String get budget => 'Бюджет';

  @override
  String get revenue => 'Сборы';

  @override
  String get released => 'Вышло';

  @override
  String get tags => 'Теги';

  @override
  String get author => 'Автор';

  @override
  String get born => 'Родился';

  @override
  String get website => 'Сайт';

  @override
  String get established => 'Основано';

  @override
  String get manhwa => 'Манхва';

  @override
  String get manhua => 'Маньхуа';

  @override
  String get novels => 'Новеллы';

  @override
  String get thisMonth => 'В этом месяце';

  @override
  String get movies => 'Фильмы';

  @override
  String get shows => 'Сериалы';

  @override
  String get rewatching => 'Пересматриваю';

  @override
  String get rereading => 'Перечитываю';

  @override
  String get watchedStatus => 'Просмотрено';

  @override
  String get planning => 'В планах';

  @override
  String get paused => 'Отложено';

  @override
  String get watch => 'Смотреть';

  @override
  String get read => 'Читать';

  @override
  String get finished => 'Завершено';

  @override
  String get releasing => 'Выходит';

  @override
  String get cancelled => 'Отменено';

  @override
  String get hiatus => 'Перерыв';

  @override
  String get remove => 'Убрать';

  @override
  String syncToService(String service) {
    return 'Синхронизировать с $service';
  }

  @override
  String syncedToService(String service) {
    return 'Синхронизировано с $service';
  }

  @override
  String get latestReleases => 'Свежие релизы';

  @override
  String get topRated => 'Лучшие по оценкам';

  @override
  String localSection(String title) {
    return '$title · Локально';
  }

  @override
  String get localEntryNote =>
      'Этот тайтл есть только в твоём локальном списке на этом устройстве. Редактирование здесь выключено, потому что оно может конфликтовать со списком аккаунта; удалить его всё равно можно.';

  @override
  String get cardPresetPoster => 'Постер';

  @override
  String get cardPresetCard => 'Карточка';

  @override
  String get cardPresetCozy => 'Уютный';

  @override
  String get sortTopRated => 'Лучшие по оценкам';

  @override
  String get sortMostPopular => 'Самые популярные';

  @override
  String get sortTrending => 'В тренде';

  @override
  String get sortNewest => 'Новые';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Чаще всего в избранном';

  @override
  String get anyCountry => 'Любая страна';

  @override
  String get orderScore => 'Оценка';

  @override
  String get orderTitle => 'Название';

  @override
  String get orderLastUpdated => 'Обновлено';

  @override
  String get orderLastAdded => 'Добавлено';

  @override
  String get never => 'Никогда';

  @override
  String get always => 'Всегда';

  @override
  String get scorePoint100 => '100 баллов';

  @override
  String get scorePoint10Decimal => '10 баллов с десятыми';

  @override
  String get scorePoint10 => '10 баллов';

  @override
  String get scorePoint5 => '5 звёзд';

  @override
  String get scorePoint3 => '3 смайлика';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count часа',
      many: '$count часов',
      few: '$count часа',
      one: '$count час',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count недели',
      many: '$count недель',
      few: '$count недели',
      one: '$count неделя',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Продолжить';

  @override
  String get resumeSourceMissing =>
      'Установи источник этого тайтла, чтобы продолжить';

  @override
  String get resumeRemove => 'Убрать из «Продолжить»';

  @override
  String resumeAt(String time) {
    return 'осталось $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Страница $page из $total';
  }

  @override
  String get continueWatching => 'Продолжить просмотр';

  @override
  String get continueReading => 'Продолжить чтение';

  @override
  String get favouriteAnimeSection => 'Избранное аниме';

  @override
  String get favouriteMangaSection => 'Избранная манга';

  @override
  String get plannedAnime => 'Аниме в планах';

  @override
  String get plannedManga => 'Манга в планах';

  @override
  String get completedAnime => 'Просмотренное аниме';

  @override
  String get completedManga => 'Прочитанная манга';

  @override
  String get hiddenMedia => 'Скрытое';

  @override
  String get recentUpdates => 'Недавние обновления';

  @override
  String get trendingNow => 'Сейчас в тренде';

  @override
  String get popularThisSeason => 'Популярное в этом сезоне';

  @override
  String get trendingMovies => 'Фильмы в тренде';

  @override
  String get topRatedSeries => 'Лучшие сериалы';

  @override
  String get mostFavouriteSeries => 'Самые любимые сериалы';

  @override
  String get popularAnime => 'Популярное аниме';

  @override
  String get trendingManhwa => 'Манхва в тренде';

  @override
  String get trendingNovels => 'Новеллы в тренде';

  @override
  String get topRatedManga => 'Лучшая манга';

  @override
  String get mostFavouriteManga => 'Самая любимая манга';

  @override
  String get popularManga => 'Популярная манга';

  @override
  String get topMovies => 'Лучшие фильмы';

  @override
  String get topOna => 'Лучшие ONA';

  @override
  String get topOva => 'Лучшие OVA';

  @override
  String get mostPopular => 'Самое популярное';

  @override
  String get mostFavourite => 'Самое любимое';

  @override
  String get upcoming => 'Скоро';

  @override
  String get topManga => 'Топ манги';

  @override
  String get topManhwa => 'Топ манхвы';

  @override
  String get topManhua => 'Топ маньхуа';

  @override
  String get topNovels => 'Топ новелл';

  @override
  String get topOneShots => 'Топ ваншотов';

  @override
  String get trendingMoviesToday => 'Фильмы в тренде сегодня';

  @override
  String get trendingShowsToday => 'Сериалы в тренде сегодня';

  @override
  String get trendingMoviesWeek => 'Фильмы в тренде на этой неделе';

  @override
  String get trendingShowsWeek => 'Сериалы в тренде на этой неделе';

  @override
  String get mostWatchedMoviesMonth => 'Самые просматриваемые фильмы месяца';

  @override
  String get mostWatchedShowsMonth => 'Самые просматриваемые сериалы месяца';

  @override
  String get trendingThisWeek => 'В тренде на этой неделе';

  @override
  String get mostWatchedThisMonth => 'Самое просматриваемое за месяц';

  @override
  String get repoLinksAdded => 'Ссылки на репозиторий добавлены!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'Ошибка при получении данных из AniList.';

  @override
  String get navInfo => 'ИНФО';

  @override
  String get navComments => 'КОММЕНТАРИИ';

  @override
  String get playerNotAvailable => 'Плеер пока недоступен';

  @override
  String deepLinkInitialError(String error) {
    return 'Ошибка при получении начальной deep-ссылки: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Ошибка при открытии ссылки: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Не удаётся открыть эту ссылку: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Ошибка при открытии ссылки: $error';
  }

  @override
  String get forReleasingTitles => 'для тайтлов, которые сейчас выходят';

  @override
  String get progress => 'Прогресс';

  @override
  String get notes => 'Заметки';

  @override
  String serviceNotFound(String id) {
    return 'Сервис «$id» не найден';
  }

  @override
  String get glassEffectEnabled => 'Эффект стекла включён';

  @override
  String get glassEffectDisabled => 'Эффект стекла выключен';

  @override
  String get materialYouEnabled => 'Material You включён';

  @override
  String get materialYouDisabled => 'Material You выключен';

  @override
  String get darkModeEnabled => 'Тёмный режим включён';

  @override
  String get darkModeDisabled => 'Тёмный режим выключен';

  @override
  String get animeList => 'Список аниме';

  @override
  String get mangaList => 'Список манги';

  @override
  String ownerAnimeList(String owner) {
    return 'Список аниме: $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Список манги: $owner';
  }

  @override
  String get loadingList => 'Загружаю список';

  @override
  String get earlier => 'Раньше';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня назад',
      many: '$count дней назад',
      few: '$count дня назад',
      one: '$count день назад',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count часа назад',
      many: '$count часов назад',
      few: '$count часа назад',
      one: '$count час назад',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count минуты назад',
      many: '$count минут назад',
      few: '$count минуты назад',
      one: '$count минуту назад',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count мин назад';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ч назад';
  }

  @override
  String daysAgoShort(int count) {
    return '$count дн. назад';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count нед. назад';
  }

  @override
  String get couldntLoadSource => 'Не удалось загрузить этот источник';

  @override
  String get followers => 'Подписчики';

  @override
  String couldntLoadTitle(String title) {
    return 'Не удалось загрузить: $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Не удалось загрузить этот профиль';

  @override
  String get profile => 'Профиль';

  @override
  String get feed => 'Лента';

  @override
  String get stats => 'Статистика';

  @override
  String get received => 'Полученные';

  @override
  String get sent => 'Отправленные';

  @override
  String get global => 'Общая';

  @override
  String get couldntLoadPage => 'Не удалось загрузить эту страницу';

  @override
  String get couldntLoadAllDetails => 'Не удалось загрузить все данные';

  @override
  String get series => 'Сериалы';

  @override
  String get studios => 'Студии';

  @override
  String get users => 'Пользователи';

  @override
  String repositoriesTitle(String type) {
    return 'Репозитории: $type';
  }

  @override
  String get repositoryUrl => 'URL репозитория';

  @override
  String get downloadingRepository => 'Скачиваю репозиторий…';

  @override
  String get noRepositories => 'Репозитории не добавлены';

  @override
  String repoExtensionsCount(String count) {
    return 'Расширений: $count';
  }

  @override
  String get searchExtensions => 'Поиск расширений...';

  @override
  String deletePluginTitle(String name) {
    return 'Удалить $name?';
  }

  @override
  String get deletePluginMessage => 'Точно удалить этот плагин?';

  @override
  String pluginDeleted(String name) {
    return '$name удалён';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name нет в настроенном репозитории';
  }

  @override
  String get pluginFetchFailed => 'Не удалось получить данные о плагине';

  @override
  String installPluginTitle(String name) {
    return 'Установить $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Размер: $size';
  }

  @override
  String get installedState => 'Установлено';

  @override
  String updatePluginTitle(String name) {
    return 'Update $name';
  }

  @override
  String get errorLabel => 'Ошибка:';

  @override
  String get stackTraceDetails => 'Подробности (стек вызовов)';

  @override
  String get shareLogFile => 'Поделиться файлом логов';

  @override
  String get copyLogs => 'Копировать логи';

  @override
  String noListToEdit(String service) {
    return 'У $service нет списка для редактирования';
  }

  @override
  String get couldNotReadFile => 'Не удалось прочитать этот файл';

  @override
  String importedSummary(int anime, int manga) {
    return 'Импортировано: аниме — $anime, манга — $manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · уже было: $count';
  }

  @override
  String get airingNow => 'Сейчас выходит';

  @override
  String get topRatedMovies => 'Лучшие фильмы по оценкам';

  @override
  String get koreanDramas => 'Корейские дорамы';

  @override
  String get chineseDramas => 'Китайские дорамы';

  @override
  String get japaneseDramas => 'Японские дорамы';

  @override
  String get thaiDramas => 'Тайские дорамы';

  @override
  String get turkishDramas => 'Турецкие сериалы';

  @override
  String get miniSeries => 'Мини-сериалы';

  @override
  String get topRatedShows => 'Лучшие сериалы по оценкам';

  @override
  String get recommendedSection => 'Рекомендуем';

  @override
  String get syncRow => 'Синхронизация списков';

  @override
  String get syncRowDesc =>
      'Копирует список одного сервиса в остальные твои аккаунты';

  @override
  String get syncTitle => 'Синхронизировать';

  @override
  String get syncMainService => 'Главный сервис';

  @override
  String get syncMainServiceDesc =>
      'Его список считается эталоном; все остальные сервисы, где ты вошёл, подгоняются под него';

  @override
  String get syncAuto => 'Автосинхронизация';

  @override
  String get syncAutoDesc =>
      'Загружать и синхронизировать в фоне при запуске приложения и каждые 30 минут';

  @override
  String get syncAddMissing => 'Добавлять недостающие записи';

  @override
  String get syncAddMissingDesc =>
      'Добавлять и записи, которых в другом сервисе ещё нет';

  @override
  String get syncOnlyForward => 'Сохранять больший прогресс';

  @override
  String get syncOnlyForwardDesc =>
      'Не уменьшать прогресс в сервисе, где он уже больше';

  @override
  String get syncFetch => 'Загрузить';

  @override
  String get syncFetchAgain => 'Загрузить заново';

  @override
  String get syncAll => 'Синхронизировать всё';

  @override
  String get syncStop => 'Стоп';

  @override
  String get syncResume => 'Продолжить';

  @override
  String get syncNothingToSync =>
      'Этот сервис нельзя синхронизировать для этого типа';

  @override
  String get syncNoTargets => 'Войди в другой сервис, чтобы синхронизировать';

  @override
  String get syncLoadingMap => 'Загружаю сопоставление ID';

  @override
  String get syncComparing => 'Сравниваю списки';

  @override
  String get syncIntro =>
      'Выбери главный сервис и нажми «Загрузить». Каждый сервис опрашивается один раз за твоим списком, потом он сравнивается с главным.';

  @override
  String get syncStateSynced => 'Синхронизировано';

  @override
  String get syncStateOutdated => 'Не синхронизировано';

  @override
  String get syncStateMissing => 'Нет в списке';

  @override
  String get syncStateUnmapped => 'Нет совпадения';

  @override
  String syncPaused(String time) {
    return 'Ждём лимит запросов, продолжу через $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return 'Только в $name: $count, не трогаем';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done из $total';
  }

  @override
  String get syncNothingHere => 'Нечего показать';

  @override
  String syncLimits(int used, int max, String window) {
    return 'Использовано запросов: $used из $max за $window';
  }

  @override
  String get syncMinute => 'минуту';

  @override
  String get syncDay => 'день';

  @override
  String get syncNotInList => 'Пока не в списке';

  @override
  String get syncCleared => 'План очищен';

  @override
  String get syncClear => 'Очистить';

  @override
  String get syncOptions => 'Параметры';

  @override
  String get syncShared => 'Делит запись с другим элементом';

  @override
  String syncNotFound(String service) {
    return 'Не найдено в $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Синхронизировать $service ($count)';
  }

  @override
  String get syncOnEdit => 'Мгновенная синхронизация';

  @override
  String get syncOnEditDesc =>
      'Сразу отправлять каждое изменение прогресса и правку списка в остальные сервисы, где ты вошёл';

  @override
  String syncPushed(String services) {
    return 'Синхронизировано: $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Превышен лимит запросов, попробуй чуть позже';

  @override
  String get syncAhead => 'Где больше прогресс';

  @override
  String get syncAheadDesc =>
      'В обе стороны: для каждого тайтла побеждает самая продвинутая запись и копируется во все остальные сервисы';

  @override
  String syncAheadFrom(String service) {
    return 'Из $service';
  }

  @override
  String get syncConfirm => 'Проверить перед синхронизацией';

  @override
  String get syncConfirmDesc =>
      'Показать, что изменит «Синхронизировать всё» и сколько для этого нужно запросов';

  @override
  String get syncPreviewTitle => 'Готово к синхронизации';

  @override
  String syncPreviewLine(int updates, int adds) {
    return 'Обновить: $updates, добавить: $adds';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Примерно запросов: $count';
  }

  @override
  String syncPreviewLookups(int count) {
    return 'Сначала нужно найти ID: $count';
  }

  @override
  String get syncPreviewNothing => 'Менять нечего';

  @override
  String get syncStart => 'Старт';

  @override
  String get syncRetry => 'Повторить';

  @override
  String get syncSkip => 'Пропустить этот элемент';

  @override
  String get syncInclude => 'Вернуть этот элемент';

  @override
  String get syncSkippedLabel => 'Пропущено';

  @override
  String get syncChanges => 'Различия';

  @override
  String get syncChangeStatus => 'Статус';

  @override
  String get syncChangeProgress => 'Прогресс';

  @override
  String get syncChangeScore => 'Оценка';

  @override
  String get syncChangeDates => 'Даты';

  @override
  String get syncChangeRepeat => 'Число пересмотров';

  @override
  String get syncFailedReason => 'Почему не получилось';

  @override
  String get syncSkippedHint =>
      'Пропущенные элементы не трогаем, даже после повторной загрузки';

  @override
  String get commentsRules => 'Правила комментариев';

  @override
  String get commentsRulesBody =>
      'НАРУШИЛ ПРАВИЛО — ВЫЛЕТАЕШЬ\n\n1. Никакого расизма, дискриминации и разжигания ненависти\n2. Никакого спама и самопиара\n3. Категорически никакого NSFW\n4. Только английский, без исключений\n5. Не выдавай себя за других, никакой травли и оскорблений\n6. Никакого нелегального контента и крайнего неуважения к любому фандому\n7. Не проси и не делись репозиториями или расширениями\n8. Спойлеры только под спойлер-тегом и с предупреждением\n9. Никакой сексуализации и неприличных комментариев про несовершеннолетних персонажей\n10. Если это неправильно — не пости!';

  @override
  String get commentsRulesAccept => 'Понятно';

  @override
  String get commentsSortNewest => 'Сначала новые';

  @override
  String get commentsSortOldest => 'Сначала старые';

  @override
  String get commentsSortHighest => 'С высокой оценкой';

  @override
  String get commentsSortLowest => 'С низкой оценкой';

  @override
  String commentsEpisodeShort(int number) {
    return 'Серия $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Гл. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Фильтр по серии';

  @override
  String get commentsFilterChapterTitle => 'Фильтр по главе';

  @override
  String get commentsFilterTagTitle => 'Введи номер серии или главы';

  @override
  String get commentsFilterHint => 'Номер';

  @override
  String get commentsFilterApply => 'Фильтр';

  @override
  String get commentsFilterClear => 'Показать все';

  @override
  String get commentsPlaceholder => 'Добавь комментарий…';

  @override
  String commentsReplyingTo(String name) {
    return 'Ответ для $name';
  }

  @override
  String get commentsSend => 'Отправить';

  @override
  String get commentsTagButton => 'Метка';

  @override
  String commentsTagTitle(String label) {
    return 'Метка $label (необязательно)';
  }

  @override
  String get commentsTagEpisode => 'серия';

  @override
  String get commentsTagChapter => 'глава';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Номер: $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Метка не может быть больше общего числа ($total)';
  }

  @override
  String get commentsNoTag => 'Без метки';

  @override
  String get commentsSpoiler => 'Спойлер';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Поиск GIF';

  @override
  String get commentsGifEmpty => 'GIF не найдены';

  @override
  String get commentsEmptyText => 'Комментарий не может быть пустым';

  @override
  String get commentsBannedYou => 'Тебе запрещено комментировать';

  @override
  String get commentsEdited => 'Комментарий изменён';

  @override
  String get commentsDeleted => 'Комментарий удалён';

  @override
  String get commentsDeletedPlaceholder => '[удалено]';

  @override
  String get commentsReported => 'Жалоба на комментарий отправлена';

  @override
  String get commentsUserBanned => 'Пользователь забанен';

  @override
  String get commentsReport => 'Пожаловаться';

  @override
  String get commentsReportAsk =>
      'Пожаловаться на этот комментарий модераторам?';

  @override
  String get commentsDelete => 'Удалить';

  @override
  String get commentsDeleteAsk => 'Этот комментарий будет удалён для всех.';

  @override
  String get commentsBan => 'Забанить';

  @override
  String get commentsBanAsk => 'Запретить этому пользователю комментировать?';

  @override
  String get commentsCopy => 'Копировать';

  @override
  String get commentsViewReply => 'Показать 1 ответ';

  @override
  String commentsViewReplies(int count) {
    return 'Показать ответы: $count';
  }

  @override
  String get commentsHideReplies => 'Скрыть ответы';

  @override
  String get commentsLoadMore => 'Загрузить ещё комментарии';

  @override
  String get commentsEmpty => 'Комментариев пока нет. Будь первым!';

  @override
  String get commentsEmptyFiltered => 'Нет комментариев по этому фильтру';

  @override
  String get commentsSignIn =>
      'Войди в AniList, чтобы читать и писать комментарии';

  @override
  String get commentsSignInMessage =>
      'Комментарии общие для всех сервисов и работают через твой аккаунт AniList.';

  @override
  String get commentsUnavailable => 'Для этого тайтла комментарии недоступны';

  @override
  String get commentsUnavailableMessage =>
      'Не удалось сопоставить с записью AniList.';

  @override
  String get commentsDisabled => 'Комментарии выключены';

  @override
  String get commentsDisabledMessage =>
      'Включить их обратно можно в Настройки › Общие.';

  @override
  String get commentsOffline => 'Не удалось загрузить комментарии';

  @override
  String get commentsSingleTitle => 'Показан один комментарий';

  @override
  String get commentsShowAll => 'Показать все комментарии';

  @override
  String get commentsSettingsHeader => 'Комментарии';

  @override
  String get commentsSettingEnabled => 'Комментарии';

  @override
  String get commentsSettingEnabledDesc =>
      'Показывать вкладку «Комментарии» в тайтлах и входить на сервер комментариев через твой аккаунт AniList';

  @override
  String get commentsSettingAlerts => 'Уведомления об ответах';

  @override
  String get commentsSettingAlertsDesc =>
      'Сообщать, когда кто-то отвечает на мои комментарии';

  @override
  String get commentsNoticeReplyTitle => 'Новый ответ на комментарий';

  @override
  String commentsNoticeReply(String name) {
    return '$name ответил(а) на твой комментарий';
  }

  @override
  String get commentsNoticeWarningTitle => 'Ты получил предупреждение';

  @override
  String get commentsNoticeWarning => 'Будь внимательнее в комментариях';

  @override
  String get commentsNoticeUpdateTitle => 'Обновление от Dantotsu';

  @override
  String get barcodeTitle => 'Сканировать штрихкод';

  @override
  String get barcodeTooltip => 'Найди мангу или новеллу по штрихкоду';

  @override
  String get barcodeIntro =>
      'Наведи камеру на штрихкод на обороте тома или введи ISBN.';

  @override
  String get barcodeIntroManual =>
      'Введи ISBN, напечатанный над штрихкодом на обороте тома.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Это недействительный ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'Книга для $isbn не найдена';
  }

  @override
  String get barcodeCameraDenied =>
      'Камера недоступна. Разреши доступ к камере или введи ISBN.';

  @override
  String get themesTitle => 'Опенинги и эндинги';

  @override
  String get themesPlayVideo => 'Воспроизвести видео';

  @override
  String get themesPlayAudio => 'Только звук';

  @override
  String get themesOpenSite => 'Открыть на AnimeThemes';

  @override
  String get themesCredit => 'Темы с AnimeThemes';

  @override
  String get themesVersions => 'Версии';

  @override
  String get sauceTitle => 'Найти источник';

  @override
  String get sauceIntro =>
      'Загрузи страницу манги или арт либо вставь ссылку, чтобы узнать, откуда это.';

  @override
  String get sauceKeyTitle => 'API-ключ SauceNAO';

  @override
  String get sauceKeyHint => 'Необязательно, поднимает дневной лимит поиска';

  @override
  String get sauceKeyDesc => 'Бесплатный ключ — на saucenao.com/user.php';

  @override
  String get sauceOpen => 'Открыть источник';

  @override
  String get sauceCredit => 'Поиск по картинке — SauceNAO';

  @override
  String get sauceEmpty => 'Совпадений нет';

  @override
  String get sauceTooltip => 'Найди источник страницы манги или арта';

  @override
  String get trendzTitle => 'Чарты аниме';

  @override
  String get trendzAnime => 'Аниме';

  @override
  String get trendzFemale => 'Женские персонажи';

  @override
  String get trendzMale => 'Мужские персонажи';

  @override
  String get trendzCouple => 'Пары';

  @override
  String get trendzCredit => 'Еженедельные чарты от AniTrendz';

  @override
  String get trendzNew => 'НОВОЕ';

  @override
  String get trendzEmpty => 'Чарт пуст';

  @override
  String get shareCard => 'Поделиться карточкой';

  @override
  String get shareCardList => 'Поделиться карточкой списка';

  @override
  String get shareCardSaved => 'Карточка сохранена';

  @override
  String get shareCardFailed => 'Не удалось сделать карточку';

  @override
  String get shareCardListEmpty => 'В твоём списке пока нечем делиться';

  @override
  String get shareCardTop => 'Мой топ';

  @override
  String themesEpisodes(String eps) {
    return 'Серий: $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return 'Совпадение $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Неделя $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return 'Голосов: $count';
  }

  @override
  String trendzPeak(String rank) {
    return 'Пик #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'Недель в топ-10: $count';
  }

  @override
  String get imageSearchTitle => 'Поиск по картинке';

  @override
  String get imageSearchTooltip => 'Найди аниме по скриншоту';

  @override
  String get imageSearchIntro =>
      'Выбери скриншот или вставь ссылку на картинку, и trace.moe найдёт серию и момент, откуда она.';

  @override
  String get imageSearchPick => 'Выбрать картинку';

  @override
  String get imageSearchLinkHint => 'Вставь ссылку на картинку';

  @override
  String get imageSearchGo => 'Поиск';

  @override
  String get imageSearchEmpty => 'Совпадений нет';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Серия $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'на $time';
  }

  @override
  String get imageSearchPreview => 'Превью клипа';

  @override
  String imageSearchSimilarity(int percent) {
    return 'Совпадение $percent%';
  }

  @override
  String get imageSearchCredit => 'Работает на trace.moe';

  @override
  String get imageSearchOpenFailed => 'Не удалось открыть этот тайтл';

  @override
  String get groups => 'Группы';

  @override
  String get groupsYours => 'Твои группы';

  @override
  String get groupsPopular => 'Популярные';

  @override
  String get groupsNew => 'Новые';

  @override
  String get groupsFeatured => 'Рекомендуемые';

  @override
  String get groupsSearch => 'Поиск групп';

  @override
  String get groupsAll => 'Все';

  @override
  String get groupsEmpty => 'Групп не найдено';

  @override
  String get groupsEmptyYours => 'Ты пока не вступил ни в одну группу';

  @override
  String get groupsSignIn => 'Войди, чтобы увидеть свои группы';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count участника',
      many: '$count участников',
      few: '$count участника',
      one: '$count участник',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Вступить';

  @override
  String get groupsJoined => 'Вы в группе';

  @override
  String get groupsLeave => 'Выйти из группы';

  @override
  String get groupsLeaveAsk =>
      'Ты перестанешь видеть посты этой группы в своей ленте.';

  @override
  String get groupsJoinFailed =>
      'Не удалось вступить в группу, возможно, вход только по приглашению';

  @override
  String get groupsLeaveFailed => 'Не удалось выйти из группы';

  @override
  String get groupsPosts => 'Посты';

  @override
  String get groupsMembersTab => 'Участники';

  @override
  String get groupsAbout => 'О группе';

  @override
  String get groupsRules => 'Правила';

  @override
  String get groupsPrivacyOpen => 'Открытая';

  @override
  String get groupsPrivacyRestricted => 'С ограничениями';

  @override
  String get groupsPrivacyClosed => 'Закрытая';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Админ';

  @override
  String get groupsRoleMod => 'Модер';

  @override
  String get groupsCouldntLoad => 'Не удалось загрузить эту группу';

  @override
  String get groupsNewPost => 'Написать в группу';

  @override
  String get groupsPostHint => 'Поделись чем-нибудь с группой';

  @override
  String get groupsOpenInBrowser => 'Открыть в браузере';

  @override
  String get groupsCategory => 'Категория';

  @override
  String get groupsLanguage => 'Язык';

  @override
  String get groupsCreated => 'Создано';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count лидера',
      many: '$count лидеров',
      few: '$count лидера',
      one: '$count лидер',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Приватность';

  @override
  String get notificationsAll => 'Все';

  @override
  String get notificationsAiring => 'Выходит';

  @override
  String get notificationsMedia => 'Новые тайтлы';

  @override
  String get notificationsReplies => 'Ответы';

  @override
  String get notificationsMentions => 'Упоминания';

  @override
  String get notificationsMessages => 'Сообщения';

  @override
  String get notificationsLikes => 'Лайки';

  @override
  String get notificationsFollows => 'Подписки';

  @override
  String get notificationsNoServices =>
      'Ни у одного сервиса, где ты вошёл, нет уведомлений';

  @override
  String get notificationsNoServicesMessage =>
      'Войди в сервис, который шлёт уведомления, и они появятся здесь.';

  @override
  String get notificationsEmptyKind => 'В этой категории пока пусто';

  @override
  String get notificationsCommentsEmpty => 'Нет уведомлений о комментариях';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Ответы на твои комментарии и объявления от Dantotsu появятся здесь.';

  @override
  String get notificationsSettings => 'Настройки уведомлений';

  @override
  String get notificationsPollTitle => 'Проверять новые уведомления';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Каждые $minutes мин., пока приложение открыто';
  }

  @override
  String get notificationsNotifyAbout => 'Уведомлять о';

  @override
  String get notificationsCommentsHeader => 'Уведомления о комментариях';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Показывать системное уведомление для каждого непрочитанного уведомления $service, пока приложение работает.';
  }

  @override
  String get notificationsTestSent => 'Тестовое уведомление отправлено';

  @override
  String get notificationsTestDenied =>
      'Для Dartotsu уведомления не разрешены. Включи их в настройках системы.';

  @override
  String get notificationsTestHint =>
      'Удерживай, чтобы отправить тестовое уведомление';

  @override
  String get notificationsTestSample => 'Это тестовое уведомление';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ответил(а) на твой комментарий в «$media»';
  }

  @override
  String get imageSearchNotLink => 'Это не похоже на ссылку';

  @override
  String get imageSearchQuota => 'Превышена квота поиска';

  @override
  String get imageSearchBusy => 'Слишком много запросов, попробуй чуть позже';

  @override
  String imageSearchFailed(int code) {
    return 'Поиск не удался ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return 'Новых уведомлений: $count';
  }

  @override
  String get reactionsTitle => 'Реакции';

  @override
  String get reactionsNeedEntry =>
      'Добавь тайтл в список, прежде чем реагировать';

  @override
  String get reactionsAdd => 'Добавить реакцию';

  @override
  String get reactionsHint => 'Что думаешь? (коротко и без спойлеров)';

  @override
  String get reactionsPost => 'Отправить';

  @override
  String get reactionsFailed => 'Не удалось обновить реакцию';

  @override
  String get settingsWatch => 'Смотреть и читать';

  @override
  String get settingsWatchDesc =>
      'Списки серий, подбор источников и детали серий';

  @override
  String get watchSettingsLayout => 'Список серий';

  @override
  String get watchSettingsSources => 'Источники';

  @override
  String get watchSettingsMetadata => 'Детали серии';

  @override
  String get watchLayout => 'Раскладка';

  @override
  String get watchListView => 'Список';

  @override
  String get watchGridView => 'Сетка';

  @override
  String get watchCompactView => 'Компактно';

  @override
  String get watchDefaultLayoutDesc =>
      'Как выглядят серии и главы, пока ты не поменяешь это для тайтла';

  @override
  String get watchChunkSize => 'Размер диапазона';

  @override
  String get watchChunkSizeDesc =>
      'Сколько серий или глав в каждой вкладке диапазона';

  @override
  String get watchShowDescription => 'Показывать описания';

  @override
  String get watchShowDescriptionDesc =>
      'Показывать краткое содержание серии под названием в виде списка';

  @override
  String get watchShowFiller => 'Показывать филлеры';

  @override
  String get watchShowFillerDesc =>
      'Выключи, чтобы скрыть серии, помеченные как филлер';

  @override
  String get watchBlurUnwatched => 'Скрывать превью со спойлерами';

  @override
  String get watchBlurUnwatchedDesc =>
      'Размывать превью серий, которые ты ещё не смотрел';

  @override
  String get watchResumeShelf => 'Полка «Продолжить»';

  @override
  String get watchResumeShelfDesc =>
      'Показывать строку «Продолжить» на главной';

  @override
  String get watchMarkOnLongPress => 'Удержание отмечает прогресс';

  @override
  String get watchMarkOnLongPressDesc =>
      'Удерживай серию или главу, чтобы отметить её просмотренной или непросмотренной';

  @override
  String get watchMatching => 'Подбор источника';

  @override
  String get watchMatchingDesc =>
      '«Ближайшее» берёт лучший результат поиска. «Только точное» принимает лишь почти идентичное название, остальное ты выбираешь сам.';

  @override
  String get watchMatchClosest => 'Ближайшее совпадение';

  @override
  String get watchMatchExact => 'Только точное совпадение';

  @override
  String get watchMetadataDesc =>
      'Откуда брать названия серий, описания, превью, даты выхода и пометки филлеров. Перетащи, чтобы задать приоритет; выигрывает первый источник со значением.';

  @override
  String get watchMetaAniZipDesc =>
      'Названия серий, описания, кадры и даты выхода';

  @override
  String get watchMetaKitsuDesc => 'Названия серий, описания и превью';

  @override
  String get watchMetaSimklDesc =>
      'Названия серий, описания, кадры и даты выхода';

  @override
  String get watchMetaAniListDesc =>
      'Названия серий в стриминге, превью и расписание выхода';

  @override
  String get watchMetaTenraiDesc =>
      'Названия серий, даты выхода, филлеры и рекапы из MyAnimeList через Tenrai';

  @override
  String get watchClearMetadata => 'Обновить детали серий';

  @override
  String get watchClearMetadataDesc =>
      'Сбросить кэш деталей серий, чтобы загрузить их заново';

  @override
  String get watchMetadataCleared => 'Детали серий загрузятся заново';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count серии',
      many: '$count серий',
      few: '$count серии',
      one: '$count серия',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count главы',
      many: '$count глав',
      few: '$count главы',
      one: '$count глава',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Серия $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Глава $number';
  }

  @override
  String get watchSearching => 'Ищу…';

  @override
  String watchSearchingFor(String term) {
    return 'Ищу: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Выбрано: $title';
  }

  @override
  String watchFound(String title) {
    return 'Найдено: $title';
  }

  @override
  String get watchNothingFound => 'В этом источнике ничего не найдено';

  @override
  String get watchSearchFailed => 'Поиск по источнику не удался';

  @override
  String get watchLoadFailed => 'Не удалось загрузить список';

  @override
  String get watchSignInToTrack => 'Войди, чтобы отслеживать прогресс';

  @override
  String watchInstallSource(String action) {
    return 'Установи расширение, чтобы начать: $action';
  }

  @override
  String get watchSourceMissing => 'Этот источник не установлен';

  @override
  String get watchWrongTitle => 'Не тот тайтл?';

  @override
  String get watchSearchAgain => 'Искать снова';

  @override
  String watchSearchSource(String source) {
    return 'Поиск: $source';
  }

  @override
  String get watchSource => 'Источник';

  @override
  String get watchOptions => 'Параметры';

  @override
  String get watchReverse => 'Обратный порядок';

  @override
  String get watchScanlators => 'Группы';

  @override
  String get watchResetOptions => 'Сбросить эти параметры';

  @override
  String get watchContinue => 'Продолжить';

  @override
  String get watchStart => 'Начать';

  @override
  String get watchPlay => 'Смотреть';

  @override
  String get watchRead => 'Читать';

  @override
  String get watchMarkWatched => 'Отметить просмотренным';

  @override
  String get watchMarkUnwatched => 'Отметить непросмотренным';

  @override
  String get watchMarkRead => 'Отметить прочитанным';

  @override
  String get watchMarkUnread => 'Отметить непрочитанным';

  @override
  String get watchFiller => 'Филлер';

  @override
  String get watchRecap => 'Рекап';

  @override
  String get watchNoEpisodes => 'Серии не найдены';

  @override
  String get watchNoChapters => 'Главы не найдены';

  @override
  String get watchSourceTools => 'Инструменты источника';

  @override
  String get watchSourceSettings => 'Настройки источника';

  @override
  String get watchOpenWebView => 'Открыть в веб-просмотре';

  @override
  String get watchOpenWebViewDesc =>
      'Пройди проверку Cloudflare или войди; cookies общие с запросами источника';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies сохранено для $host',
      many: '$count cookies сохранено для $host',
      few: '$count cookies сохранено для $host',
      one: '$count cookie сохранён для $host',
      zero: 'Нет cookies для $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Допуск Cloudflare активен, $time';
  }

  @override
  String get watchClearanceMissing => 'Нет cookie допуска Cloudflare';

  @override
  String get watchClearanceSession => 'действует, пока приложение не закроется';

  @override
  String get watchAgentShared =>
      'Запросы используют user agent веб-просмотра, который проверяет Cloudflare';

  @override
  String get watchAgentCustom =>
      'Задан свой user agent, поэтому допуск Cloudflare из веб-просмотра могут отклонить';

  @override
  String get watchTestConnection => 'Проверить соединение';

  @override
  String get watchSolveChallenge => 'Пройти';

  @override
  String watchProbeOk(int code) {
    return 'Доступен (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare всё ещё требует проверку';

  @override
  String watchProbeBlocked(int code) {
    return 'Сайт заблокировал доступ (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Сайт недоступен';

  @override
  String get watchClearCookies => 'Очистить cookies этого сайта';

  @override
  String get watchCookiesCleared => 'Cookies очищены';

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
  String get watchMetaSource => 'Детали серий из';

  @override
  String get watchMetaAuto => 'Автоматически';

  @override
  String get watchMetaOff => 'Выкл.';

  @override
  String get playerSettingsTitle => 'Настройки плеера';

  @override
  String get playerSectionPlayback => 'Воспроизведение';

  @override
  String get playerSectionSkip => 'Пропуск';

  @override
  String get playerSectionGestures => 'Управление';

  @override
  String get playerSectionSubtitles => 'Субтитры';

  @override
  String get playerSectionShaders => 'Шейдеры';

  @override
  String get playerSectionEngine => 'Движок';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Скорость воспроизведения';

  @override
  String get playerCursedSpeed => 'Дополнительные скорости';

  @override
  String get playerCursedSpeedDesc => 'Добавить в список скорости до 10x';

  @override
  String get playerResize => 'Режим масштабирования';

  @override
  String get playerFitFit => 'Вписать';

  @override
  String get playerFitCover => 'Заполнить';

  @override
  String get playerFitStretch => 'Растянуть';

  @override
  String get playerSkipDuration => 'Длина кнопки пропуска';

  @override
  String get playerSkipDurationDesc =>
      'На сколько секунд кнопка пропуска перематывает вне опенингов и эндингов';

  @override
  String get playerSeekDuration => 'Перемотка двойным тапом';

  @override
  String get playerSeekDurationDesc =>
      'Сколько секунд перематывать двойным тапом или стрелкой';

  @override
  String get playerAutoPlay => 'Автоматически включать следующую';

  @override
  String get playerAutoPlayDesc =>
      'Запускать следующую серию, когда эта закончится';

  @override
  String get playerResume => 'Продолжать с места остановки';

  @override
  String get playerResumeDesc => 'Продолжать серию с последней позиции';

  @override
  String get playerOrientation => 'Ориентация';

  @override
  String get playerOrientationAuto => 'Как у устройства';

  @override
  String get playerOrientationLandscape => 'Альбомная';

  @override
  String get playerOrientationPortrait => 'Портретная';

  @override
  String get playerAutoSkipOpening => 'Пропускать опенинги';

  @override
  String get playerAutoSkipEnding => 'Пропускать эндинги';

  @override
  String get playerAutoSkipRecap => 'Пропускать рекапы';

  @override
  String get playerAutoSkipDesc =>
      'Перескакивать сразу, как начнётся, по данным AniSkip и меткам стрима';

  @override
  String get playerSkipOnce => 'Пропускать только один раз';

  @override
  String get playerSkipOnceDesc =>
      'Не пропускать ту же часть снова, если перемотаешь назад';

  @override
  String get playerAdjustBrightness => 'Жест яркости';

  @override
  String get playerAdjustBrightnessDesc =>
      'Свайп вверх и вниз по правой половине экрана';

  @override
  String get playerAdjustVolume => 'Жест громкости';

  @override
  String get playerAdjustVolumeDesc =>
      'Свайп вверх и вниз по левой половине экрана';

  @override
  String get playerHoldToSpeed => 'Удержание для ускорения';

  @override
  String get playerHoldToSpeedDesc =>
      'Удерживай видео, чтобы смотреть быстрее, и води в сторону, чтобы менять скорость';

  @override
  String get playerThumbless => 'Толстая полоса перемотки';

  @override
  String get playerThumblessDesc => 'Толстая полоса без ползунка';

  @override
  String get playerShowSubtitles => 'Показывать субтитры';

  @override
  String get playerShowSubtitlesDesc =>
      'Выключи, чтобы скрыть все дорожки субтитров';

  @override
  String get playerSubtitleLanguage => 'Предпочитаемый язык субтитров';

  @override
  String get playerSubtitleSize => 'Размер субтитров';

  @override
  String get playerSubtitleWeight => 'Толщина субтитров';

  @override
  String get playerSubtitleBottom => 'Отступ субтитров снизу';

  @override
  String get playerSubtitleFont => 'Шрифт субтитров';

  @override
  String get playerSubtitleColor => 'Цвет субтитров';

  @override
  String get playerSubtitleBackground => 'Фон субтитров';

  @override
  String get playerSubtitleOutline => 'Контур субтитров';

  @override
  String get playerLibass => 'Использовать libass';

  @override
  String get playerLibassDesc =>
      'Отрисовывать стилизованные субтитры .ass. Размер, цвет и шрифт выше тогда не действуют';

  @override
  String get playerShaders => 'Шейдеры';

  @override
  String get playerShadersEnable => 'Включить шейдеры';

  @override
  String get playerShadersEnableDesc =>
      'Апскейл и очистка картинки GLSL-шейдерами вроде Anime4K';

  @override
  String get playerShadersOff => 'Шейдеры выключены';

  @override
  String get playerShadersMissing => 'Anime4K не установлен';

  @override
  String get playerShadersMissingDesc =>
      'Скачай набор шейдеров Anime4K (около 0,8 МБ), чтобы пользоваться встроенными режимами.';

  @override
  String get playerShadersDownload => 'Скачать Anime4K';

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
  String get playerShadersPreview => 'Посмотреть на этом кадре';

  @override
  String get playerShadersUse => 'Использовать';

  @override
  String get playerPicture => 'Картинка';

  @override
  String get playerColors => 'Цвета';

  @override
  String get playerColorDefault => 'По умолчанию';

  @override
  String get playerColorVivid => 'Яркий';

  @override
  String get playerColorPop => 'Аниме-поп';

  @override
  String get playerColorSoft => 'Мягкий';

  @override
  String get playerColorCinematic => 'Киношный';

  @override
  String get playerColorBright => 'Светлый';

  @override
  String get playerColorNight => 'Ночной';

  @override
  String get playerColorMono => 'Моно';

  @override
  String get playerColorCustom => 'Свой';

  @override
  String get playerColorBrightness => 'Яркость';

  @override
  String get playerColorContrast => 'Контраст';

  @override
  String get playerColorSaturation => 'Насыщенность';

  @override
  String get playerColorGamma => 'Гамма';

  @override
  String get playerColorHue => 'Оттенок';

  @override
  String get playerColorReset => 'Сбросить';

  @override
  String get playerColorAdjust => 'Настроить';

  @override
  String get playerShadersOriginal => 'Оригинал';

  @override
  String get playerShadersPreviewFailed => 'Не удалось взять кадр для превью';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Твои шейдеры';

  @override
  String get playerShadersCustom => 'Свои шейдеры';

  @override
  String get playerShadersImport => 'Импорт .glsl';

  @override
  String get playerShadersNone =>
      'Импортируй свои файлы .glsl или .hook и отмечай, чтобы выстроить цепочку';

  @override
  String get playerShadersBadFile => 'Выбери файл шейдера .glsl или .hook';

  @override
  String get playerDecoder => 'Декодер';

  @override
  String get playerDecoderAuto => 'Авто';

  @override
  String get playerDecoderAutoSafe => 'Авто (безопасно)';

  @override
  String get playerDecoderSoftware => 'Программный';

  @override
  String get playerDecoderHardware => 'Аппаратный';

  @override
  String get playerDecoderHardwarePlus => 'Аппаратный+';

  @override
  String get playerVideoOutput => 'Видеовыход';

  @override
  String get playerAudioChannels => 'Аудиоканалы';

  @override
  String get playerBuffer => 'Размер буфера (МБ)';

  @override
  String get playerBufferDesc =>
      'Сколько памяти плеер может использовать для буферизации стрима';

  @override
  String get playerUseMpvConf => 'Использовать mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Применять параметры из твоего mpv.conf при запуске воспроизведения';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Редактировать конфигурацию mpv';

  @override
  String get playerMpvConfDesc =>
      'Один параметр на строку, как --hwdec=auto в обычном mpv.conf. Профили в [скобках] игнорируются.';

  @override
  String get playerMpvConfSaved => 'mpv.conf сохранён';

  @override
  String get playerUseScripts => 'Использовать скрипты mpv';

  @override
  String get playerUseScriptsDesc =>
      'Загружать плагины из папки скриптов. Нужна сборка libmpv с поддержкой Lua или JavaScript';

  @override
  String get playerScripts => 'Скрипты mpv';

  @override
  String get playerScriptsManage => 'Добавляй, удаляй и включай плагины';

  @override
  String get playerScriptsAdd => 'Добавить скрипт';

  @override
  String get playerScriptsDesc =>
      'Плагины Lua, JavaScript и нативные, положенные сюда, загружаются при запуске воспроизведения.';

  @override
  String get playerScriptsNone => 'Скриптов пока нет';

  @override
  String get playerScriptsBadFile =>
      'Выбери файл .lua, .js или нативный плагин';

  @override
  String get playerTuning => 'Тонкая настройка видео';

  @override
  String get playerTuningDesc =>
      'Переопределяет синхронизацию, кэш, масштабирование и тонмаппинг. Неверные значения могут испортить воспроизведение';

  @override
  String get playerVideoSync => 'Синхронизация видео';

  @override
  String get playerInterpolation => 'Интерполяция кадров';

  @override
  String get playerInterpolationDesc =>
      'Плавное движение, нужна синхронизация display-resample';

  @override
  String get playerPitch => 'Коррекция тона';

  @override
  String get playerPitchDesc => 'Голоса звучат естественно на других скоростях';

  @override
  String get playerCacheSeconds => 'Кэш (секунды)';

  @override
  String get playerReadahead => 'Упреждающее чтение (секунды)';

  @override
  String get playerThreads => 'Потоки декодера';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Убирает полосы цвета на градиентах';

  @override
  String get playerDebandIterations => 'Итерации deband';

  @override
  String get playerDebandThreshold => 'Порог deband';

  @override
  String get playerCorrectDownscaling => 'Корректное уменьшение';

  @override
  String get playerSigmoid => 'Сигмоидное увеличение';

  @override
  String get playerScale => 'Апскейлер';

  @override
  String get playerCscale => 'Апскейлер цветности';

  @override
  String get playerDscale => 'Даунскейлер';

  @override
  String get playerToneMapping => 'Тонмаппинг';

  @override
  String get playerTargetPeak => 'Целевой пик';

  @override
  String get playerOpenFiles => 'Открыть видеофайлы';

  @override
  String get playerOpenFilesDesc => 'Воспроизвести файлы с этого устройства';

  @override
  String get playerOpenFolder => 'Открыть папку';

  @override
  String get playerOpenFolderDesc =>
      'Воспроизвести все видео из папки как плейлист';

  @override
  String get playerNetworkStream => 'Сетевой поток';

  @override
  String get playerNetworkStreamDesc =>
      'Открыть прямую ссылку на видео или HLS';

  @override
  String get playerStreamUrl => 'URL потока';

  @override
  String get playerStreamReferer => 'Referer (необязательно)';

  @override
  String get playerTorrent => 'Торрент';

  @override
  String get playerTorrentDesc => 'Стримить magnet-ссылку или .torrent-файл';

  @override
  String get playerMagnetLink => 'Magnet-ссылка или URL торрента';

  @override
  String get playerPickTorrent => 'Выбрать .torrent-файл';

  @override
  String get playerTorrentMissing =>
      'Сначала установи торрент-дополнение: Настройки > Дополнения';

  @override
  String get playerNoVideos => 'Видео для воспроизведения не найдено';

  @override
  String get playerReset => 'Сбросить настройки плеера';

  @override
  String get playerResetDesc => 'Вернуть все параметры плеера по умолчанию';

  @override
  String get playerResetConfirm => 'Сбросить все настройки плеера?';

  @override
  String get playerResetDone => 'Настройки плеера сброшены';

  @override
  String get playerQuality => 'Качество';

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
  String get playerStreams => 'Потоки';

  @override
  String get playerAutoSelect => 'Выбирать поток автоматически';

  @override
  String get playerAutoSelectDesc =>
      'Выбирать поток, максимально похожий на твой прошлый выбор для этого тайтла';

  @override
  String get playerLoadingStreams => 'Ищу потоки…';

  @override
  String get playerNoStreams => 'У этой серии нет потоков';

  @override
  String get playerNoStreamsTitle => 'Потоки не найдены';

  @override
  String get playerFailed => 'Не удалось воспроизвести';

  @override
  String get playerTorrentNeeded => 'Этот поток — торрент';

  @override
  String get playerTorrentNeededDesc =>
      'Установи торрент-дополнение, чтобы воспроизводить magnet-ссылки и .torrent-файлы';

  @override
  String get playerOpenAddons => 'Открыть дополнения';

  @override
  String get playerTryAnotherStream => 'Попробовать другой поток';

  @override
  String get playerEpisodes => 'Серии';

  @override
  String get playerLock => 'Заблокировать управление';

  @override
  String get playerFullscreen => 'Во весь экран';

  @override
  String get readerChapters => 'Главы';

  @override
  String get readerSettingsTitle => 'Настройки читалки';

  @override
  String get readerPreviousChapter => 'Предыдущая глава';

  @override
  String get readerNextChapter => 'Следующая глава';

  @override
  String get readerFirstChapter => 'Это первая глава';

  @override
  String get readerLastChapter => 'Ты всё прочитал';

  @override
  String get readerFailed => 'Не удалось открыть эту главу';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'В этой главе нет текста';

  @override
  String get readerPerTitle => 'Только для этого тайтла';

  @override
  String get readerPerTitleDesc =>
      'Оставить эти настройки читалки только для этого тайтла';

  @override
  String get readerSectionReading => 'Чтение';

  @override
  String get readerSectionControls => 'Управление';

  @override
  String get readerSectionDisplay => 'Экран';

  @override
  String get readerSectionNovel => 'Новелла';

  @override
  String get readerMode => 'Режим чтения';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Справа налево';

  @override
  String get readerModeLtr => 'Слева направо';

  @override
  String get readerModeVertical => 'Вертикальные страницы';

  @override
  String get readerModeWebtoon => 'Вебтун';

  @override
  String get readerModeContinuous => 'Непрерывная прокрутка';

  @override
  String get readerScale => 'Масштаб изображения';

  @override
  String get readerScaleFit => 'По экрану';

  @override
  String get readerScaleWidth => 'По ширине';

  @override
  String get readerScaleHeight => 'По высоте';

  @override
  String get readerScaleOriginal => 'Оригинальный размер';

  @override
  String get readerScaleSmart => 'Умная подгонка';

  @override
  String get readerDoublePage => 'Разворот';

  @override
  String get readerDoublePageDesc =>
      'Показывать две страницы рядом в альбомной ориентации';

  @override
  String get readerDoubleTapZoom => 'Двойной тап для зума';

  @override
  String get readerDoubleTapZoomDesc =>
      'Увеличивать и уменьшать страницу двойным тапом';

  @override
  String get readerAnimate => 'Анимация страниц';

  @override
  String get readerAnimateDesc => 'Анимировать перелистывание';

  @override
  String get readerSidePadding => 'Боковые поля';

  @override
  String get readerSidePaddingDesc => 'Отступ по бокам от страниц, в процентах';

  @override
  String get readerPageGap => 'Промежуток между страницами';

  @override
  String get readerPageGapDesc => 'Расстояние между страницами';

  @override
  String get readerAutoNext => 'Переходить в следующую главу';

  @override
  String get readerAutoNextDesc =>
      'Загружать следующую главу, пока ты читаешь конец этой';

  @override
  String get readerPreload => 'Предзагрузка страниц';

  @override
  String get readerPreloadDesc => 'Сколько страниц скачивать заранее';

  @override
  String get readerTapZones => 'Зоны нажатия';

  @override
  String get readerTapDefault => 'По умолчанию';

  @override
  String get readerTapLShaped => 'Г-образные';

  @override
  String get readerTapKindle => 'Как в Kindle';

  @override
  String get readerTapEdge => 'Только края';

  @override
  String get readerTapOff => 'Отключены';

  @override
  String get readerInvertTaps => 'Поменять зоны нажатия';

  @override
  String get readerInvertTapsDesc =>
      'Меняет местами области «назад» и «вперёд»';

  @override
  String get readerBackground => 'Фон';

  @override
  String get readerBackgroundBlack => 'Чёрный';

  @override
  String get readerBackgroundGray => 'Серый';

  @override
  String get readerBackgroundWhite => 'Белый';

  @override
  String get readerBackgroundTheme => 'Тема приложения';

  @override
  String get readerFilter => 'Цветофильтр';

  @override
  String get readerFilterNone => 'Нет';

  @override
  String get readerFilterGrayscale => 'Оттенки серого';

  @override
  String get readerFilterInvert => 'Инверсия';

  @override
  String get readerFilterSepia => 'Сепия';

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
  String get readerDim => 'Затемнение';

  @override
  String get readerDimDesc => 'Затемнять страницы';

  @override
  String get readerPageNumber => 'Номер страницы';

  @override
  String get readerPageNumberDesc => 'Показывать номер страницы при чтении';

  @override
  String get readerFullscreen => 'Во весь экран';

  @override
  String get readerFullscreenDesc => 'Скрывать системные панели';

  @override
  String get readerCropBorders => 'Обрезать поля';

  @override
  String get readerCropBordersDesc =>
      'Обрезать пустые белые или чёрные поля у страниц';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Листать кнопками громкости';

  @override
  String get readerVolumeKeysDesc =>
      'Громкость вниз — вперёд, громкость вверх — назад';

  @override
  String get readerBookmarks => 'Закладки';

  @override
  String get readerBookmarkAdd => 'Добавить закладку';

  @override
  String get readerBookmarkRemove => 'Убрать закладку';

  @override
  String get readerBookmarksEmpty => 'Закладок пока нет';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Страница $page из $total';
  }

  @override
  String get readerAutoScroll => 'Автопрокрутка';

  @override
  String get readerAutoScrollStop => 'Остановить автопрокрутку';

  @override
  String get readerAutoScrollSpeed => 'Скорость автопрокрутки';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Как быстро страницы сами прокручиваются или перелистываются';

  @override
  String get readerKeepOn => 'Не гасить экран';

  @override
  String get readerKeepOnDesc => 'Экран не будет выключаться во время чтения';

  @override
  String get readerOrientation => 'Ориентация';

  @override
  String get readerOrientationFree => 'Свободная';

  @override
  String get readerOrientationPortrait => 'Портретная';

  @override
  String get readerOrientationLandscape => 'Альбомная';

  @override
  String get readerSaveProgress => 'Сохранять прогресс';

  @override
  String get readerSaveProgressDesc =>
      'Запоминать страницу и отмечать главы прочитанными';

  @override
  String get readerReset => 'Сбросить настройки читалки';

  @override
  String get readerResetDesc => 'Вернуть значения по умолчанию';

  @override
  String get novelSize => 'Размер текста';

  @override
  String get novelFont => 'Шрифт';

  @override
  String get novelLineHeight => 'Высота строки';

  @override
  String get novelParagraph => 'Отступ между абзацами';

  @override
  String get novelMargin => 'Поля';

  @override
  String get novelTheme => 'Тема читалки';

  @override
  String get novelThemeApp => 'Тема приложения';

  @override
  String get novelThemeLight => 'Светлая';

  @override
  String get novelThemeSepia => 'Сепия';

  @override
  String get novelThemeDark => 'Тёмная';

  @override
  String get novelThemeBlack => 'Чёрная';

  @override
  String get novelJustify => 'Выравнивание по ширине';

  @override
  String get novelJustifyDesc => 'Выравнивать текст по обоим краям';

  @override
  String get trackProgressTitle => 'Сохранять прогресс?';

  @override
  String trackProgressAnime(String name) {
    return 'Отмечать $name в твоём списке по ходу просмотра? Выбери «Только на устройстве», чтобы оставить это локально, или «Нет», чтобы ничего не сохранять.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Отмечать $name в твоём списке, когда дочитаешь главу? Выбери «Только на устройстве», чтобы оставить это локально, или «Нет», чтобы ничего не сохранять.';
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
  String get trackProgressYes => 'Сохранять';

  @override
  String get trackProgressReset =>
      'Вопрос о сохранении прогресса для этого типа сброшен, он появится снова';

  @override
  String get trackProgressNo => 'Нет';

  @override
  String get trackProgressOff => 'Выкл.';

  @override
  String get trackProgressLocal => 'Только на устройстве';

  @override
  String get trackProgressSettingAnime => 'Отмечать прогресс аниме';

  @override
  String get trackProgressSettingManga => 'Отмечать прогресс манги и новелл';

  @override
  String get trackProgressSettingDesc =>
      'Что делать, когда ты открываешь серию или дочитываешь главу';

  @override
  String get trackProgressAsk => 'Спрашивать';

  @override
  String get trackProgressAlways => 'Всегда';

  @override
  String get dantotsuImport => 'Импорт из Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Прочитать бэкап настроек Dantotsu (.ani или зашифрованный .sani)';

  @override
  String get dantotsuPick => 'Выбери бэкап Dantotsu';

  @override
  String get dantotsuNothing => 'Из этого файла нечего импортировать';

  @override
  String get dantotsuApply => 'Импортировать выбранное';

  @override
  String dantotsuDone(int done, int total) {
    return 'Импортировано $done из $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Аккаунты';

  @override
  String get dantotsuGroupAppearance => 'Оформление';

  @override
  String get dantotsuGroupExtensions => 'Расширения';

  @override
  String get dantotsuGroupApp => 'Приложение';

  @override
  String get dantotsuGroupPlayer => 'Плеер';

  @override
  String get dantotsuAnilist => 'Вход в AniList';

  @override
  String get dantotsuMal => 'Вход в MyAnimeList';

  @override
  String get dantotsuDiscord => 'Токен Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Тема';

  @override
  String get dantotsuReposAnime => 'Репозитории расширений для аниме';

  @override
  String get dantotsuReposManga => 'Репозитории расширений для манги';

  @override
  String get dantotsuReposNovel => 'Репозитории расширений для новелл';

  @override
  String get dantotsuUpdates => 'Проверка обновлений';

  @override
  String get dantotsuComments => 'Комментарии';

  @override
  String get dantotsuActivity => 'Опрос уведомлений AniList';

  @override
  String get dantotsuDns => 'DNS-провайдер';

  @override
  String get dantotsuPlayer => 'Скорость плеера и цвета субтитров';

  @override
  String get dantotsuWarning =>
      'В этом файле токены входа. Не показывай его другим.';

  @override
  String get novelIndent => 'Абзацный отступ';

  @override
  String get novelIndentDesc =>
      'Начинать каждый абзац с отступа в первой строке';

  @override
  String get novelLetterSpacing => 'Межбуквенный интервал';

  @override
  String get novelSectionTranslate => 'Перевод';

  @override
  String get sectionExperimental => 'Эксперименты';

  @override
  String get kitsuGraphqlDetail => 'Быстрые страницы тайтлов (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Загружать тайтл вместе с персонажами, командой и твоей записью одним запросом';

  @override
  String get togetherTitle => 'Смотреть вместе';

  @override
  String get togetherIntro =>
      'Вставь ссылку на комнату, которую прислал друг. Ты сразу подключишься, а плеер откроется, когда он начнёт смотреть.';

  @override
  String get togetherName => 'Твоё имя';

  @override
  String get togetherConnecting => 'Подключаюсь…';

  @override
  String get togetherLeave => 'Выйти из комнаты';

  @override
  String get togetherYou => 'Ты';

  @override
  String get togetherNoChat => 'Сообщений пока нет';

  @override
  String get togetherChatHint => 'Сообщение';

  @override
  String get togetherCopyInvite => 'Скопировать приглашение';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Сервер и комната скопированы';

  @override
  String get togetherConnectionLost => 'Соединение потеряно';

  @override
  String togetherConnectedTo(String room) {
    return 'Подключено к $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Не удалось подключиться: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name зашёл(а)';
  }

  @override
  String togetherLeft(String name) {
    return '$name вышел(а)';
  }

  @override
  String togetherPaused(String name) {
    return '$name поставил(а) на паузу';
  }

  @override
  String togetherResumed(String name) {
    return '$name продолжил(а)';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name перемотал(а) на $time';
  }

  @override
  String get togetherFollowFailed =>
      'Не удалось открыть серию хоста. Открой её сам.';

  @override
  String get togetherJoinRole => 'Войти в комнату';

  @override
  String get togetherOpenHost => 'Открыть серию хоста';

  @override
  String get togetherShowChat => 'Показать живой чат';

  @override
  String get togetherWaitingHost => 'Ждём, пока хост запустит серию';

  @override
  String get togetherRoomLink => 'Ссылка на комнату';

  @override
  String get togetherBadLink => 'Это не ссылка на комнату';

  @override
  String get togetherHostClosed => 'Хост закрыл комнату';

  @override
  String get togetherNowPlaying => 'Сейчас играет';

  @override
  String togetherWatchingCount(int count) {
    return 'Смотрят: $count';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user хочет поставить на паузу';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user хочет продолжить';
  }

  @override
  String get togetherChip => 'Вместе';

  @override
  String get togetherSettingsDesc => 'Зайди в комнату друга по ссылке';

  @override
  String get novelBilingual => 'Показывать оригинал и перевод';

  @override
  String get novelBilingualDesc =>
      'Под каждым абзацем с оригиналом показывается его перевод';

  @override
  String get novelTranslateTo => 'Переводить на';

  @override
  String get novelTranslateOff => 'Выкл.';

  @override
  String get novelSectionSpeech => 'Озвучка текста';

  @override
  String get novelSpeechRate => 'Скорость речи';

  @override
  String get novelSpeechPitch => 'Высота голоса';

  @override
  String get novelSpeak => 'Читать вслух';

  @override
  String get novelSpeakStop => 'Остановить чтение вслух';

  @override
  String get novelTranslate => 'Перевести главу';

  @override
  String get novelTranslateShowOriginal => 'Показать оригинал';

  @override
  String novelTranslateFailed(String error) {
    return 'Не удалось перевести: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Озвучка текста недоступна на этом устройстве';

  @override
  String get novelSpeechVoice => 'Голос';

  @override
  String get novelSpeechVoiceDefault => 'Системный';

  @override
  String get novelSpeakPrevious => 'Предыдущая строка';

  @override
  String get novelSpeakNext => 'Следующая строка';

  @override
  String get novelTapPaging => 'Тап по краям — перелистнуть';

  @override
  String get novelTapPagingDesc =>
      'Тап слева или справа прокручивает страницу, середина показывает управление';

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
    return 'Осталось $count мин';
  }

  @override
  String get novelBold => 'Жирный текст';

  @override
  String get novelBoldDesc => 'Использовать более плотное начертание';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Дочитано: $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Далее: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Назад: $chapter';
  }

  @override
  String get readerNoPages => 'В этой главе нет страниц';

  @override
  String get readerLoadingPages => 'Загружаю страницы…';

  @override
  String get readerSlowPage => 'Страница всё ещё загружается…';

  @override
  String get readerPageFailed => 'Не удалось загрузить эту страницу';

  @override
  String get playerShowComments => 'Показать комментарии';

  @override
  String get playerHideComments => 'Скрыть комментарии';

  @override
  String get playerSubtitles => 'Субтитры';

  @override
  String get playerSubtitlesOff => 'Субтитры выключены';

  @override
  String get playerAudio => 'Звук';

  @override
  String get playerAddSubtitle => 'Добавить файл субтитров';

  @override
  String get playerAddAudio => 'Добавить аудиофайл';

  @override
  String get playerChapters => 'Главы';

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
  String get playerNoChapters => 'Глав нет';

  @override
  String get playerTimestamp => 'Метка времени';

  @override
  String get playerAutoPlayDelay => 'Обратный отсчёт до следующей серии';

  @override
  String get playerWatchedAt => 'Засчитывать как просмотренное на';

  @override
  String playerNextIn(int seconds) {
    return 'Следующая серия через $seconds с';
  }

  @override
  String get playerPlayNow => 'Смотреть сейчас';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: для этого тайтла будет пропускаться автоматически';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: для этого тайтла не будет пропускаться автоматически';
  }

  @override
  String get playerAudioLanguage => 'Предпочитаемый язык звука';

  @override
  String get playerLanguageOrderHint =>
      'Перечисли языки через запятую. Берётся первый найденный.';

  @override
  String get playerPip => 'Картинка в картинке';

  @override
  String get playerAutoPip => 'Картинка в картинке при выходе';

  @override
  String get playerAutoPipDesc =>
      'Продолжать воспроизведение в маленьком окне, когда ты выходишь из приложения';

  @override
  String playerAutoPlaying(String title) {
    return 'Дальше: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Не удалось установить шейдеры: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Глава $number';
  }

  @override
  String get playerPerTitle => 'Только для этого тайтла';

  @override
  String get playerPerTitleDesc =>
      'Оставить эти параметры для этого тайтла, не трогая твои стандартные';

  @override
  String get playerSwapGestures => 'Поменять стороны свайпов';

  @override
  String get playerSwapGesturesDesc => 'Яркость слева, громкость справа';

  @override
  String get playerOpenBig => 'Открывать в большом режиме';

  @override
  String get playerOpenBigDesc =>
      'Запускать плеер на весь экран, без списка серий';

  @override
  String get playerPauseOnBlur => 'Пауза при потере фокуса';

  @override
  String get playerPauseOnBlurDesc =>
      'Ставить на паузу, когда приложение закрыто, например шторкой уведомлений, и продолжать при возврате';

  @override
  String get playerAudioOutput => 'Вывод звука';

  @override
  String get fontAppDefault => 'Шрифт приложения';

  @override
  String get fontImport => 'Импорт шрифта';

  @override
  String get fontSample =>
      'Съешь ещё этих мягких французских булок, да выпей чаю';

  @override
  String get playerSubtitleDelay => 'Задержка субтитров';

  @override
  String get playerAudioDelay => 'Задержка звука';

  @override
  String get playerDelayReset => 'Сбросить';

  @override
  String get playerOnlineSubtitles => 'Субтитры из сети';

  @override
  String get playerOnlineSearchHint => 'Название и серия';

  @override
  String get playerOnlineNone => 'Субтитры не найдены';

  @override
  String playerOnlineFailed(String error) {
    return 'Не удалось найти субтитры: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Не удалось скачать эти субтитры: $error';
  }

  @override
  String get playerOnlineMatch => 'Подходит к этому файлу';

  @override
  String get playerOnlineEpisode => 'Совпадает с серией';

  @override
  String playerOnlineDownloads(int count) {
    return 'Скачиваний: $count';
  }

  @override
  String get playerSeekPreview => 'Превью при перемотке';

  @override
  String get playerSeekPreviewDesc =>
      'Показывать маленький кадр над полосой перемотки при перетаскивании. Открывает второй декодер низкого разрешения, поэтому в стримах тратится больше трафика.';

  @override
  String get playerSettingsChip => 'Настройки';

  @override
  String get playerAudioDevice => 'Аудиоустройство';

  @override
  String get settingsDownloads => 'Загрузки';

  @override
  String get settingsDownloadsDesc => 'Офлайн-серии, очередь и офлайн-режим';

  @override
  String get downloadsTitle => 'Загрузки';

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
  String get downloadsOpenDesc =>
      'Очередь и всё, что сохранено на этом устройстве';

  @override
  String get downloadTitle => 'Скачать';

  @override
  String get downloadAlready => 'Уже скачано или в очереди';

  @override
  String get downloadPickStream => 'Какой поток скачать?';

  @override
  String get downloadPickSubtitle => 'Какие субтитры скачать?';

  @override
  String get downloadPickAudio => 'Какую аудиодорожку скачать?';

  @override
  String get downloadNoAudio => 'Без доп. звука';

  @override
  String get downloadAudio => 'Звук';

  @override
  String get downloadNoSubtitle => 'Без субтитров';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Этот поток — плейлист HLS. Чтобы скачать его, нужно дополнение FFmpeg.';

  @override
  String get downloadSourceMissing => 'Источник этой серии не установлен';

  @override
  String get downloadWaitingConnection => 'Ждём соединения';

  @override
  String get downloadSubtitles => 'Субтитры';

  @override
  String get downloadDownloaded => 'Скачано';

  @override
  String get downloadOffline => 'Офлайн';

  @override
  String get downloadDelete => 'Удалить загрузку';

  @override
  String get downloadCancel => 'Отмена';

  @override
  String get downloadPause => 'Пауза';

  @override
  String get downloadPaused => 'На паузе';

  @override
  String get downloadResume => 'Продолжить';

  @override
  String get downloadPauseAll => 'Все на паузу';

  @override
  String get downloadResumeAll => 'Продолжить все';

  @override
  String get downloadQueuedState => 'Ждёт в очереди';

  @override
  String get downloadResolving => 'Получаю поток…';

  @override
  String get downloadUsedFallback => 'Подходящего потока нет, взят первый';

  @override
  String get downloadTabQueue => 'Очередь';

  @override
  String get downloadTabDone => 'Готово';

  @override
  String get downloadTabFailed => 'Ошибка';

  @override
  String get downloadEmptyQueue => 'Ничего не скачивается';

  @override
  String get downloadEmptyDone => 'Пока ничего не скачано';

  @override
  String get downloadEmptyFailed => 'Нет неудачных загрузок';

  @override
  String get downloadNext => 'Следующая серия';

  @override
  String downloadNextN(int count) {
    return 'Следующие серии: $count';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Все непросмотренные ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Этот диапазон ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Все серии ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count серии в очереди',
      many: '$count серий в очереди',
      few: '$count серии в очереди',
      one: '$count серия в очереди',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name скачано';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Не удалось скачать $name';
  }

  @override
  String downloadStorage(String size) {
    return 'Загрузки занимают $size';
  }

  @override
  String get downloadQueueHeader => 'Очередь';

  @override
  String get downloadParallel => 'Загрузок одновременно';

  @override
  String get downloadParallelDesc => 'Качать по одной или сразу несколько';

  @override
  String get downloadOneByOne => 'По одной';

  @override
  String get downloadNotifications => 'Уведомления о загрузках';

  @override
  String get downloadNotificationsDesc =>
      'Живой прогресс, где система это поддерживает, иначе уведомление по окончании загрузки';

  @override
  String get downloadNotifyLive => 'Живые';

  @override
  String get downloadNotifyDone => 'По окончании';

  @override
  String get downloadNotifyOff => 'Выкл.';

  @override
  String get downloadInfoFile =>
      'Записывать info-файл рядом с каждой загрузкой';

  @override
  String get downloadInfoFileDesc =>
      'Сохраняет поток, качество, субтитры и время пропусков в небольшой .json-файл';

  @override
  String get offlineHeader => 'Офлайн';

  @override
  String get offlineModeDesc =>
      'Авто уходит в офлайн, только если приложение запустилось без соединения. Всегда остаётся офлайн, пока ты не поменяешь.';

  @override
  String get offlineModeOff => 'Выкл.';

  @override
  String get offlineModeAlways => 'Всегда';

  @override
  String get offlineModeOn =>
      'Офлайн-режим включён. Изменения сохраняются здесь и отправятся, когда появится интернет.';

  @override
  String get offlineSaved =>
      'Сохранено на устройстве, синхронизируется, когда будет интернет';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count изменения синхронизированы',
      many: '$count изменений синхронизировано',
      few: '$count изменения синхронизированы',
      one: '$count изменение синхронизировано',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count изменения ждут синхронизации',
      many: '$count изменений ждут синхронизации',
      few: '$count изменения ждут синхронизации',
      one: '$count изменение ждёт синхронизации',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Изменения, ждущие синхронизации';

  @override
  String get offlinePendingNone => 'Ничего не ждёт';

  @override
  String get offlineSyncNow => 'Синхронизировать сейчас';

  @override
  String get offlineDiscard => 'Отбросить';

  @override
  String get downloadNotOffline =>
      'Эта серия не скачана, поэтому офлайн она недоступна';

  @override
  String get offlineModeChip => 'Офлайн';

  @override
  String get downloadNextChapter => 'Следующая глава';

  @override
  String downloadNextChapters(int count) {
    return 'Следующие главы: $count';
  }

  @override
  String downloadUnread(int count) {
    return 'Все непрочитанные ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Все главы ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total стр.';
  }

  @override
  String downloadPagesCount(int count) {
    return 'Страниц: $count';
  }

  @override
  String get downloadFfmpegTitle => 'Нужно дополнение FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'Этот поток — плейлист HLS. Дополнение FFmpeg склеивает его части в один mp4-файл. Без него части остаются в папке серии и играются оттуда.';

  @override
  String get downloadFfmpegInstall => 'Установить';

  @override
  String get downloadFfmpegInstalling =>
      'Устанавливаю FFmpeg, это может занять время…';

  @override
  String get downloadFinishing => 'Склеиваю части в один файл…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total частей';
  }

  @override
  String get downloadTorrentNoFile => 'В торренте нет видеофайла для загрузки';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Скачивается $count элемента',
      many: 'Скачивается $count элементов',
      few: 'Скачивается $count элемента',
      one: 'Скачивается $count элемент',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Удалять просмотренные загрузки';

  @override
  String get downloadAutoDeleteDesc =>
      'Удаляет загрузку, когда твой прогресс доходит до этой серии или главы';

  @override
  String get downloadConnections => 'Соединений на загрузку';

  @override
  String get downloadConnectionsDesc =>
      'Делит большой файл на части, которые качаются одновременно. Некоторые серверы это ограничивают.';

  @override
  String get downloadPlayChoice => 'Воспроизводить из';

  @override
  String get downloadPlayLocalDesc => 'Файла, сохранённого на этом устройстве';

  @override
  String get downloadPlayStream => 'Онлайн-стрим';

  @override
  String get downloadPlayStreamDesc => 'Загружать серию из источника';

  @override
  String get offlineFeedTitle => 'Скачано на этом устройстве';

  @override
  String get offlineFeedEmpty =>
      'Скачай что-нибудь, пока есть интернет, и оно появится здесь';

  @override
  String get offlineEnabled => 'Офлайн-режим включён';

  @override
  String get offlineDisabled => 'Офлайн-режим выключен';

  @override
  String get downloadReadChoice => 'Читать из';

  @override
  String get downloadReadLocalDesc => 'Страниц, сохранённых на этом устройстве';

  @override
  String get downloadReadOnline => 'Читать онлайн';

  @override
  String get downloadReadOnlineDesc => 'Загружать главу из источника';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Удалить $name с этого устройства?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Отменить загрузку $name? Уже скачанное будет удалено.';
  }

  @override
  String get downloadFfmpegFolder => 'Оставить папкой';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Отбросить $count изменения, которые так и не отправились? Это нельзя отменить.',
      many:
          'Отбросить $count изменений, которые так и не отправились? Это нельзя отменить.',
      few:
          'Отбросить $count изменения, которые так и не отправились? Это нельзя отменить.',
      one:
          'Отбросить $count изменение, которое так и не отправилось? Это нельзя отменить.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Ждём Wi-Fi';

  @override
  String get downloadWaitingMetered => 'На паузе из-за лимитного соединения';

  @override
  String get downloadWifiOnly => 'Только Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Загрузки ждут, пока ты на мобильном интернете';

  @override
  String get downloadMetered => 'Пауза на лимитных соединениях';

  @override
  String get downloadMeteredDesc =>
      'Ждёт и в Wi-Fi, который устройство считает лимитным';

  @override
  String get downloadSpeedLimit => 'Ограничение скорости';

  @override
  String get downloadSpeedLimitDesc => 'Ограничивает общую скорость загрузки';

  @override
  String get downloadUnlimited => 'Без ограничений';

  @override
  String get downloadMoveToTop => 'Наверх';

  @override
  String downloadSwarm(int seeds, int peers) {
    return 'Сидов: $seeds · пиров: $peers';
  }

  @override
  String get downloadTorrentFile => 'Какой файл?';

  @override
  String get downloadTorrentAuto => 'Подбирать серию автоматически';

  @override
  String get downloadTorrentLoading => 'Читаю торрент…';

  @override
  String get watchAutoSource =>
      'Автоматически переходить к следующему источнику';

  @override
  String get watchAutoSourceDesc =>
      'Если источник не нашёл тайтл или не загрузился, пробовать следующий установленный';

  @override
  String get extensionTest => 'Тест расширений';

  @override
  String get extensionTestCopy => 'Скопировать ошибки и их логи';

  @override
  String get extensionTestQuery => 'Поисковый запрос';

  @override
  String get extensionTestRun => 'Запустить';

  @override
  String get extensionTestStop => 'Стоп';

  @override
  String get extensionTestNone => 'Нет установленных расширений этого типа';

  @override
  String get extensionTestNotRun => 'Ещё не проверено';

  @override
  String get extensionTestSearch => 'Поиск';

  @override
  String get extensionTestDetail => 'Подробности';

  @override
  String get extensionTestUnits => 'Серии / главы';

  @override
  String get extensionTestLinks => 'Потоки / страницы';

  @override
  String extensionTestFailedAt(String step) {
    return 'Сбой на шаге: $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return 'Проверено $done из $total · успешно: $passed · с ошибкой: $failed';
  }

  @override
  String get extensionTestCopyLogs => 'Скопировать всё вместе с полными логами';

  @override
  String get onboardingFeaturesTitle => 'Всё в одном месте';

  @override
  String get onboardingFeaturesBody =>
      'Всё, что ты отслеживаешь, смотришь и читаешь, без прыжков между приложениями.';

  @override
  String get onboardingFeatureTrack => 'Отслеживай всё';

  @override
  String get onboardingFeatureTrackDesc =>
      'Списки, прогресс и оценки в AniList, MyAnimeList, Simkl, Kitsu и MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Смотри и читай';

  @override
  String get onboardingFeatureWatchDesc =>
      'Ставь расширения, смотри аниме в стриминге или читай мангу и новеллы прямо в приложении.';

  @override
  String get onboardingFeatureOffline => 'Бери с собой офлайн';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Скачивай серии и главы и продолжай без интернета.';

  @override
  String get onboardingFeatureSync => 'Держи списки синхронными';

  @override
  String get onboardingFeatureSyncDesc =>
      'Копируй свой список между сервисами или пусть побеждает тот, где прогресс больше.';

  @override
  String get onboardingServices => 'Работает с';

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

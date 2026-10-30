// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'НОВИЙ найкращий застосунок\nдля відстеження аніме й манги';

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
  String get loadMore => 'Завантажити ще';

  @override
  String get login => 'Увійти';

  @override
  String get continueAsGuest => 'Продовжити як гість';

  @override
  String get getStarted => 'Почати';

  @override
  String get loginWithToken => 'Увійти за токеном';

  @override
  String get pasteTokenHint => 'Встав свій токен доступу';

  @override
  String loginTo(String service) {
    return 'Вхід у $service';
  }

  @override
  String get settings => 'Налаштування';

  @override
  String get account => 'Акаунт';

  @override
  String get about => 'Про застосунок';

  @override
  String get language => 'Мова';

  @override
  String get animationSpeed => 'Анімації';

  @override
  String get animationSpeedDesc =>
      'Швидкість переходів та ефектів появи в застосунку';

  @override
  String get animationSpeedOff => 'Вимк.';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Розширення',
      one: 'Розширення',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Невідоме джерело';

  @override
  String get install => 'Встановити';

  @override
  String get update => 'Оновити';

  @override
  String get uninstall => 'Видалити';

  @override
  String get updateInstallCancelled =>
      'Встановлення скасовано. Якщо Android написав, що застосунок конфліктує з встановленим, то підпис відрізняється: спершу видали поточну версію, потім встанови оновлення';

  @override
  String updateInstallFailed(String error) {
    return 'Не вдалося оновити: $error';
  }

  @override
  String get appLock => 'Блокування застосунку';

  @override
  String get appLockDesc =>
      'Питати код, коли застосунок відкривається або повертається через певний час';

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
  String get appLockWrong => 'Невірний код';

  @override
  String appLockWait(String seconds) {
    return 'Забагато спроб, зачекай $seconds с';
  }

  @override
  String get appLockNew => 'Придумай код';

  @override
  String get appLockNewHint => 'Від 4 до 8 цифр';

  @override
  String get appLockConfirm => 'Введи ще раз';

  @override
  String get appLockMismatch => 'Коди не збігаються';

  @override
  String get appLockOn => 'Код встановлено';

  @override
  String get appLockRemoveTitle => 'Введи код, щоб вимкнути блокування';

  @override
  String get installFailed => 'Не вдалося встановити';

  @override
  String get updateFailed => 'Не вдалося оновити';

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
  String get noSourceSettings => 'У джерела немає налаштувань';

  @override
  String get addPluginRepository => 'Додати репозиторій плагінів';

  @override
  String get pluginIndexUrlHint => 'URL індексу плагінів';

  @override
  String get addRepository => 'Додати репозиторій';

  @override
  String get pluginRepoUpdated => 'Репозиторій плагінів оновлено';

  @override
  String get pluginRepoUpdateFailed =>
      'Не вдалося оновити репозиторій плагінів';

  @override
  String get ok => 'Ок';

  @override
  String get cancel => 'Скасувати';

  @override
  String get yes => 'Так';

  @override
  String get no => 'Ні';

  @override
  String get save => 'Зберегти';

  @override
  String get reset => 'Скинути';

  @override
  String get clear => 'Очистити';

  @override
  String get test => 'Тест';

  @override
  String get testing => 'Тестуємо…';

  @override
  String get resolving => 'Визначаємо…';

  @override
  String get none => 'Немає';

  @override
  String get selectMediaService => 'Обери медіасервіс';

  @override
  String get pickColor => 'Обери колір';

  @override
  String get colorPickerCustom => 'Свій';

  @override
  String get colorPickerTransparent => 'Прозорий';

  @override
  String get ltr => 'Зліва направо';

  @override
  String get searchSettings => 'Пошук у налаштуваннях';

  @override
  String nothingMatches(String query) {
    return 'Нічого не знайдено за «$query»';
  }

  @override
  String searchCategory(String category) {
    return 'Пошук: $category';
  }

  @override
  String get settingsAppearance => 'Вигляд';

  @override
  String get settingsAppearanceDesc => 'Тема, кольори, скляний режим';

  @override
  String get settingsGeneral => 'Загальні';

  @override
  String get settingsGeneralDesc => 'Мова та поведінка';

  @override
  String get settingsNetwork => 'Мережа';

  @override
  String get settingsNetworkDesc => 'User agent, сертифікати, DNS і проксі';

  @override
  String get settingsAccountDesc => 'Сервіс трекінгу та вхід';

  @override
  String get settingsUpdates => 'Оновлення';

  @override
  String get amoledBlack => 'AMOLED-чорний';

  @override
  String get amoledBlackDesc => 'Чисто чорні поверхні в темному режимі';

  @override
  String get glassMode => 'Скляний режим';

  @override
  String get glassModeDesc => 'Матове скло поверх обкладинок твоєї бібліотеки';

  @override
  String get shelfFrame => 'Рамка навколо секцій';

  @override
  String get shelfFrameDesc =>
      'Показувати картку під кожною полицею або лишити рядки просто на сторінці';

  @override
  String get settingsExtensionsDesc =>
      'Менеджери джерел, репозиторії та опції розширень';

  @override
  String get settingsAddons => 'Доповнення';

  @override
  String get customPath => 'Свій шлях сховища';

  @override
  String get customPathDesc =>
      'Де зберігаються дані застосунку. Довге натискання скидає';

  @override
  String get selectDirectory => 'Обрати теку';

  @override
  String get differentCacheManager => 'Альтернативний кеш зображень';

  @override
  String get differentCacheManagerDesc =>
      'Використовувати інший менеджер кешу для зображень';

  @override
  String get backupAndRestore => 'Резервна копія та відновлення';

  @override
  String get backupAndRestoreDesc => 'Збережи або завантаж свої налаштування';

  @override
  String get backup => 'Резервна копія';

  @override
  String get restore => 'Відновити';

  @override
  String get loadExtensionsIcon => 'Завантажувати іконки розширень';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Показувати іконки джерел у списках розширень';

  @override
  String get sectionStorage => 'Сховище';

  @override
  String get sectionManagers => 'Менеджери';

  @override
  String get sectionOptions => 'Опції';

  @override
  String get backupTabBackup => 'Створити копію';

  @override
  String get backupTabRestore => 'Відновити';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys налаштувань у $categories категоріях';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Остання копія: $time';
  }

  @override
  String get backupNever => 'Копій ще немає';

  @override
  String get backupSelectAll => 'Вибрати все';

  @override
  String get backupClearAll => 'Очистити';

  @override
  String backupKeys(Object count) {
    return 'Налаштувань: $count';
  }

  @override
  String get backupPassword => 'Пароль (необов\'язково)';

  @override
  String get backupPasswordHint => 'Залиш порожнім, щоб використати типовий';

  @override
  String get backupSensitive =>
      'Містить токени входу. Не показуй цей файл нікому';

  @override
  String get backupCreate => 'Створити копію';

  @override
  String backupSaved(Object name) {
    return 'Копію збережено в $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Не вдалося створити копію: $error';
  }

  @override
  String get backupPickFile => 'Обери файл копії';

  @override
  String get backupPickFileDesc => 'Обери .json-файл, створений Dartotsu';

  @override
  String get backupChooseAnother => 'Обрати інший файл';

  @override
  String get backupCreatedAt => 'Створено';

  @override
  String get backupAppVersion => 'Версія застосунку';

  @override
  String get backupDevice => 'Пристрій';

  @override
  String get backupAccounts => 'Акаунти';

  @override
  String get backupSize => 'Розмір';

  @override
  String get backupEncrypted => 'Захищено паролем';

  @override
  String get backupUnlock => 'Розблокувати';

  @override
  String get backupWrongPassword => 'Не вдалося прочитати файл. Перевір пароль';

  @override
  String get backupRestoreSelected => 'Відновити вибране';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Відновити налаштувань: $count? Наявні значення в цих категоріях буде перезаписано.';
  }

  @override
  String get backupRestored =>
      'Відновлено. Перезапусти застосунок, щоб усе застосувалось';

  @override
  String backupRestoreFailed(Object error) {
    return 'Не вдалося відновити: $error';
  }

  @override
  String get backupSelectOne => 'Обери хоча б одну категорію';

  @override
  String get backupCatTheme => 'Вигляд';

  @override
  String get backupCatThemeDesc =>
      'Тема, кольори, скло, шрифти та стиль карток';

  @override
  String get backupCatCommon => 'Загальні';

  @override
  String get backupCatCommonDesc => 'Мова, сховище, мережа та опції розширень';

  @override
  String get backupCatPlayer => 'Плеєр';

  @override
  String get backupCatPlayerDesc => 'Налаштування плеєра';

  @override
  String get backupCatReader => 'Рідер';

  @override
  String get backupCatReaderDesc => 'Налаштування рідера';

  @override
  String get backupCatProtected => 'Акаунти';

  @override
  String get backupCatProtectedDesc => 'Токени входу та дані авторизації';

  @override
  String get backupCatOther => 'Сервіси та стрічки';

  @override
  String get backupCatOtherDesc => 'Макети стрічок, списки та опції сервісів';

  @override
  String get logFile => 'Файл логів';

  @override
  String get logFileDesc =>
      'Поділитися логом застосунку або скопіювати шлях до нього в Linux';

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
  String get logFileCopied => 'Шлях до логу скопійовано';

  @override
  String get donateSheetTitle => 'Подобається Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu створює і підтримує одна людина. Якщо він тобі корисний, подумай про підтримку розробки.';

  @override
  String get donateLater => 'Може, пізніше';

  @override
  String get glassBackground => 'Скляне тло';

  @override
  String get glassBackgroundDesc =>
      'Банер твого профілю, якщо не задано посилання на зображення';

  @override
  String get glassBackgroundHint =>
      'Посилання на зображення (залиш порожнім для банера)';

  @override
  String get followCover => 'Слідувати обкладинці';

  @override
  String get followCoverDesc =>
      'Кольори залежать від тла, а на сторінках тайтлів — від обкладинки';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Стиль карток';

  @override
  String get cardStyleDesc => 'Розташування назви, розмір, прогрес і бейджі';

  @override
  String get customFont => 'Шрифт';

  @override
  String get customFontDesc => 'Типовий, файл із пристрою або Google Fonts';

  @override
  String get customFontError => 'Не вдалося завантажити файл шрифту';

  @override
  String get googleFontError => 'Не вдалося завантажити шрифт';

  @override
  String get yourFonts => 'Твої шрифти';

  @override
  String get addFontFile => 'Додати файл шрифту…';

  @override
  String get browseGoogleFonts => 'Огляд Google Fonts…';

  @override
  String get searchGoogleFonts => 'Пошук у Google Fonts';

  @override
  String get defaultFont => 'Типовий';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Динамічні кольори з системи';

  @override
  String get jsonTheme => 'Файл власної теми';

  @override
  String get jsonThemeDesc =>
      'Живі кольори з ~/.config/dartotsu/theme.json (власний скрипт або ручні правки)';

  @override
  String get themeMode => 'Режим теми';

  @override
  String get mode => 'Режим';

  @override
  String get trackingService => 'Сервіс трекінгу';

  @override
  String get signOut => 'Вийти';

  @override
  String get signIn => 'Увійти';

  @override
  String get notSignedIn => 'Не ввійшов(-ла)';

  @override
  String signOutOf(String service) {
    return 'Вийти з $service?';
  }

  @override
  String get checkForUpdates => 'Перевіряти оновлення';

  @override
  String get checkForUpdatesDesc => 'Сповіщати про новий реліз на GitHub';

  @override
  String get updateChannel => 'Канал оновлень';

  @override
  String get channel => 'Канал';

  @override
  String get stable => 'Стабільний';

  @override
  String get preRelease => 'Пререліз';

  @override
  String get alpha => 'Альфа';

  @override
  String get checkNow => 'Перевірити зараз';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Типовий';

  @override
  String currentlyUsing(String value) {
    return 'Зараз: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Типовий (Cloudflare)';

  @override
  String get proxy => 'Проксі';

  @override
  String get proxyProtocol => 'Тип';

  @override
  String get proxyHost => 'Хост';

  @override
  String get proxyPort => 'Порт';

  @override
  String get proxyUsername => 'Ім\'я користувача';

  @override
  String get proxyPassword => 'Пароль';

  @override
  String get optional => 'Необов\'язково';

  @override
  String get clearCookies => 'Очистити куки';

  @override
  String get clearCookiesDesc => 'Видалити всі збережені куки';

  @override
  String notImplementedArea(String area) {
    return '$area — скоро';
  }

  @override
  String notImplementedService(String service) {
    return '$service поки що цього не підтримує.';
  }

  @override
  String get couldNotLoadResults => 'Не вдалося завантажити результати';

  @override
  String get updateCheckFailed => 'Не вдалося перевірити оновлення';

  @override
  String get highRefreshRate => 'Висока частота оновлення';

  @override
  String get highRefreshRateDesc =>
      'Використовувати найвищу частоту, яку підтримує екран';

  @override
  String get imageSave => 'Зберегти зображення';

  @override
  String imageSavedTo(String path) {
    return 'Збережено в $path';
  }

  @override
  String get imageActionFailed => 'Не вдалося завантажити зображення';

  @override
  String get imageTitleCover => 'Обкладинка';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Банер';

  @override
  String get imageTitleAvatar => 'Фото профілю';

  @override
  String get verifyTls => 'Перевіряти сертифікати';

  @override
  String get verifyTlsDesc =>
      'Відхиляти сервери з недійсними HTTPS-сертифікатами. Вимикай лише для джерела з самопідписаним сертифікатом';

  @override
  String get clearCookiesConfirm =>
      'Видалити всі збережені куки? Це може вилогінити тебе з деяких джерел.';

  @override
  String get version => 'Версія';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Код, проблеми та релізи';

  @override
  String get discordDesc => 'Спільнота та підтримка';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Підтримати розробку';

  @override
  String get contributors => 'Учасники';

  @override
  String get contributorsDesc => 'Люди, які створили Dartotsu';

  @override
  String get contributorsLoadFailed => 'Не вдалося завантажити учасників';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Проєкти на основі Dartotsu';

  @override
  String get forksEmpty => 'Форків не знайдено';

  @override
  String get sectionColors => 'Кольори';

  @override
  String get sectionDisplay => 'Екран';

  @override
  String get sectionStyle => 'Стиль';

  @override
  String get sectionCommunity => 'Спільнота';

  @override
  String get sectionAppInfo => 'Про застосунок';

  @override
  String get sectionRequests => 'Запити';

  @override
  String get sectionDnsProxy => 'DNS і проксі';

  @override
  String get onboardingBack => 'Назад';

  @override
  String get onboardingNext => 'Далі';

  @override
  String get onboardingSkip => 'Пропустити';

  @override
  String get onboardingPaletteTitle => 'Зроби під себе';

  @override
  String get onboardingPaletteBody =>
      'Обери палітру. Усі акценти, від карток до плеєра, підлаштуються під неї.';

  @override
  String get themeModeAuto => 'Авто';

  @override
  String get themeModeLight => 'Світла';

  @override
  String get themeModeDark => 'Темна';

  @override
  String get onboardingSyncTitle => 'Синхронізуй бібліотеку';

  @override
  String get onboardingSyncBody =>
      'Увійди через AniList, щоб мати під рукою свої списки, прогрес і оцінки. Або пропусти й дивись як гість.';

  @override
  String get onboardingOpenLinks =>
      'Відкривати посилання AniList і репозиторіїв у Dartotsu';

  @override
  String get onboardingPermsTitle => 'Дозволи';

  @override
  String get onboardingPermsBody =>
      'Дозволь це зараз, щоб завантаження, оновлення й сповіщення працювали без перебоїв. Потім можна змінити в налаштуваннях системи.';

  @override
  String get permNotifications => 'Сповіщення';

  @override
  String get permNotificationsDesc =>
      'Прогрес завантажень, нові серії та відповіді';

  @override
  String get permStorage => 'Доступ до всіх файлів';

  @override
  String get permStorageDesc =>
      'Зберігати завантаження в загальну теку Dartotsu';

  @override
  String get permInstall => 'Встановлення оновлень';

  @override
  String get permInstallDesc =>
      'Дозволити Dartotsu самому встановлювати оновлення';

  @override
  String get permBattery => 'Без обмежень батареї';

  @override
  String get permBatteryDesc => 'Не зупиняти довгі завантаження у фоні';

  @override
  String get permGrant => 'Дозволити';

  @override
  String get linkOpenInApp => 'Відкривати посилання в Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Дозволити посиланням AniList і репозиторіїв відкривати застосунок';

  @override
  String get reviewsTitle => 'Рецензії';

  @override
  String get reviewsEmpty => 'Рецензій ще немає';

  @override
  String get reviewsFailed => 'Не вдалося завантажити рецензії';

  @override
  String get reviewHelpfulQuestion => 'Ця рецензія була корисною?';

  @override
  String get reviewVoteFailed => 'Не вдалося зберегти твій голос';

  @override
  String reviewHelpful(int n, int total) {
    return '$n з $total вважають корисною';
  }

  @override
  String get calendarTitle => 'Розклад виходу';

  @override
  String get calendarToday => 'Сьогодні';

  @override
  String get calendarEmpty => 'Цього дня нічого не виходить';

  @override
  String get calendarFailed => 'Не вдалося завантажити розклад';

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
    return 'Серія $n';
  }

  @override
  String get shareAnalytics => 'Надсилати анонімні дані використання';

  @override
  String get shareAnalyticsDesc =>
      'Анонімна кількість користувачів і звіти про збої. Без акаунта й особистих даних';

  @override
  String get linkOpenAnilist => 'Відкривати посилання AniList у Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Увімкни обробку посилань, щоб посилання anilist.co відкривали застосунок';

  @override
  String get linkSettingsFailed => 'Не вдалося відкрити налаштування системи';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Показуй у профілі Discord, що ти робиш. Потрібен твій токен Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Показуй у профілі Discord, що ти робиш. Потрібен запущений десктопний Discord.';

  @override
  String get discordBrowsing => 'Показувати активність перегляду';

  @override
  String get discordBrowsingDesc =>
      'Показувати також вкладку, сторінку чи профіль, які ти дивишся, а не лише що читаєш чи дивишся.';

  @override
  String get discordLookHeader => 'Вигляд статусу';

  @override
  String get discordActivityType => 'Тип активності';

  @override
  String get discordActivityTypeDesc =>
      'Як це формулює Discord: «Дивиться …» або «Грає в …». Авто — «Дивиться» для аніме й «Грає» для решти.';

  @override
  String get discordWatching => 'Дивиться';

  @override
  String get discordPlaying => 'Грає';

  @override
  String get discordCovers => 'Показувати обкладинки';

  @override
  String get discordCoversDesc => 'Обкладинка та іконка Dartotsu на картці.';

  @override
  String get discordTimer => 'Показувати таймер';

  @override
  String get discordTimerDesc => 'Минулий або залишений час під назвою.';

  @override
  String get discordButtons => 'Показувати кнопки';

  @override
  String get discordButtonsDesc =>
      'Кнопки «Переглянути аніме / мангу» та «Відкрити Dartotsu».';

  @override
  String get discordHideTitles => 'Ховати назви';

  @override
  String get discordHideTitlesDesc =>
      'Замінити назви аніме й манги (та їхню обкладинку й посилання) на «Щось приватне».';

  @override
  String get discordConnectionHeader => 'Підключення';

  @override
  String get listSearchHint => 'Пошук у цьому списку';

  @override
  String get listSort => 'Сортування';

  @override
  String get listFilter => 'Фільтр';

  @override
  String get listRandom => 'Випадковий тайтл';

  @override
  String get listReverse => 'Зворотний порядок';

  @override
  String get listSortDefault => 'Порядок списку';

  @override
  String get listSortScore => 'Твоя оцінка';

  @override
  String get listSortTitle => 'Назва';

  @override
  String get listSortUpdated => 'Останнє оновлення';

  @override
  String get listSortProgress => 'Прогрес';

  @override
  String get listSortReleased => 'Дата виходу';

  @override
  String get listSortAverage => 'Середня оцінка';

  @override
  String get listFilterFormat => 'Формат';

  @override
  String get listFilterStatus => 'Статус';

  @override
  String get listFilterGenres => 'Жанри';

  @override
  String get listFilterClear => 'Скинути фільтри';

  @override
  String get listNoMatches => 'У цьому списку нічого не підходить';

  @override
  String get discordLogin => 'Увійти в Discord';

  @override
  String get discordToken => 'Токен Discord';

  @override
  String get discordTokenSaved =>
      'Збережено. Натисни, щоб замінити, утримуй, щоб видалити.';

  @override
  String get discordTokenNotSet => 'Не задано. Натисни, щоб додати.';

  @override
  String get discordTokenSavedSnack => 'Токен Discord збережено';

  @override
  String get discordTokenRemovedSnack => 'Токен Discord видалено';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'Увімк. · натисни, щоб змінити вигляд';

  @override
  String get discordRichPresenceRowOff =>
      'Показуй у профілі Discord, що ти робиш';

  @override
  String get loginCancelled => 'Вхід скасовано';

  @override
  String get invalidToken => 'Недійсний токен';

  @override
  String loginFailed(String error) {
    return 'Не вдалося увійти: $error';
  }

  @override
  String get malLoginFailed => 'Не вдалося увійти в MyAnimeList';

  @override
  String get kitsuLoginFailed =>
      'Не вдалося увійти в Kitsu. Перевір email і пароль.';

  @override
  String get kitsuLoginTitle => 'Вхід у Kitsu';

  @override
  String get emailOrUsername => 'Email або ім\'я користувача';

  @override
  String get password => 'Пароль';

  @override
  String get kitsuProfile => 'Профіль Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Не вдалося увійти в MangaBaka';

  @override
  String get mangaBakaProfile => 'Профіль MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Оновити з MangaBaka';

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
  String get artistsLabel => 'Артисти';

  @override
  String get authorsLabel => 'Автори';

  @override
  String get publishersLabel => 'Видавці';

  @override
  String get licensedLabel => 'Ліцензовано';

  @override
  String get contentRatingLabel => 'Віковий рейтинг';

  @override
  String get yesLabel => 'Так';

  @override
  String get noLabel => 'Ні';

  @override
  String get ratingSteps => 'Кроки оцінки';

  @override
  String get hideNsfw => 'Ховати NSFW';

  @override
  String get hideNsfwDesc =>
      'Не показувати дорослі тайтли в стрічках і пошуку, а твої власні дорослі записи тримати в «Прихованих медіа».';

  @override
  String get kitsuAccountOptions => 'Опції акаунта Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Налаштування акаунта MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Не вдалося оновити налаштування Kitsu';

  @override
  String get titleCanonical => 'Канонічна';

  @override
  String get titleRomanized => 'Романізована';

  @override
  String get titleLocalized => 'Локалізована';

  @override
  String get ratingSystem => 'Система оцінювання';

  @override
  String get ratingSimple => 'Проста (3 смайли)';

  @override
  String get ratingRegular => 'Звичайна (5 зірок)';

  @override
  String get ratingAdvanced => 'Розширена (10 балів)';

  @override
  String get contentFilter => 'Фільтр контенту';

  @override
  String get contentSfw => 'Лише безпечне';

  @override
  String get contentSometimes => 'Дорослий контент у пошуку';

  @override
  String get contentEverywhere => 'Дорослий контент усюди';

  @override
  String get shareToGlobal => 'Ділитися в глобальну стрічку';

  @override
  String get shareToGlobalDesc =>
      'Дозволити, щоб твоя активність з\'являлась у глобальній стрічці Kitsu.';

  @override
  String get memberSince => 'З нами з';

  @override
  String get location => 'Місцезнаходження';

  @override
  String get accountType => 'Тип акаунта';

  @override
  String get accountSupporter => 'Прихильник';

  @override
  String get accountFree => 'Безкоштовний';

  @override
  String get accountDetails => 'Дані акаунта';

  @override
  String get refreshFromKitsu => 'Оновити з Kitsu';

  @override
  String get simklReadOnly => 'Simkl надав доступ лише для читання';

  @override
  String get incognitoEditsBlocked =>
      'Інкогніто: редагування списків заблоковано';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Інкогніто: прогрес не збережено';

  @override
  String progressSet(int progress) {
    return 'Прогрес: $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title видалено зі списку';
  }

  @override
  String get following => 'Підписки';

  @override
  String get homeSections => 'Секції головної';

  @override
  String get homeSectionsHint =>
      'Перетягуй, щоб змінити порядок. Приховані секції не завантажуються.';

  @override
  String get customListDeleteFailed => 'Не вдалося видалити власний список';

  @override
  String get customListsSaveFailed => 'Не вдалося зберегти власні списки';

  @override
  String get customListsSaved => 'Власні списки збережено';

  @override
  String get listName => 'Назва списку';

  @override
  String get addList => 'Додати список';

  @override
  String voiceActorsIn(String name) {
    return 'Сейю · $name';
  }

  @override
  String get animeAppearances => 'Поява в аніме';

  @override
  String get mangaAppearances => 'Поява в манзі';

  @override
  String get voicedCharacters => 'Озвучені персонажі';

  @override
  String get animeCredits => 'Участь в аніме';

  @override
  String get mangaCredits => 'Участь у манзі';

  @override
  String get mainProductions => 'Основні проєкти';

  @override
  String get otherWorks => 'Інші роботи';

  @override
  String get prequelSequel => 'Приквел і сиквел';

  @override
  String get previousSeason => 'Минулий сезон';

  @override
  String get thisSeason => 'Цей сезон';

  @override
  String get nextSeason => 'Наступний сезон';

  @override
  String get voiceRoles => 'Ролі озвучення';

  @override
  String get staffPositions => 'Посади в команді';

  @override
  String get mangaWorks => 'Роботи в манзі';

  @override
  String get malProfile => 'Профіль MyAnimeList';

  @override
  String get refreshFromMal => 'Оновити з MyAnimeList';

  @override
  String get repullProfileCounts => 'Заново завантажити профіль і лічильники';

  @override
  String get refreshed => 'Оновлено';

  @override
  String get simklProfile => 'Профіль Simkl';

  @override
  String get refreshFromSimkl => 'Оновити з Simkl';

  @override
  String get repullProfileLibrary => 'Заново завантажити профіль і бібліотеку';

  @override
  String get simklSignInToSearch => 'Увійди в Simkl, щоб шукати';

  @override
  String get dropRate => 'Частка покинутих';

  @override
  String get simklAttribution => 'Дані й арти від Simkl. Дивитися на Simkl';

  @override
  String get onHold => 'Відкладено';

  @override
  String get scoredBy => 'Оцінили';

  @override
  String get planToWatch => 'Планую дивитись';

  @override
  String get planToRead => 'Планую читати';

  @override
  String get timesRewatched => 'Разів передивлено';

  @override
  String get timesReread => 'Разів перечитано';

  @override
  String get comments => 'Коментарі';

  @override
  String get moviesAndSeries => 'Фільми й серіали';

  @override
  String get trackingOnly => 'Лише трекінг';

  @override
  String get signedIn => 'Увійшов(-ла)';

  @override
  String get searchLanguage => 'Мова пошуку';

  @override
  String get savedToList => 'Збережено у твоєму списку';

  @override
  String get removedFromYourList => 'Видалено з твого списку';

  @override
  String get retry => 'Повторити';

  @override
  String get synopsis => 'Опис';

  @override
  String get details => 'Деталі';

  @override
  String get addToList => 'Додати до списку';

  @override
  String get trailer => 'Трейлер';

  @override
  String get titleCopied => 'Назву скопійовано';

  @override
  String get linkCopied => 'Посилання скопійовано';

  @override
  String get watchTrailer => 'Дивитись трейлер';

  @override
  String get copyTitle => 'Копіювати назву';

  @override
  String get copyLink => 'Копіювати посилання';

  @override
  String get openInBrowser => 'Відкрити в браузері';

  @override
  String viewOnSource(String source) {
    return 'Дивитись на $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Серія $ep вийде через $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Наступна серія через $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Розділ $chapter вийде приблизно через $time';
  }

  @override
  String get logPathCopied => 'Шлях до файлу логів скопійовано в буфер обміну';

  @override
  String get animeSource => 'Джерело аніме';

  @override
  String get mangaSource => 'Джерело манги';

  @override
  String get popular => 'Популярне';

  @override
  String get latest => 'Нове';

  @override
  String get saved => 'Збережене';

  @override
  String get nothingMatched => 'Нічого не знайдено';

  @override
  String get nothingSavedFromSource => 'З цього джерела ще нічого не збережено';

  @override
  String get sourceReturnedNothing => 'Це джерело нічого не повернуло';

  @override
  String get checkConnectionOrSource =>
      'Перевір з\'єднання або спробуй інше джерело.';

  @override
  String get tryDifferentSearch => 'Спробуй інший пошуковий запит.';

  @override
  String get savedTitlesAppearHere =>
      'Тут з\'являться тайтли, які ти додаси до списку.';

  @override
  String get tryOtherFeed => 'Спробуй іншу стрічку або пошук.';

  @override
  String searchSource(String source) {
    return 'Пошук у $source';
  }

  @override
  String get animeExtensions => 'Розширення для аніме';

  @override
  String get mangaExtensions => 'Розширення для манги';

  @override
  String get nothingHereYet => 'Тут поки порожньо';

  @override
  String get savedOnDeviceUntilLogin =>
      'Усе нижче зберігається на цьому пристрої, поки ти цього не змінив(-ла).';

  @override
  String get yourProfile => 'Твій профіль';

  @override
  String get activity => 'Активність';

  @override
  String get extensions => 'Розширення';

  @override
  String get logOut => 'Вийти';

  @override
  String get logIn => 'Увійти';

  @override
  String get logOutConfirm => 'Точно хочеш вийти?';

  @override
  String get incognitoMode => 'Режим інкогніто';

  @override
  String get alsoBlockListEdits => 'Також блокувати редагування списків';

  @override
  String get offlineMode => 'Офлайн-режим';

  @override
  String get switchService => 'Змінити сервіс';

  @override
  String logOutOf(String name) {
    return 'Вийти з $name';
  }

  @override
  String get loggedIn => 'Ти ввійшов(-ла)';

  @override
  String get notifications => 'Сповіщення';

  @override
  String get nothingNew => 'Нічого нового';

  @override
  String get thisWeek => 'Цього тижня';

  @override
  String get listOnly => 'Лише список';

  @override
  String get filter => 'Фільтр';

  @override
  String get searchResults => 'Результати пошуку';

  @override
  String get recentSearches => 'Останні запити';

  @override
  String get searchOrSetFilter => 'Шукай або задай фільтр';

  @override
  String get filters => 'Фільтри';

  @override
  String get showLess => 'Показати менше';

  @override
  String get showAll => 'Показати все';

  @override
  String get apply => 'Застосувати';

  @override
  String get preview => 'Перегляд';

  @override
  String get preset => 'Пресет';

  @override
  String get cardNormal => 'Звичайний';

  @override
  String get cardOnCard => 'На картці';

  @override
  String get cardInCard => 'У картці';

  @override
  String get size => 'Розмір';

  @override
  String get cardWidth => 'Ширина картки';

  @override
  String get compact => 'Компактний';

  @override
  String get coverAndTitleOnly => 'Лише обкладинка й назва';

  @override
  String get titleLines => 'Рядків назви';

  @override
  String get shape => 'Форма';

  @override
  String get posterShape => 'Форма постера';

  @override
  String get cornerRadius => 'Заокруглення кутів';

  @override
  String get off => 'Вимк.';

  @override
  String get topLeft => 'Угорі ліворуч';

  @override
  String get topRight => 'Угорі праворуч';

  @override
  String get bottomLeft => 'Внизу ліворуч';

  @override
  String get bottomRight => 'Внизу праворуч';

  @override
  String get overlays => 'Накладки';

  @override
  String get progressCount => 'Прогрес / кількість';

  @override
  String get pill => 'Таблетка';

  @override
  String get bar => 'Смуга';

  @override
  String get outside => 'Поза карткою';

  @override
  String get scoreBadge => 'Бейдж оцінки';

  @override
  String get airingDot => 'Точка виходу';

  @override
  String get updateAvailable => 'Є оновлення';

  @override
  String get notInstalled => 'Не встановлено';

  @override
  String get done => 'Готово';

  @override
  String get searchOrEnterUrl => 'Пошук або введи URL';

  @override
  String get refresh => 'Оновити';

  @override
  String get share => 'Поділитися';

  @override
  String get characters => 'Персонажі';

  @override
  String get staff => 'Команда';

  @override
  String get readMore => 'Читати далі';

  @override
  String get couldNotLoadList => 'Не вдалося завантажити список';

  @override
  String get logInToFavourite => 'Увійди, щоб додавати в улюблене';

  @override
  String get alsoKnownAs => 'Також відомий як';

  @override
  String get hideSpoilerNames => 'Ховати імена зі спойлерами';

  @override
  String get showSpoilerNames => 'Показувати імена зі спойлерами';

  @override
  String get favourited => 'В улюбленому';

  @override
  String get favourite => 'В улюблене';

  @override
  String get couldNotOpenTitle => 'Не вдалося відкрити цей тайтл';

  @override
  String get nobodyHereYet => 'Тут поки нікого';

  @override
  String get noMatches => 'Нічого не знайдено';

  @override
  String get gridView => 'Сітка';

  @override
  String get fullWidth => 'На всю ширину';

  @override
  String get userNotFound => 'Користувача не знайдено';

  @override
  String get couldNotUpdateFollow => 'Не вдалося змінити підписку';

  @override
  String followedUser(String name) {
    return 'Ти підписався на $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Ти відписався від $name';
  }

  @override
  String get messages => 'Повідомлення';

  @override
  String get logInToSeeMessages => 'Увійди, щоб бачити свої повідомлення';

  @override
  String get editActivity => 'Редагувати активність';

  @override
  String get newActivity => 'Нова активність';

  @override
  String get editMessage => 'Редагувати повідомлення';

  @override
  String get writeMessage => 'Напиши повідомлення';

  @override
  String get editReply => 'Редагувати відповідь';

  @override
  String get posted => 'Опубліковано';

  @override
  String get couldNotPost => 'Не вдалося опублікувати';

  @override
  String get nothingToPreview => 'Нема що переглядати';

  @override
  String get writeSomethingHint => 'Напиши щось… тут працює markdown AniList';

  @override
  String get privateMessage => 'Приватне повідомлення';

  @override
  String get post => 'Опублікувати';

  @override
  String get nothingHere => 'Тут нічого';

  @override
  String get noAnimeProgress => 'Немає прогресу в аніме';

  @override
  String get noMangaProgress => 'Немає прогресу в манзі';

  @override
  String get noMessages => 'Немає повідомлень';

  @override
  String get writeMessageHint => 'Напиши повідомлення…';

  @override
  String get shareSomethingHint => 'Поділись чимось…';

  @override
  String get all => 'Усі';

  @override
  String get anime => 'Аніме';

  @override
  String get manga => 'Манга';

  @override
  String get count => 'Кількість';

  @override
  String get hoursWatched => 'Годин перегляду';

  @override
  String get chaptersRead => 'Прочитано розділів';

  @override
  String get meanScore => 'Середня оцінка';

  @override
  String get noStatsYet => 'Статистики поки немає';

  @override
  String get totalEntries => 'Усього записів';

  @override
  String get episodesWatched => 'Переглянуто серій';

  @override
  String get daysWatched => 'Днів перегляду';

  @override
  String get volumesRead => 'Прочитано томів';

  @override
  String get standardDeviation => 'Стандартне відхилення';

  @override
  String get showMore => 'Показати більше';

  @override
  String get followsYou => 'Підписаний на тебе';

  @override
  String get nobodyYet => 'Поки нікого';

  @override
  String get logInToLike => 'Увійди, щоб ставити вподобайки';

  @override
  String get failedToLikeActivity => 'Не вдалося вподобати активність';

  @override
  String get deleteActivityConfirm => 'Видалити активність?';

  @override
  String get deletedActivity => 'Активність видалено';

  @override
  String get failedToDeleteActivity => 'Не вдалося видалити активність';

  @override
  String get subscribed => 'Підписано';

  @override
  String get unsubscribed => 'Відписано';

  @override
  String get failedToUpdateSubscription => 'Не вдалося змінити підписку';

  @override
  String get edit => 'Редагувати';

  @override
  String get delete => 'Видалити';

  @override
  String get likedBy => 'Вподобали';

  @override
  String get follow => 'Підписатися';

  @override
  String get nameCopied => 'Ім\'я скопійовано';

  @override
  String get followsEachOther => 'Підписані одне на одного';

  @override
  String get unfollow => 'Відписатися';

  @override
  String get userIdCopied => 'ID користувача скопійовано';

  @override
  String get shareProfile => 'Поділитися профілем';

  @override
  String get copyUserId => 'Копіювати ID користувача';

  @override
  String get failedToDelete => 'Не вдалося видалити';

  @override
  String get failedToLike => 'Не вдалося вподобати';

  @override
  String get replies => 'Відповіді';

  @override
  String get reply => 'Відповісти';

  @override
  String get noRepliesYet => 'Відповідей поки немає';

  @override
  String get favouriteAnime => 'Улюблені аніме';

  @override
  String get favouriteManga => 'Улюблена манга';

  @override
  String get favouriteCharacters => 'Улюблені персонажі';

  @override
  String get favouriteStaff => 'Улюблена команда';

  @override
  String get favouriteStudios => 'Улюблені студії';

  @override
  String get noFavouritesYet => 'Улюбленого поки немає';

  @override
  String get yourStory => 'Твоя історія';

  @override
  String get copiedToClipboard => 'Скопійовано в буфер обміну';

  @override
  String get justNow => 'Щойно';

  @override
  String get openImage => 'Відкрити зображення';

  @override
  String get hideSpoiler => 'Сховати спойлер';

  @override
  String get showSpoiler => 'Показати спойлер';

  @override
  String get status => 'Статус';

  @override
  String get score => 'Оцінка';

  @override
  String get started => 'Розпочато';

  @override
  String get completed => 'Завершено';

  @override
  String get private => 'Приватне';

  @override
  String get hideFromStatusLists => 'Ховати зі списків статусів';

  @override
  String get totalRepeats => 'Усього повторів';

  @override
  String get other => 'Інше';

  @override
  String get customLists => 'Власні списки';

  @override
  String get activeDays => 'Активні дні';

  @override
  String get longestStreak => 'Найдовша серія днів';

  @override
  String get currentStreak => 'Поточна серія днів';

  @override
  String get tapOrHoverDay => 'Натисни або наведи на день';

  @override
  String get less => 'Менше';

  @override
  String get more => 'Більше';

  @override
  String epIn(int ep, String time) {
    return 'Серія $ep через $time';
  }

  @override
  String get sectionLoading => 'Завантаження';

  @override
  String get querySize => 'Розмір запиту';

  @override
  String get querySizeDesc =>
      'Один великий запит вантажить усі рядки (і весь профіль) за раз. Розділені запити надсилають малий запит на кожен рядок чи частину профілю: кожен швидкий, а частини з\'являються в міру надходження.';

  @override
  String get oneBig => 'Один великий';

  @override
  String get split => 'Розділені';

  @override
  String get sectionSocial => 'Соціальне';

  @override
  String get systemNotifications => 'Системні сповіщення';

  @override
  String get feedLayout => 'Макет стрічки';

  @override
  String sectionsShown(int shown, int total) {
    return 'Показано $shown з $total — натисни, щоб вибрати й упорядкувати';
  }

  @override
  String labelSections(String label) {
    return 'Секції: $label';
  }

  @override
  String get accountOptions => 'Опції акаунта';

  @override
  String get anilistAccountOptions => 'Опції акаунта AniList';

  @override
  String get sectionPrivacy => 'Приватність';

  @override
  String get hidePrivateEntries => 'Ховати приватні записи';

  @override
  String get hidePrivateEntriesDesc =>
      'Не показувати в стрічці записи, позначені приватними в AniList';

  @override
  String get anilistExcludeList => 'Сховати мій список';

  @override
  String get anilistExcludeListDesc =>
      'Не показувати на сторінках аніме та манґи тайтли, які вже є в твоєму AniList';

  @override
  String get anilistProfile => 'Профіль AniList';

  @override
  String get refreshFromAnilist => 'Оновити з AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Не вдалося оновити налаштування AniList';

  @override
  String get sectionNames => 'Імена';

  @override
  String get titleLanguage => 'Мова назв';

  @override
  String get titleLanguageDesc =>
      'Як записуються назви скрізь, напр. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Імена команди та персонажів';

  @override
  String get sectionLists => 'Списки';

  @override
  String get scoreFormat => 'Формат оцінок';

  @override
  String get sortListsBy => 'Сортувати списки за';

  @override
  String labelCustomLists(String label) {
    return 'Власні списки: $label';
  }

  @override
  String customListsCount(int count) {
    return 'Списків: $count — натисни, щоб додати чи видалити';
  }

  @override
  String get mergeActivities => 'Об\'єднувати активності';

  @override
  String minutesCount(int count) {
    return '$count хв';
  }

  @override
  String get timezone => 'Часовий пояс';

  @override
  String get notSet => 'Не задано';

  @override
  String get airingNotifications => 'Сповіщення про вихід серій';

  @override
  String get airingNotificationsDesc =>
      'Отримуй сповіщення, коли виходить серія тайтла зі списку підписок';

  @override
  String get displayAdultContent => 'Показувати контент для дорослих';

  @override
  String get displayAdultContentDesc =>
      'Включати тайтли 18+ у огляд, пошук і стрічки';

  @override
  String get restrictMessages => 'Обмежити повідомлення підписками';

  @override
  String get restrictMessagesDesc =>
      'Писати тобі можуть лише ті, на кого ти підписаний';

  @override
  String get sectionServices => 'Сервіси';

  @override
  String get novel => 'Новела';

  @override
  String labelService(String label) {
    return 'Сервіс: $label';
  }

  @override
  String nameSettings(String name) {
    return 'Налаштування $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Опції з extension bridge для $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name не вдалося запустити: $error';
  }

  @override
  String get importLists => 'Імпорт списків';

  @override
  String get importListsDesc =>
      'З бекапів Aniyomi, Mihon / Tachiyomi або Kotatsu';

  @override
  String get exportLists => 'Експорт списків';

  @override
  String get exportListsDesc => 'У бекап Aniyomi, Mihon або Kotatsu';

  @override
  String get sectionBrowse => 'Огляд';

  @override
  String get readingTab => 'Вкладка читання';

  @override
  String get readingTabDesc => 'Які розширення показує третя вкладка';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Стрічка за замовчуванням';

  @override
  String get defaultFeedDesc => 'Який список відкриває джерело';

  @override
  String noServiceSupports(String type) {
    return 'Жоден сервіс не підтримує $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · завантажується джерел: $loaded з $installed';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Жоден сервіс розширень тут не підтримує $type.';
  }

  @override
  String get loadDataFrom => 'Завантажити дані з';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Встановлених джерел $type поки немає.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Розширення для $name не встановлено';
  }

  @override
  String get thisSource => 'це джерело';

  @override
  String failedToAddRepository(String error) {
    return 'Не вдалося додати репозиторій: $error';
  }

  @override
  String installedType(String type) {
    return 'Встановлені: $type';
  }

  @override
  String availableType(String type) {
    return 'Доступні: $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Немає встановлених розширень $type';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Немає доступних розширень $type';
  }

  @override
  String get nothingToShowYet => 'Поки нічого показувати';

  @override
  String get addTitlesHint => 'Додай тайтли до списку, і вони з\'являться тут.';

  @override
  String get couldntLoad => 'Не вдалося завантажити';

  @override
  String get progressStyleHint =>
      'Таблетка й смуга накладаються на постер; «поза карткою» показує ту саму кількість звичайним текстом — обери щось одне.';

  @override
  String get nixManagedUpdate =>
      'Ця збірка керується Nix — запусти «nix flake update» у своєму flake і перезбери замість оновлення звідси';

  @override
  String autoUpdateFailed(String error) {
    return 'Автоматичне оновлення не вдалося ($error) — відкриваю сторінку завантаження';
  }

  @override
  String get unknownPreference => 'Невідома опція';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Непідтримуваний тип опції $type';
  }

  @override
  String get notYetReleased => 'Ще не вийшло';

  @override
  String get notStarted => 'Ще не розпочато';

  @override
  String get country => 'Країна';

  @override
  String get sort => 'Сортування';

  @override
  String get chooseBackupDialog => 'Обери бекап Aniyomi, Mihon або Kotatsu';

  @override
  String get importListsHint =>
      'Перенеси бібліотеку з Aniyomi, Mihon / Tachiyomi або Kotatsu. Тайтли, обкладинки, прогрес і категорії збережуться.';

  @override
  String get chooseBackupFile => 'Обрати файл бекапу';

  @override
  String importAnimeCount(int count) {
    return 'Імпортувати аніме: $count';
  }

  @override
  String importMangaCount(int count) {
    return 'Імпортувати манги: $count';
  }

  @override
  String get mergeWithExisting => 'Об\'єднати з наявними списками';

  @override
  String get mergeWithExistingDesc =>
      'Зберігає те, що вже є; якщо вимкнено, замінює однакові тайтли';

  @override
  String get chooseAnother => 'Обрати інший';

  @override
  String get import => 'Імпорт';

  @override
  String animeCount(int count) {
    return 'Аніме: $count';
  }

  @override
  String mangaCount(int count) {
    return 'Манги: $count';
  }

  @override
  String get chooseSaveLocation => 'Обери, куди зберегти бекап';

  @override
  String savedPath(String path) {
    return 'Збережено: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Не вдалося експортувати: $error';
  }

  @override
  String get nothingInLocalLists => 'У твоїх локальних списках поки нічого.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Експортує аніме: $anime і манги: $manga з твоїх локальних списків. Kotatsu підтримує лише мангу.';
  }

  @override
  String get saveToFolder => 'Зберегти в теку';

  @override
  String get formatAnimeManga => 'Аніме й манга · .tachibk';

  @override
  String get formatMangaTachibk => 'Лише манга · .tachibk';

  @override
  String get formatMangaZip => 'Лише манга · .zip';

  @override
  String get genres => 'Жанри';

  @override
  String get relations => 'Зв\'язки';

  @override
  String get recommendations => 'Рекомендації';

  @override
  String get openings => 'Опенінги';

  @override
  String get endings => 'Едінги';

  @override
  String get background => 'Передісторія';

  @override
  String get links => 'Посилання';

  @override
  String get rank => 'Ранг';

  @override
  String get members => 'Учасники';

  @override
  String get favorites => 'Улюблене';

  @override
  String get episodes => 'Серії';

  @override
  String get chapters => 'Розділи';

  @override
  String get volumes => 'Томи';

  @override
  String get format => 'Формат';

  @override
  String get source => 'Першоджерело';

  @override
  String get duration => 'Тривалість';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes хв за серію';
  }

  @override
  String get rating => 'Рейтинг';

  @override
  String get studio => 'Студія';

  @override
  String get serialization => 'Видання';

  @override
  String get season => 'Сезон';

  @override
  String get broadcast => 'Мовлення';

  @override
  String get aired => 'Виходило';

  @override
  String get published => 'Опубліковано';

  @override
  String get popularity => 'Популярність';

  @override
  String get community => 'Спільнота';

  @override
  String get watching => 'Дивлюсь';

  @override
  String get reading => 'Читаю';

  @override
  String get dropped => 'Покинуто';

  @override
  String get planned => 'Заплановано';

  @override
  String get trailers => 'Трейлери';

  @override
  String get ratings => 'Оцінки';

  @override
  String get originalTitle => 'Оригінал';

  @override
  String get titleLabel => 'Назва';

  @override
  String get votes => 'Голоси';

  @override
  String get watchedStat => 'Переглянуто';

  @override
  String get runtime => 'Тривалість';

  @override
  String get director => 'Режисер';

  @override
  String get network => 'Мережа';

  @override
  String get certification => 'Сертифікація';

  @override
  String get airs => 'Виходить';

  @override
  String get budget => 'Бюджет';

  @override
  String get revenue => 'Збори';

  @override
  String get released => 'Вийшло';

  @override
  String get tags => 'Теги';

  @override
  String get author => 'Автор';

  @override
  String get born => 'Народився(-лась)';

  @override
  String get website => 'Вебсайт';

  @override
  String get established => 'Засновано';

  @override
  String get manhwa => 'Манхва';

  @override
  String get manhua => 'Маньхуа';

  @override
  String get novels => 'Новели';

  @override
  String get thisMonth => 'Цього місяця';

  @override
  String get movies => 'Фільми';

  @override
  String get shows => 'Шоу';

  @override
  String get rewatching => 'Передивляюсь';

  @override
  String get rereading => 'Перечитую';

  @override
  String get watchedStatus => 'Переглянуто';

  @override
  String get planning => 'Планую';

  @override
  String get paused => 'Відкладено';

  @override
  String get watch => 'Дивитись';

  @override
  String get read => 'Читати';

  @override
  String get finished => 'Завершено';

  @override
  String get releasing => 'Виходить';

  @override
  String get cancelled => 'Скасовано';

  @override
  String get hiatus => 'Перерва';

  @override
  String get remove => 'Прибрати';

  @override
  String syncToService(String service) {
    return 'Синхронізувати з $service';
  }

  @override
  String syncedToService(String service) {
    return 'Синхронізовано з $service';
  }

  @override
  String get latestReleases => 'Свіжі релізи';

  @override
  String get topRated => 'Найвища оцінка';

  @override
  String localSection(String title) {
    return '$title · Локально';
  }

  @override
  String get localEntryNote =>
      'Цей тайтл є лише в локальному списку на цьому пристрої. Редагування тут вимкнено, бо воно може конфліктувати зі списком акаунта; видалити його все ж можна.';

  @override
  String get cardPresetPoster => 'Постер';

  @override
  String get cardPresetCard => 'Картка';

  @override
  String get cardPresetCozy => 'Затишний';

  @override
  String get sortTopRated => 'Найвища оцінка';

  @override
  String get sortMostPopular => 'Найпопулярніше';

  @override
  String get sortTrending => 'У тренді';

  @override
  String get sortNewest => 'Найновіше';

  @override
  String get sortAz => 'А–Я';

  @override
  String get sortMostFavourited => 'Найбільш улюблене';

  @override
  String get anyCountry => 'Будь-яка країна';

  @override
  String get orderScore => 'Оцінка';

  @override
  String get orderTitle => 'Назва';

  @override
  String get orderLastUpdated => 'Останнє оновлення';

  @override
  String get orderLastAdded => 'Останнє додане';

  @override
  String get never => 'Ніколи';

  @override
  String get always => 'Завжди';

  @override
  String get scorePoint100 => '100 балів';

  @override
  String get scorePoint10Decimal => '10 балів із десятковими';

  @override
  String get scorePoint10 => '10 балів';

  @override
  String get scorePoint5 => '5 зірок';

  @override
  String get scorePoint3 => '3 смайли';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count години',
      many: '$count годин',
      few: '$count години',
      one: '$count година',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count днів',
      few: '$count дні',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count тижня',
      many: '$count тижнів',
      few: '$count тижні',
      one: '$count тиждень',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Продовжити';

  @override
  String get resumeSourceMissing =>
      'Встанови джерело цього тайтла, щоб продовжити';

  @override
  String get resumeRemove => 'Прибрати з «Продовжити»';

  @override
  String resumeAt(String time) {
    return 'Залишилось $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Сторінка $page з $total';
  }

  @override
  String get continueWatching => 'Продовжити перегляд';

  @override
  String get continueReading => 'Продовжити читання';

  @override
  String get favouriteAnimeSection => 'Улюблені аніме';

  @override
  String get favouriteMangaSection => 'Улюблена манга';

  @override
  String get plannedAnime => 'Заплановані аніме';

  @override
  String get plannedManga => 'Заплановані манги';

  @override
  String get completedAnime => 'Завершені аніме';

  @override
  String get completedManga => 'Завершені манги';

  @override
  String get hiddenMedia => 'Приховані медіа';

  @override
  String get recentUpdates => 'Нещодавні оновлення';

  @override
  String get trendingNow => 'Зараз у тренді';

  @override
  String get popularThisSeason => 'Популярне цього сезону';

  @override
  String get trendingMovies => 'Фільми в тренді';

  @override
  String get topRatedSeries => 'Серіали з найвищою оцінкою';

  @override
  String get mostFavouriteSeries => 'Найулюбленіші серіали';

  @override
  String get popularAnime => 'Популярні аніме';

  @override
  String get trendingManhwa => 'Манхви в тренді';

  @override
  String get trendingNovels => 'Новели в тренді';

  @override
  String get topRatedManga => 'Манга з найвищою оцінкою';

  @override
  String get mostFavouriteManga => 'Найулюбленіша манга';

  @override
  String get popularManga => 'Популярна манга';

  @override
  String get topMovies => 'Топ фільмів';

  @override
  String get topOna => 'Топ ONA';

  @override
  String get topOva => 'Топ OVA';

  @override
  String get mostPopular => 'Найпопулярніше';

  @override
  String get mostFavourite => 'Найулюбленіше';

  @override
  String get upcoming => 'Незабаром';

  @override
  String get topManga => 'Топ манги';

  @override
  String get topManhwa => 'Топ манхв';

  @override
  String get topManhua => 'Топ маньхуа';

  @override
  String get topNovels => 'Топ новел';

  @override
  String get topOneShots => 'Топ ваншотів';

  @override
  String get trendingMoviesToday => 'Фільми в тренді сьогодні';

  @override
  String get trendingShowsToday => 'Шоу в тренді сьогодні';

  @override
  String get trendingMoviesWeek => 'Фільми в тренді цього тижня';

  @override
  String get trendingShowsWeek => 'Шоу в тренді цього тижня';

  @override
  String get mostWatchedMoviesMonth => 'Найпереглядуваніші фільми місяця';

  @override
  String get mostWatchedShowsMonth => 'Найпереглядуваніші шоу місяця';

  @override
  String get trendingThisWeek => 'У тренді цього тижня';

  @override
  String get mostWatchedThisMonth => 'Найпереглядуваніше цього місяця';

  @override
  String get repoLinksAdded => 'Посилання на репозиторії додано!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'Помилка отримання даних з AniList.';

  @override
  String get navInfo => 'ІНФО';

  @override
  String get navComments => 'КОМЕНТАРІ';

  @override
  String get playerNotAvailable => 'Плеєр поки недоступний';

  @override
  String deepLinkInitialError(String error) {
    return 'Помилка отримання початкового deep link: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Помилка відкриття посилання: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Це посилання не можна відкрити: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Помилка відкриття посилання: $error';
  }

  @override
  String get forReleasingTitles => 'для тайтлів, що зараз виходять';

  @override
  String get progress => 'Прогрес';

  @override
  String get notes => 'Нотатки';

  @override
  String serviceNotFound(String id) {
    return 'Сервіс «$id» не знайдено';
  }

  @override
  String get glassEffectEnabled => 'Скляний ефект увімкнено';

  @override
  String get glassEffectDisabled => 'Скляний ефект вимкнено';

  @override
  String get materialYouEnabled => 'Material You увімкнено';

  @override
  String get materialYouDisabled => 'Material You вимкнено';

  @override
  String get darkModeEnabled => 'Темний режим увімкнено';

  @override
  String get darkModeDisabled => 'Темний режим вимкнено';

  @override
  String get animeList => 'Список аніме';

  @override
  String get mangaList => 'Список манги';

  @override
  String ownerAnimeList(String owner) {
    return 'Список аніме: $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Список манги: $owner';
  }

  @override
  String get loadingList => 'Завантаження списку';

  @override
  String get earlier => 'Раніше';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня тому',
      many: '$count днів тому',
      few: '$count дні тому',
      one: '$count день тому',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count години тому',
      many: '$count годин тому',
      few: '$count години тому',
      one: '$count годину тому',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count хвилини тому',
      many: '$count хвилин тому',
      few: '$count хвилини тому',
      one: '$count хвилину тому',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count хв тому';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count год тому';
  }

  @override
  String daysAgoShort(int count) {
    return '$count дн. тому';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count тиж. тому';
  }

  @override
  String get couldntLoadSource => 'Не вдалося завантажити це джерело';

  @override
  String get followers => 'Підписники';

  @override
  String couldntLoadTitle(String title) {
    return 'Не вдалося завантажити $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Не вдалося завантажити цей профіль';

  @override
  String get profile => 'Профіль';

  @override
  String get feed => 'Стрічка';

  @override
  String get stats => 'Статистика';

  @override
  String get received => 'Отримані';

  @override
  String get sent => 'Надіслані';

  @override
  String get global => 'Глобальна';

  @override
  String get couldntLoadPage => 'Не вдалося завантажити цю сторінку';

  @override
  String get couldntLoadAllDetails => 'Не вдалося завантажити всі деталі';

  @override
  String get series => 'Серіали';

  @override
  String get studios => 'Студії';

  @override
  String get users => 'Користувачі';

  @override
  String repositoriesTitle(String type) {
    return 'Репозиторії: $type';
  }

  @override
  String get repositoryUrl => 'URL репозиторію';

  @override
  String get downloadingRepository => 'Завантаження репозиторію…';

  @override
  String get noRepositories => 'Репозиторіїв не додано';

  @override
  String repoExtensionsCount(String count) {
    return 'Розширень: $count';
  }

  @override
  String get searchExtensions => 'Пошук розширень...';

  @override
  String deletePluginTitle(String name) {
    return 'Видалити $name?';
  }

  @override
  String get deletePluginMessage => 'Точно хочеш видалити цей плагін?';

  @override
  String pluginDeleted(String name) {
    return '$name видалено';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name немає в налаштованому репозиторії';
  }

  @override
  String get pluginFetchFailed => 'Не вдалося отримати інформацію про плагін';

  @override
  String installPluginTitle(String name) {
    return 'Встановити $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Розмір: $size';
  }

  @override
  String get installedState => 'Встановлено';

  @override
  String get errorLabel => 'Помилка:';

  @override
  String get stackTraceDetails => 'Деталі (стек викликів)';

  @override
  String get shareLogFile => 'Поділитися файлом логів';

  @override
  String get copyLogs => 'Копіювати логи';

  @override
  String noListToEdit(String service) {
    return 'У $service немає списку для редагування';
  }

  @override
  String get couldNotReadFile => 'Не вдалося прочитати цей файл';

  @override
  String importedSummary(int anime, int manga) {
    return 'Імпортовано аніме: $anime, манги: $manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · вже є: $count';
  }

  @override
  String get airingNow => 'Виходить зараз';

  @override
  String get topRatedMovies => 'Фільми з найвищою оцінкою';

  @override
  String get koreanDramas => 'Корейські дорами';

  @override
  String get chineseDramas => 'Китайські дорами';

  @override
  String get japaneseDramas => 'Японські дорами';

  @override
  String get thaiDramas => 'Тайські дорами';

  @override
  String get turkishDramas => 'Турецькі серіали';

  @override
  String get miniSeries => 'Мінісеріали';

  @override
  String get topRatedShows => 'Шоу з найвищою оцінкою';

  @override
  String get recommendedSection => 'Рекомендоване';

  @override
  String get syncRow => 'Синхронізація списків';

  @override
  String get syncRowDesc =>
      'Віддзеркали список одного сервісу на інші свої акаунти';

  @override
  String get syncTitle => 'Синхронізація';

  @override
  String get syncMainService => 'Головний сервіс';

  @override
  String get syncMainServiceDesc =>
      'Його список — еталон; усі інші сервіси, куди ти ввійшов(-ла), оновлюються під нього';

  @override
  String get syncAuto => 'Автосинхронізація';

  @override
  String get syncAutoDesc =>
      'Завантажувати й синхронізувати у фоні під час запуску застосунку та кожні 30 хвилин';

  @override
  String get syncAddMissing => 'Додавати відсутні записи';

  @override
  String get syncAddMissingDesc =>
      'Також додавати записи, яких ще немає в іншому сервісі';

  @override
  String get syncOnlyForward => 'Зберігати більший прогрес';

  @override
  String get syncOnlyForwardDesc =>
      'Не зменшувати прогрес у сервісі, де він уже більший';

  @override
  String get syncFetch => 'Отримати';

  @override
  String get syncFetchAgain => 'Отримати знову';

  @override
  String get syncAll => 'Синхронізувати все';

  @override
  String get syncStop => 'Стоп';

  @override
  String get syncResume => 'Продовжити';

  @override
  String get syncNothingToSync =>
      'Цей сервіс не можна синхронізувати для цього типу';

  @override
  String get syncNoTargets => 'Увійди в інший сервіс, щоб синхронізуватись';

  @override
  String get syncLoadingMap => 'Завантаження зіставлення ID';

  @override
  String get syncComparing => 'Порівнюємо списки';

  @override
  String get syncIntro =>
      'Обери головний сервіс і натисни «Отримати». Кожен сервіс опитується один раз за твоїм списком, а потім порівнюється з головним.';

  @override
  String get syncStateSynced => 'Синхронізовано';

  @override
  String get syncStateOutdated => 'Не синхронізовано';

  @override
  String get syncStateMissing => 'Немає в списку';

  @override
  String get syncStateUnmapped => 'Немає збігу';

  @override
  String syncPaused(String time) {
    return 'Очікуємо ліміт запитів, продовжимо через $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count лише в $name, не чіпаємо';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done з $total';
  }

  @override
  String get syncNothingHere => 'Нічого показувати';

  @override
  String syncLimits(int used, int max, String window) {
    return 'Використано запитів: $used з $max за $window';
  }

  @override
  String get syncMinute => 'хвилину';

  @override
  String get syncDay => 'день';

  @override
  String get syncNotInList => 'Ще не в списку';

  @override
  String get syncCleared => 'План очищено';

  @override
  String get syncClear => 'Очистити';

  @override
  String get syncOptions => 'Опції';

  @override
  String get syncShared => 'Ділить запис з іншим елементом';

  @override
  String syncNotFound(String service) {
    return 'Не знайдено в $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Синхронізувати $service ($count)';
  }

  @override
  String get syncOnEdit => 'Миттєва синхронізація';

  @override
  String get syncOnEditDesc =>
      'Одразу надсилати кожну зміну прогресу й списку в інші сервіси, куди ти ввійшов(-ла)';

  @override
  String syncPushed(String services) {
    return 'Синхронізовано з $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Ліміт запитів, спробуй за хвилину';

  @override
  String get syncAhead => 'Хто попереду';

  @override
  String get syncAheadDesc =>
      'У обидва боки: для кожного тайтла перемагає запис із найбільшим прогресом і копіюється в усі інші сервіси';

  @override
  String syncAheadFrom(String service) {
    return 'З $service';
  }

  @override
  String get syncConfirm => 'Перевірити перед синхронізацією';

  @override
  String get syncConfirmDesc =>
      'Показати, що змінить «Синхронізувати все» і скільки потрібно запитів';

  @override
  String get syncPreviewTitle => 'Готово до синхронізації';

  @override
  String syncPreviewLine(int updates, int adds) {
    return 'Оновлень: $updates, додати: $adds';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Приблизно запитів: $count';
  }

  @override
  String syncPreviewLookups(int count) {
    return 'Спершу потрібен пошук ID: $count';
  }

  @override
  String get syncPreviewNothing => 'Нічого змінювати';

  @override
  String get syncStart => 'Старт';

  @override
  String get syncRetry => 'Повторити';

  @override
  String get syncSkip => 'Пропустити цей елемент';

  @override
  String get syncInclude => 'Знову включити цей елемент';

  @override
  String get syncSkippedLabel => 'Пропущено';

  @override
  String get syncChanges => 'Відмінності';

  @override
  String get syncChangeStatus => 'Статус';

  @override
  String get syncChangeProgress => 'Прогрес';

  @override
  String get syncChangeScore => 'Оцінка';

  @override
  String get syncChangeDates => 'Дати';

  @override
  String get syncChangeRepeat => 'Кількість переглядів';

  @override
  String get syncFailedReason => 'Чому не вдалося';

  @override
  String get syncSkippedHint =>
      'Пропущені елементи не чіпаються, навіть після повторного отримання';

  @override
  String get commentsRules => 'Правила коментування';

  @override
  String get commentsRulesBody =>
      'ПОРУШИШ БУДЬ-ЯКЕ ПРАВИЛО — ВИЛЕТИШ\n\n1. Жодного расизму, дискримінації чи мови ворожнечі\n2. Жодного спаму чи самореклами\n3. Категорично жодного NSFW\n4. Тільки англійська, без винятків\n5. Жодної підміни особи, цькування чи образ\n6. Жодного нелегального контенту чи крайньої неповаги до будь-якого фандому\n7. Не проси й не поширюй репозиторії чи розширення\n8. Спойлери лише під тегом спойлера й з попередженням\n9. Жодної сексуалізації чи недоречних коментарів щодо неповнолітніх персонажів\n10. Якщо це неправильно, не постуй!';

  @override
  String get commentsRulesAccept => 'Зрозуміло';

  @override
  String get commentsSortNewest => 'Найновіші';

  @override
  String get commentsSortOldest => 'Найстаріші';

  @override
  String get commentsSortHighest => 'Найвища оцінка';

  @override
  String get commentsSortLowest => 'Найнижча оцінка';

  @override
  String commentsEpisodeShort(int number) {
    return 'Серія $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Розд. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Фільтр за серією';

  @override
  String get commentsFilterChapterTitle => 'Фільтр за розділом';

  @override
  String get commentsFilterTagTitle => 'Введи номер серії або розділу';

  @override
  String get commentsFilterHint => 'Номер';

  @override
  String get commentsFilterApply => 'Фільтр';

  @override
  String get commentsFilterClear => 'Показати все';

  @override
  String get commentsPlaceholder => 'Додай коментар…';

  @override
  String commentsReplyingTo(String name) {
    return 'Відповідь для $name';
  }

  @override
  String get commentsSend => 'Надіслати';

  @override
  String get commentsTagButton => 'Тег';

  @override
  String commentsTagTitle(String label) {
    return 'Тег $label (необов\'язково)';
  }

  @override
  String get commentsTagEpisode => 'серія';

  @override
  String get commentsTagChapter => 'розділ';

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
    return 'Тег не може перевищувати загальну кількість ($total)';
  }

  @override
  String get commentsNoTag => 'Без тега';

  @override
  String get commentsSpoiler => 'Спойлер';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Пошук GIF';

  @override
  String get commentsGifEmpty => 'GIF не знайдено';

  @override
  String get commentsEmptyText => 'Коментар не може бути порожнім';

  @override
  String get commentsBannedYou => 'Тобі заборонено коментувати';

  @override
  String get commentsEdited => 'Коментар змінено';

  @override
  String get commentsDeleted => 'Коментар видалено';

  @override
  String get commentsDeletedPlaceholder => '[видалено]';

  @override
  String get commentsReported => 'Скаргу на коментар надіслано';

  @override
  String get commentsUserBanned => 'Користувача забанено';

  @override
  String get commentsReport => 'Поскаржитись';

  @override
  String get commentsReportAsk => 'Поскаржитись модераторам на цей коментар?';

  @override
  String get commentsDelete => 'Видалити';

  @override
  String get commentsDeleteAsk => 'Цей коментар буде видалено для всіх.';

  @override
  String get commentsBan => 'Забанити';

  @override
  String get commentsBanAsk => 'Заборонити цьому користувачу коментувати?';

  @override
  String get commentsCopy => 'Копіювати';

  @override
  String get commentsViewReply => 'Показати 1 відповідь';

  @override
  String commentsViewReplies(int count) {
    return 'Показати відповіді: $count';
  }

  @override
  String get commentsHideReplies => 'Сховати відповіді';

  @override
  String get commentsLoadMore => 'Завантажити ще коментарі';

  @override
  String get commentsEmpty => 'Коментарів поки немає. Будь першим!';

  @override
  String get commentsEmptyFiltered => 'Для цього фільтра коментарів немає';

  @override
  String get commentsSignIn =>
      'Увійди в AniList, щоб читати й писати коментарі';

  @override
  String get commentsSignInMessage =>
      'Коментарі спільні для всіх сервісів і використовують твій акаунт AniList.';

  @override
  String get commentsUnavailable => 'Коментарі для цього тайтла недоступні';

  @override
  String get commentsUnavailableMessage =>
      'Його не вдалося зіставити із записом AniList.';

  @override
  String get commentsDisabled => 'Коментарі вимкнено';

  @override
  String get commentsDisabledMessage =>
      'Увімкнути їх знову можна в Налаштування › Загальні.';

  @override
  String get commentsOffline => 'Не вдалося завантажити коментарі';

  @override
  String get commentsSingleTitle => 'Показано один коментар';

  @override
  String get commentsShowAll => 'Показати всі коментарі';

  @override
  String get commentsSettingsHeader => 'Коментарі';

  @override
  String get commentsSettingEnabled => 'Коментарі';

  @override
  String get commentsSettingEnabledDesc =>
      'Показувати вкладку коментарів у тайтлах і входити на сервер коментарів через твій акаунт AniList';

  @override
  String get commentsSettingAlerts => 'Сповіщення про відповіді';

  @override
  String get commentsSettingAlertsDesc =>
      'Сповіщати, коли хтось відповідає на мої коментарі';

  @override
  String get commentsNoticeReplyTitle => 'Нова відповідь на коментар';

  @override
  String commentsNoticeReply(String name) {
    return '$name відповів(-ла) на твій коментар';
  }

  @override
  String get commentsNoticeWarningTitle => 'Ти отримав(-ла) попередження';

  @override
  String get commentsNoticeWarning => 'Будь уважнішим(-ою) до своїх коментарів';

  @override
  String get commentsNoticeUpdateTitle => 'Оновлення від Dantotsu';

  @override
  String get barcodeTitle => 'Сканувати штрихкод';

  @override
  String get barcodeTooltip => 'Знайди мангу чи новелу за штрихкодом';

  @override
  String get barcodeIntro =>
      'Наведи камеру на штрихкод на звороті тому або введи ISBN.';

  @override
  String get barcodeIntroManual =>
      'Введи ISBN, надрукований над штрихкодом на звороті тому.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Це недійсний ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'Книгу не знайдено для $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Камера недоступна. Дозволь доступ до камери або введи ISBN.';

  @override
  String get themesTitle => 'Опенінги й едінги';

  @override
  String get themesPlayVideo => 'Відтворити відео';

  @override
  String get themesPlayAudio => 'Відтворити лише звук';

  @override
  String get themesOpenSite => 'Відкрити на AnimeThemes';

  @override
  String get themesCredit => 'Теми з AnimeThemes';

  @override
  String get themesVersions => 'Версії';

  @override
  String get sauceTitle => 'Знайти джерело';

  @override
  String get sauceIntro =>
      'Завантаж сторінку манги чи арт або встав посилання, щоб знайти, звідки це.';

  @override
  String get sauceKeyTitle => 'API-ключ SauceNAO';

  @override
  String get sauceKeyHint => 'Необов\'язково, збільшує денний ліміт пошуку';

  @override
  String get sauceKeyDesc =>
      'Отримай безкоштовний ключ на saucenao.com/user.php';

  @override
  String get sauceOpen => 'Відкрити джерело';

  @override
  String get sauceCredit => 'Пошук зображень від SauceNAO';

  @override
  String get sauceEmpty => 'Збігів не знайдено';

  @override
  String get sauceTooltip => 'Знайти джерело сторінки манги чи арту';

  @override
  String get trendzTitle => 'Аніме-чарти';

  @override
  String get trendzAnime => 'Аніме';

  @override
  String get trendzFemale => 'Жіночі персонажі';

  @override
  String get trendzMale => 'Чоловічі персонажі';

  @override
  String get trendzCouple => 'Пари';

  @override
  String get trendzCredit => 'Щотижневі чарти від AniTrendz';

  @override
  String get trendzNew => 'НОВЕ';

  @override
  String get trendzEmpty => 'Чарт порожній';

  @override
  String get shareCard => 'Картка для поширення';

  @override
  String get shareCardList => 'Картка списку для поширення';

  @override
  String get shareCardSaved => 'Картку збережено';

  @override
  String get shareCardFailed => 'Не вдалося створити картку';

  @override
  String get shareCardListEmpty => 'У твоєму списку поки нічого поширювати';

  @override
  String get shareCardTop => 'Мої топ-вибори';

  @override
  String themesEpisodes(String eps) {
    return 'Серії: $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return 'Збіг $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Тиждень $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return 'Голосів: $count';
  }

  @override
  String trendzPeak(String rank) {
    return 'Пік: #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'Тижнів у топ-10: $count';
  }

  @override
  String get imageSearchTitle => 'Пошук за зображенням';

  @override
  String get imageSearchTooltip => 'Знайти аніме за скриншотом';

  @override
  String get imageSearchIntro =>
      'Обери скриншот або встав посилання на зображення, і trace.moe знайде серію та момент, звідки воно.';

  @override
  String get imageSearchPick => 'Обрати зображення';

  @override
  String get imageSearchLinkHint => 'Встав посилання на зображення';

  @override
  String get imageSearchGo => 'Пошук';

  @override
  String get imageSearchEmpty => 'Збігів не знайдено';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Серія $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'на $time';
  }

  @override
  String get imageSearchPreview => 'Попередній перегляд кліпу';

  @override
  String imageSearchSimilarity(int percent) {
    return 'Збіг $percent%';
  }

  @override
  String get imageSearchCredit => 'Працює на trace.moe';

  @override
  String get imageSearchOpenFailed => 'Не вдалося відкрити цей тайтл';

  @override
  String get groups => 'Групи';

  @override
  String get groupsYours => 'Твої групи';

  @override
  String get groupsPopular => 'Популярні';

  @override
  String get groupsNew => 'Нові';

  @override
  String get groupsFeatured => 'Рекомендовані';

  @override
  String get groupsSearch => 'Пошук груп';

  @override
  String get groupsAll => 'Усі';

  @override
  String get groupsEmpty => 'Груп не знайдено';

  @override
  String get groupsEmptyYours => 'Ти ще не вступив(-ла) до жодної групи';

  @override
  String get groupsSignIn =>
      'Увійди, щоб побачити групи, до яких ти вступив(-ла)';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count учасника',
      many: '$count учасників',
      few: '$count учасники',
      one: '$count учасник',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Вступити';

  @override
  String get groupsJoined => 'Ти в групі';

  @override
  String get groupsLeave => 'Вийти з групи';

  @override
  String get groupsLeaveAsk =>
      'Ти перестанеш бачити пости цієї групи у своїй стрічці.';

  @override
  String get groupsJoinFailed =>
      'Не вдалося вступити до групи, можливо, вона лише за запрошеннями';

  @override
  String get groupsLeaveFailed => 'Не вдалося вийти з групи';

  @override
  String get groupsPosts => 'Пости';

  @override
  String get groupsMembersTab => 'Учасники';

  @override
  String get groupsAbout => 'Про групу';

  @override
  String get groupsRules => 'Правила';

  @override
  String get groupsPrivacyOpen => 'Відкрита';

  @override
  String get groupsPrivacyRestricted => 'Обмежена';

  @override
  String get groupsPrivacyClosed => 'Закрита';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Адмін';

  @override
  String get groupsRoleMod => 'Модер';

  @override
  String get groupsCouldntLoad => 'Не вдалося завантажити цю групу';

  @override
  String get groupsNewPost => 'Опублікувати в групі';

  @override
  String get groupsPostHint => 'Поділись чимось із групою';

  @override
  String get groupsOpenInBrowser => 'Відкрити в браузері';

  @override
  String get groupsCategory => 'Категорія';

  @override
  String get groupsLanguage => 'Мова';

  @override
  String get groupsCreated => 'Створено';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count лідера',
      many: '$count лідерів',
      few: '$count лідери',
      one: '$count лідер',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Приватність';

  @override
  String get notificationsAll => 'Усі';

  @override
  String get notificationsAiring => 'Вихід серій';

  @override
  String get notificationsMedia => 'Нові тайтли';

  @override
  String get notificationsReplies => 'Відповіді';

  @override
  String get notificationsMentions => 'Згадки';

  @override
  String get notificationsMessages => 'Повідомлення';

  @override
  String get notificationsLikes => 'Вподобайки';

  @override
  String get notificationsFollows => 'Підписки';

  @override
  String get notificationsNoServices =>
      'Жоден сервіс, куди ти ввійшов(-ла), не має сповіщень';

  @override
  String get notificationsNoServicesMessage =>
      'Увійди в сервіс, що надсилає сповіщення, і вони з\'являться тут.';

  @override
  String get notificationsEmptyKind => 'У цій категорії поки нічого';

  @override
  String get notificationsCommentsEmpty => 'Немає сповіщень про коментарі';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Тут з\'являться відповіді на твої коментарі та оголошення від Dantotsu.';

  @override
  String get notificationsSettings => 'Налаштування сповіщень';

  @override
  String get notificationsPollTitle => 'Перевіряти нові сповіщення';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Кожні $minutes хв, поки застосунок відкритий';
  }

  @override
  String get notificationsNotifyAbout => 'Сповіщати про';

  @override
  String get notificationsCommentsHeader => 'Сповіщення про коментарі';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Показувати системне сповіщення про кожне непрочитане сповіщення $service, поки застосунок працює.';
  }

  @override
  String get notificationsTestSent => 'Тестове сповіщення надіслано';

  @override
  String get notificationsTestDenied =>
      'Сповіщення для Dartotsu не дозволено. Увімкни їх у налаштуваннях системи.';

  @override
  String get notificationsTestHint =>
      'Утримуй, щоб надіслати тестове сповіщення';

  @override
  String get notificationsTestSample => 'Це тестове сповіщення';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name відповів(-ла) на твій коментар у $media';
  }

  @override
  String get imageSearchNotLink => 'Це не схоже на посилання';

  @override
  String get imageSearchQuota => 'Перевищено ліміт пошуку';

  @override
  String get imageSearchBusy => 'Забагато запитів, спробуй за хвилину';

  @override
  String imageSearchFailed(int code) {
    return 'Пошук не вдався ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return 'Нових сповіщень: $count';
  }

  @override
  String get reactionsTitle => 'Реакції';

  @override
  String get reactionsNeedEntry =>
      'Додай цей тайтл до списку, перш ніж реагувати';

  @override
  String get reactionsAdd => 'Додати реакцію';

  @override
  String get reactionsHint => 'Що скажеш? (коротко і без спойлерів)';

  @override
  String get reactionsPost => 'Опублікувати';

  @override
  String get reactionsFailed => 'Не вдалося оновити реакцію';

  @override
  String get settingsWatch => 'Дивитись і читати';

  @override
  String get settingsWatchDesc => 'Списки серій, підбір джерел і деталі серій';

  @override
  String get watchSettingsLayout => 'Список серій';

  @override
  String get watchSettingsSources => 'Джерела';

  @override
  String get watchSettingsMetadata => 'Деталі серій';

  @override
  String get watchLayout => 'Макет';

  @override
  String get watchListView => 'Список';

  @override
  String get watchGridView => 'Сітка';

  @override
  String get watchCompactView => 'Компактний';

  @override
  String get watchDefaultLayoutDesc =>
      'Як розташовуються серії й розділи, поки ти не змінив для тайтла';

  @override
  String get watchChunkSize => 'Розмір діапазону';

  @override
  String get watchChunkSizeDesc =>
      'Скільки серій чи розділів у кожній вкладці діапазону';

  @override
  String get watchShowDescription => 'Показувати описи';

  @override
  String get watchShowDescriptionDesc =>
      'Показувати опис серії під назвою в режимі списку';

  @override
  String get watchShowFiller => 'Показувати філер-серії';

  @override
  String get watchShowFillerDesc =>
      'Вимкни, щоб ховати серії, позначені як філер';

  @override
  String get watchBlurUnwatched => 'Ховати спойлерні прев\'ю';

  @override
  String get watchBlurUnwatchedDesc =>
      'Розмивати мініатюру серій, які ти ще не дивився(-лась)';

  @override
  String get watchResumeShelf => 'Полиця «Продовжити»';

  @override
  String get watchResumeShelfDesc =>
      'Показувати рядок «Продовжити» на головній';

  @override
  String get watchMarkOnLongPress => 'Довге натискання відмічає прогрес';

  @override
  String get watchMarkOnLongPressDesc =>
      'Утримуй серію чи розділ, щоб позначити переглянутим чи ні';

  @override
  String get watchMatching => 'Підбір джерела';

  @override
  String get watchMatchingDesc =>
      '«Найближчий» бере найкращий результат пошуку. «Лише точний» приймає майже ідентичну назву, а решту лишає тобі.';

  @override
  String get watchMatchClosest => 'Найближчий збіг';

  @override
  String get watchMatchExact => 'Лише точний збіг';

  @override
  String get watchMetadataDesc =>
      'Звідки беруться назви серій, описи, мініатюри, дати виходу й позначки філерів. Перетягуй, щоб задати пріоритет; перемагає перше джерело зі значенням.';

  @override
  String get watchMetaAniZipDesc => 'Назви серій, описи, кадри й дати виходу';

  @override
  String get watchMetaKitsuDesc => 'Назви серій, описи й мініатюри';

  @override
  String get watchMetaSimklDesc => 'Назви серій, описи, кадри й дати виходу';

  @override
  String get watchMetaAniListDesc =>
      'Назви серій на стрімінгу, мініатюри та розклад виходу';

  @override
  String get watchMetaTenraiDesc =>
      'Назви серій MyAnimeList, дати виходу, позначки філерів і рекапів через Tenrai';

  @override
  String get watchClearMetadata => 'Оновити деталі серій';

  @override
  String get watchClearMetadataDesc =>
      'Забути кешовані деталі серій, щоб завантажити їх знову';

  @override
  String get watchMetadataCleared => 'Деталі серій буде завантажено знову';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count серії',
      many: '$count серій',
      few: '$count серії',
      one: '$count серія',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count розділу',
      many: '$count розділів',
      few: '$count розділи',
      one: '$count розділ',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Серія $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Розділ $number';
  }

  @override
  String get watchSearching => 'Шукаємо…';

  @override
  String watchSearchingFor(String term) {
    return 'Шукаємо: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Обрано: $title';
  }

  @override
  String watchFound(String title) {
    return 'Знайдено: $title';
  }

  @override
  String get watchNothingFound => 'У цьому джерелі нічого не знайдено';

  @override
  String get watchSearchFailed => 'Пошук у джерелі не вдався';

  @override
  String get watchLoadFailed => 'Не вдалося завантажити список';

  @override
  String get watchSignInToTrack => 'Увійди, щоб відстежувати прогрес';

  @override
  String watchInstallSource(String action) {
    return 'Встанови розширення, щоб почати $action';
  }

  @override
  String get watchSourceMissing => 'Це джерело не встановлено';

  @override
  String get watchWrongTitle => 'Не той тайтл?';

  @override
  String get watchSearchAgain => 'Шукати ще раз';

  @override
  String watchSearchSource(String source) {
    return 'Пошук у $source';
  }

  @override
  String get watchSource => 'Джерело';

  @override
  String get watchOptions => 'Опції';

  @override
  String get watchReverse => 'Зворотний порядок';

  @override
  String get watchScanlators => 'Групи';

  @override
  String get watchResetOptions => 'Скинути ці опції';

  @override
  String get watchContinue => 'Продовжити';

  @override
  String get watchStart => 'Старт';

  @override
  String get watchPlay => 'Грати';

  @override
  String get watchRead => 'Читати';

  @override
  String get watchMarkWatched => 'Позначити переглянутим';

  @override
  String get watchMarkUnwatched => 'Позначити непереглянутим';

  @override
  String get watchMarkRead => 'Позначити прочитаним';

  @override
  String get watchMarkUnread => 'Позначити непрочитаним';

  @override
  String get watchFiller => 'Філер';

  @override
  String get watchRecap => 'Рекап';

  @override
  String get watchNoEpisodes => 'Серій не знайдено';

  @override
  String get watchNoChapters => 'Розділів не знайдено';

  @override
  String get watchSourceTools => 'Інструменти джерела';

  @override
  String get watchSourceSettings => 'Налаштування джерела';

  @override
  String get watchOpenWebView => 'Відкрити у веб-вікні';

  @override
  String get watchOpenWebViewDesc =>
      'Пройди перевірку Cloudflare або увійди; куки діляться із запитами до джерела';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count куки збережено для $host',
      many: '$count куків збережено для $host',
      few: '$count куки збережено для $host',
      one: '$count кук збережено для $host',
      zero: 'Немає куків для $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Дозвіл Cloudflare активний, $time';
  }

  @override
  String get watchClearanceMissing => 'Немає куки дозволу Cloudflare';

  @override
  String get watchClearanceSession => 'діє, доки не закриєш застосунок';

  @override
  String get watchAgentShared =>
      'Запити використовують user agent веб-вікна, який перевіряє Cloudflare';

  @override
  String get watchAgentCustom =>
      'Задано власний user agent, тому дозвіл Cloudflare з веб-вікна може бути відхилено';

  @override
  String get watchTestConnection => 'Перевірити з\'єднання';

  @override
  String get watchSolveChallenge => 'Пройти';

  @override
  String watchProbeOk(int code) {
    return 'Доступно (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare все ще вимагає перевірку';

  @override
  String watchProbeBlocked(int code) {
    return 'Заблоковано сайтом (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Сайт недоступний';

  @override
  String get watchClearCookies => 'Очистити куки для цього сайту';

  @override
  String get watchCookiesCleared => 'Куки очищено';

  @override
  String get watchMetaSource => 'Деталі серій з';

  @override
  String get watchMetaAuto => 'Автоматично';

  @override
  String get watchMetaOff => 'Вимк.';

  @override
  String get playerSettingsTitle => 'Налаштування плеєра';

  @override
  String get playerSectionPlayback => 'Відтворення';

  @override
  String get playerSectionSkip => 'Пропуск';

  @override
  String get playerSectionGestures => 'Керування';

  @override
  String get playerSectionSubtitles => 'Субтитри';

  @override
  String get playerSectionShaders => 'Шейдери';

  @override
  String get playerSectionEngine => 'Рушій';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Швидкість відтворення';

  @override
  String get playerCursedSpeed => 'Додаткові швидкості';

  @override
  String get playerCursedSpeedDesc => 'Додати до списку швидкості до 10x';

  @override
  String get playerResize => 'Режим масштабу';

  @override
  String get playerFitFit => 'Вмістити';

  @override
  String get playerFitCover => 'Заповнити';

  @override
  String get playerFitStretch => 'Розтягнути';

  @override
  String get playerSkipDuration => 'Тривалість кнопки пропуску';

  @override
  String get playerSkipDurationDesc =>
      'Скільки секунд перескакує кнопка пропуску поза опенінгами й едінгами';

  @override
  String get playerSeekDuration => 'Перемотка подвійним дотиком';

  @override
  String get playerSeekDurationDesc =>
      'Секунд для стрибка при подвійному дотику або стрілці';

  @override
  String get playerAutoPlay => 'Автоматично грати наступну';

  @override
  String get playerAutoPlayDesc =>
      'Запускати наступну серію, коли ця закінчиться';

  @override
  String get playerResume => 'Продовжити з місця зупинки';

  @override
  String get playerResumeDesc => 'Продовжувати серію з останньої позиції';

  @override
  String get playerOrientation => 'Орієнтація';

  @override
  String get playerOrientationAuto => 'Як на пристрої';

  @override
  String get playerOrientationLandscape => 'Альбомна';

  @override
  String get playerOrientationPortrait => 'Портретна';

  @override
  String get playerAutoSkipOpening => 'Пропускати опенінги';

  @override
  String get playerAutoSkipEnding => 'Пропускати едінги';

  @override
  String get playerAutoSkipRecap => 'Пропускати рекапи';

  @override
  String get playerAutoSkipDesc =>
      'Перестрибувати одразу на початку, за даними AniSkip і позначок стріму';

  @override
  String get playerSkipOnce => 'Пропускати лише раз';

  @override
  String get playerSkipOnceDesc =>
      'Не пропускати ту саму частину знову, якщо перемотаєш назад';

  @override
  String get playerAdjustBrightness => 'Жест яскравості';

  @override
  String get playerAdjustBrightnessDesc =>
      'Проводь вгору й вниз по правій половині екрана';

  @override
  String get playerAdjustVolume => 'Жест гучності';

  @override
  String get playerAdjustVolumeDesc =>
      'Проводь вгору й вниз по лівій половині екрана';

  @override
  String get playerHoldToSpeed => 'Утримуй для прискорення';

  @override
  String get playerHoldToSpeedDesc =>
      'Утримуй відео, щоб грати швидше, проведи вбік, щоб змінити швидкість';

  @override
  String get playerThumbless => 'Товща смуга перемотки';

  @override
  String get playerThumblessDesc => 'Товста смуга без повзунка';

  @override
  String get playerShowSubtitles => 'Показувати субтитри';

  @override
  String get playerShowSubtitlesDesc =>
      'Вимкни, щоб сховати всі доріжки субтитрів';

  @override
  String get playerSubtitleLanguage => 'Бажана мова субтитрів';

  @override
  String get playerSubtitleSize => 'Розмір субтитрів';

  @override
  String get playerSubtitleWeight => 'Товщина субтитрів';

  @override
  String get playerSubtitleBottom => 'Відступ субтитрів знизу';

  @override
  String get playerSubtitleFont => 'Шрифт субтитрів';

  @override
  String get playerSubtitleColor => 'Колір субтитрів';

  @override
  String get playerSubtitleBackground => 'Тло субтитрів';

  @override
  String get playerSubtitleOutline => 'Контур субтитрів';

  @override
  String get playerLibass => 'Використовувати libass';

  @override
  String get playerLibassDesc =>
      'Рендерить стильні .ass-субтитри. Розмір, колір і шрифт вище тоді не діють';

  @override
  String get playerShaders => 'Шейдери';

  @override
  String get playerShadersEnable => 'Увімкнути шейдери';

  @override
  String get playerShadersEnableDesc =>
      'Апскейл і очищення картинки GLSL-шейдерами, як-от Anime4K';

  @override
  String get playerShadersOff => 'Шейдери вимкнено';

  @override
  String get playerShadersMissing => 'Anime4K не встановлено';

  @override
  String get playerShadersMissingDesc =>
      'Завантаж пакет шейдерів Anime4K (близько 0,8 МБ), щоб користуватись вбудованими режимами.';

  @override
  String get playerShadersDownload => 'Завантажити Anime4K';

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
  String get playerShadersPreview => 'Перегляд на цьому кадрі';

  @override
  String get playerShadersUse => 'Використати';

  @override
  String get playerPicture => 'Картинка';

  @override
  String get playerColors => 'Кольори';

  @override
  String get playerColorDefault => 'Типово';

  @override
  String get playerColorVivid => 'Яскраво';

  @override
  String get playerColorPop => 'Аніме-поп';

  @override
  String get playerColorSoft => 'М\'яко';

  @override
  String get playerColorCinematic => 'Кінематографічно';

  @override
  String get playerColorBright => 'Світло';

  @override
  String get playerColorNight => 'Ніч';

  @override
  String get playerColorMono => 'Моно';

  @override
  String get playerColorCustom => 'Свій';

  @override
  String get playerColorBrightness => 'Яскравість';

  @override
  String get playerColorContrast => 'Контраст';

  @override
  String get playerColorSaturation => 'Насиченість';

  @override
  String get playerColorGamma => 'Гама';

  @override
  String get playerColorHue => 'Відтінок';

  @override
  String get playerColorReset => 'Скинути';

  @override
  String get playerColorAdjust => 'Налаштувати';

  @override
  String get playerShadersOriginal => 'Оригінал';

  @override
  String get playerShadersPreviewFailed =>
      'Не вдалося взяти кадр для перегляду';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Твої шейдери';

  @override
  String get playerShadersCustom => 'Власні шейдери';

  @override
  String get playerShadersImport => 'Імпорт .glsl';

  @override
  String get playerShadersNone =>
      'Імпортуй свої .glsl або .hook файли й познач їх, щоб поєднати в ланцюжок';

  @override
  String get playerShadersBadFile => 'Обери файл шейдера .glsl або .hook';

  @override
  String get playerDecoder => 'Декодер';

  @override
  String get playerDecoderAuto => 'Авто';

  @override
  String get playerDecoderAutoSafe => 'Авто (безпечно)';

  @override
  String get playerDecoderSoftware => 'Програмний';

  @override
  String get playerDecoderHardware => 'Апаратний';

  @override
  String get playerDecoderHardwarePlus => 'Апаратний+';

  @override
  String get playerVideoOutput => 'Відеовивід';

  @override
  String get playerAudioChannels => 'Аудіоканали';

  @override
  String get playerBuffer => 'Розмір буфера (МБ)';

  @override
  String get playerBufferDesc =>
      'Пам\'ять, яку плеєр може використати для буферизації стріму';

  @override
  String get playerUseMpvConf => 'Використовувати mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Застосовувати опції з твого mpv.conf при старті відтворення';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Редагувати конфігурацію mpv';

  @override
  String get playerMpvConfDesc =>
      'Одна опція на рядок, як --hwdec=auto у звичайному mpv.conf. Профілі в [дужках] ігноруються.';

  @override
  String get playerMpvConfSaved => 'mpv.conf збережено';

  @override
  String get playerUseScripts => 'Використовувати скрипти mpv';

  @override
  String get playerUseScriptsDesc =>
      'Завантажувати плагіни з теки скриптів. Потрібна збірка libmpv з підтримкою Lua чи JavaScript';

  @override
  String get playerScripts => 'Скрипти mpv';

  @override
  String get playerScriptsManage => 'Додавай, видаляй і перемикай плагіни';

  @override
  String get playerScriptsAdd => 'Додати скрипт';

  @override
  String get playerScriptsDesc =>
      'Плагіни Lua, JavaScript і нативні, покладені сюди, завантажуються при старті відтворення.';

  @override
  String get playerScriptsNone => 'Скриптів поки немає';

  @override
  String get playerScriptsBadFile =>
      'Обери файл .lua, .js або нативного плагіна';

  @override
  String get playerTuning => 'Розширене налаштування відео';

  @override
  String get playerTuningDesc =>
      'Перевизначити синхронізацію, кешування, масштабування й тонмапінг. Неправильні значення можуть зіпсувати відтворення';

  @override
  String get playerVideoSync => 'Синхронізація відео';

  @override
  String get playerInterpolation => 'Інтерполяція кадрів';

  @override
  String get playerInterpolationDesc =>
      'Плавний рух, потребує синхронізації display-resample';

  @override
  String get playerPitch => 'Корекція висоти тону';

  @override
  String get playerPitchDesc =>
      'Зберігати природність голосів на інших швидкостях';

  @override
  String get playerCacheSeconds => 'Кеш (секунди)';

  @override
  String get playerReadahead => 'Читання наперед (секунди)';

  @override
  String get playerThreads => 'Потоки декодера';

  @override
  String get playerDeband => 'Дебандинг';

  @override
  String get playerDebandDesc => 'Зменшити бандинг кольору в градієнтах';

  @override
  String get playerDebandIterations => 'Ітерації дебандингу';

  @override
  String get playerDebandThreshold => 'Поріг дебандингу';

  @override
  String get playerCorrectDownscaling => 'Коректне зменшення масштабу';

  @override
  String get playerSigmoid => 'Сигмоїдний апскейл';

  @override
  String get playerScale => 'Апскейлер';

  @override
  String get playerCscale => 'Апскейлер кольорів';

  @override
  String get playerDscale => 'Даунскейлер';

  @override
  String get playerToneMapping => 'Тонмапінг';

  @override
  String get playerTargetPeak => 'Цільовий пік';

  @override
  String get playerOpenFiles => 'Відкрити відеофайли';

  @override
  String get playerOpenFilesDesc => 'Грати файли з цього пристрою';

  @override
  String get playerOpenFolder => 'Відкрити теку';

  @override
  String get playerOpenFolderDesc => 'Грати всі відео в теці як плейлист';

  @override
  String get playerNetworkStream => 'Мережевий потік';

  @override
  String get playerNetworkStreamDesc =>
      'Відкрий пряме посилання на відео або HLS';

  @override
  String get playerStreamUrl => 'URL потоку';

  @override
  String get playerStreamReferer => 'Referer (необов\'язково)';

  @override
  String get playerTorrent => 'Торент';

  @override
  String get playerTorrentDesc => 'Стрімити magnet-посилання або .torrent-файл';

  @override
  String get playerMagnetLink => 'Magnet-посилання або URL торента';

  @override
  String get playerPickTorrent => 'Обери .torrent-файл';

  @override
  String get playerTorrentMissing =>
      'Спершу встанови торент-доповнення в Налаштування > Доповнення';

  @override
  String get playerNoVideos => 'Відео для відтворення не знайдено';

  @override
  String get playerReset => 'Скинути налаштування плеєра';

  @override
  String get playerResetDesc => 'Повернути всі опції плеєра до типових';

  @override
  String get playerResetConfirm => 'Скинути всі налаштування плеєра?';

  @override
  String get playerResetDone => 'Налаштування плеєра скинуто';

  @override
  String get playerQuality => 'Якість';

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
  String get playerAutoSelect => 'Автовибір потоку';

  @override
  String get playerAutoSelectDesc =>
      'Обирати потік, найближчий до твого останнього вибору для цього тайтла';

  @override
  String get playerLoadingStreams => 'Шукаємо потоки…';

  @override
  String get playerNoStreams => 'У цій серії немає потоків';

  @override
  String get playerNoStreamsTitle => 'Потоків не знайдено';

  @override
  String get playerFailed => 'Не вдалося відтворити';

  @override
  String get playerTorrentNeeded => 'Цей потік — торент';

  @override
  String get playerTorrentNeededDesc =>
      'Встанови торент-доповнення, щоб грати magnet-посилання й .torrent-файли';

  @override
  String get playerOpenAddons => 'Відкрити доповнення';

  @override
  String get playerTryAnotherStream => 'Спробувати інший потік';

  @override
  String get playerEpisodes => 'Серії';

  @override
  String get playerLock => 'Заблокувати керування';

  @override
  String get playerFullscreen => 'На весь екран';

  @override
  String get readerChapters => 'Розділи';

  @override
  String get readerSettingsTitle => 'Налаштування рідера';

  @override
  String get readerPreviousChapter => 'Попередній розділ';

  @override
  String get readerNextChapter => 'Наступний розділ';

  @override
  String get readerFirstChapter => 'Це перший розділ';

  @override
  String get readerLastChapter => 'Ти все прочитав(-ла)';

  @override
  String get readerFailed => 'Не вдалося відкрити цей розділ';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'У цьому розділі немає тексту';

  @override
  String get readerPerTitle => 'Лише для цього тайтла';

  @override
  String get readerPerTitleDesc =>
      'Зберегти ці налаштування рідера лише для цього тайтла';

  @override
  String get readerSectionReading => 'Читання';

  @override
  String get readerSectionControls => 'Керування';

  @override
  String get readerSectionDisplay => 'Екран';

  @override
  String get readerSectionNovel => 'Новела';

  @override
  String get readerMode => 'Режим читання';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Справа наліво';

  @override
  String get readerModeLtr => 'Зліва направо';

  @override
  String get readerModeVertical => 'Вертикальні сторінки';

  @override
  String get readerModeWebtoon => 'Вебтун';

  @override
  String get readerModeContinuous => 'Безперервна прокрутка';

  @override
  String get readerScale => 'Масштаб зображення';

  @override
  String get readerScaleFit => 'Вмістити в екран';

  @override
  String get readerScaleWidth => 'Вмістити по ширині';

  @override
  String get readerScaleHeight => 'Вмістити по висоті';

  @override
  String get readerScaleOriginal => 'Оригінальний розмір';

  @override
  String get readerScaleSmart => 'Розумне вміщення';

  @override
  String get readerDoublePage => 'Подвійні сторінки';

  @override
  String get readerDoublePageDesc =>
      'Показувати дві сторінки поруч в альбомній орієнтації';

  @override
  String get readerDoubleTapZoom => 'Масштаб подвійним дотиком';

  @override
  String get readerDoubleTapZoomDesc =>
      'Збільшуй і зменшуй сторінку подвійним дотиком';

  @override
  String get readerAnimate => 'Анімація сторінок';

  @override
  String get readerAnimateDesc => 'Анімувати перегортання';

  @override
  String get readerSidePadding => 'Бічні відступи';

  @override
  String get readerSidePaddingDesc => 'Відступ збоку від сторінок у відсотках';

  @override
  String get readerPageGap => 'Проміжок між сторінками';

  @override
  String get readerPageGapDesc => 'Відстань між сторінками';

  @override
  String get readerAutoNext => 'Продовжувати в наступний розділ';

  @override
  String get readerAutoNextDesc =>
      'Вантажити наступний розділ, поки ти читаєш кінець цього';

  @override
  String get readerPreload => 'Попереднє завантаження сторінок';

  @override
  String get readerPreloadDesc => 'Скільки сторінок завантажувати наперед';

  @override
  String get readerTapZones => 'Зони дотику';

  @override
  String get readerTapDefault => 'Типові';

  @override
  String get readerTapLShaped => 'Г-подібні';

  @override
  String get readerTapKindle => 'Як у Kindle';

  @override
  String get readerTapEdge => 'Лише краї';

  @override
  String get readerTapOff => 'Вимкнено';

  @override
  String get readerInvertTaps => 'Інвертувати зони дотику';

  @override
  String get readerInvertTapsDesc =>
      'Поміняти місцями попередню й наступну зони';

  @override
  String get readerBackground => 'Тло';

  @override
  String get readerBackgroundBlack => 'Чорне';

  @override
  String get readerBackgroundGray => 'Сіре';

  @override
  String get readerBackgroundWhite => 'Біле';

  @override
  String get readerBackgroundTheme => 'Тема застосунку';

  @override
  String get readerFilter => 'Кольоровий фільтр';

  @override
  String get readerFilterNone => 'Немає';

  @override
  String get readerFilterGrayscale => 'Відтінки сірого';

  @override
  String get readerFilterInvert => 'Інверсія';

  @override
  String get readerFilterSepia => 'Сепія';

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
  String get readerDim => 'Затемнення';

  @override
  String get readerDimDesc => 'Затемнити сторінки';

  @override
  String get readerPageNumber => 'Номер сторінки';

  @override
  String get readerPageNumberDesc =>
      'Показувати номер сторінки під час читання';

  @override
  String get readerFullscreen => 'На весь екран';

  @override
  String get readerFullscreenDesc => 'Сховати системні панелі';

  @override
  String get readerCropBorders => 'Обрізати поля';

  @override
  String get readerCropBordersDesc =>
      'Прибирати порожні білі чи чорні поля зі сторінок';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Гучність гортає сторінки';

  @override
  String get readerVolumeKeysDesc =>
      'Гучність вниз — вперед, гучність вгору — назад';

  @override
  String get readerBookmarks => 'Закладки';

  @override
  String get readerBookmarkAdd => 'Додати закладку';

  @override
  String get readerBookmarkRemove => 'Видалити закладку';

  @override
  String get readerBookmarksEmpty => 'Закладок поки немає';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Сторінка $page з $total';
  }

  @override
  String get readerAutoScroll => 'Автопрокрутка';

  @override
  String get readerAutoScrollStop => 'Зупинити автопрокрутку';

  @override
  String get readerAutoScrollSpeed => 'Швидкість автопрокрутки';

  @override
  String get readerAutoScrollSpeedDesc => 'Як швидко сторінки гортаються самі';

  @override
  String get readerKeepOn => 'Не гасити екран';

  @override
  String get readerKeepOnDesc => 'Не давати екрану вимикатись під час читання';

  @override
  String get readerOrientation => 'Орієнтація';

  @override
  String get readerOrientationFree => 'Вільна';

  @override
  String get readerOrientationPortrait => 'Портретна';

  @override
  String get readerOrientationLandscape => 'Альбомна';

  @override
  String get readerSaveProgress => 'Зберігати прогрес';

  @override
  String get readerSaveProgressDesc =>
      'Пам\'ятати сторінку й позначати розділи прочитаними';

  @override
  String get readerReset => 'Скинути налаштування рідера';

  @override
  String get readerResetDesc => 'Повернути типові';

  @override
  String get novelSize => 'Розмір тексту';

  @override
  String get novelFont => 'Шрифт';

  @override
  String get novelLineHeight => 'Висота рядка';

  @override
  String get novelParagraph => 'Відстань між абзацами';

  @override
  String get novelMargin => 'Поля';

  @override
  String get novelTheme => 'Тема рідера';

  @override
  String get novelThemeApp => 'Тема застосунку';

  @override
  String get novelThemeLight => 'Світла';

  @override
  String get novelThemeSepia => 'Сепія';

  @override
  String get novelThemeDark => 'Темна';

  @override
  String get novelThemeBlack => 'Чорна';

  @override
  String get novelJustify => 'Вирівняти за шириною';

  @override
  String get novelJustifyDesc => 'Вирівнювати текст по обох краях';

  @override
  String get trackProgressTitle => 'Зберегти прогрес?';

  @override
  String trackProgressAnime(String name) {
    return 'Відстежувати $name у твоєму списку під час перегляду? Обери «Лише на цьому пристрої», щоб зберегти локально, або «Ні», щоб нічого не зберігати.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Відстежувати $name у твоєму списку, коли закінчуєш розділ? Обери «Лише на цьому пристрої», щоб зберегти локально, або «Ні», щоб нічого не зберігати.';
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
  String get trackProgressYes => 'Зберегти';

  @override
  String get trackProgressReset =>
      'Запит про збереження прогресу скинуто для цього типу, його буде показано знову';

  @override
  String get trackProgressNo => 'Ні';

  @override
  String get trackProgressOff => 'Вимк.';

  @override
  String get trackProgressLocal => 'Лише на цьому пристрої';

  @override
  String get trackProgressSettingAnime => 'Відстежувати прогрес аніме';

  @override
  String get trackProgressSettingManga => 'Відстежувати прогрес манги й новел';

  @override
  String get trackProgressSettingDesc =>
      'Що робити, коли відкриваєш серію чи закінчуєш розділ';

  @override
  String get trackProgressAsk => 'Питати';

  @override
  String get trackProgressAlways => 'Завжди';

  @override
  String get dantotsuImport => 'Імпорт з Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Прочитати бекап налаштувань Dantotsu (.ani або зашифрований .sani)';

  @override
  String get dantotsuPick => 'Обери бекап Dantotsu';

  @override
  String get dantotsuNothing => 'З цього файлу нічого імпортувати';

  @override
  String get dantotsuApply => 'Імпортувати вибране';

  @override
  String dantotsuDone(int done, int total) {
    return 'Імпортовано $done з $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Акаунти';

  @override
  String get dantotsuGroupAppearance => 'Вигляд';

  @override
  String get dantotsuGroupExtensions => 'Розширення';

  @override
  String get dantotsuGroupApp => 'Застосунок';

  @override
  String get dantotsuGroupPlayer => 'Плеєр';

  @override
  String get dantotsuAnilist => 'Вхід в AniList';

  @override
  String get dantotsuMal => 'Вхід в MyAnimeList';

  @override
  String get dantotsuDiscord => 'Токен Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Тема';

  @override
  String get dantotsuReposAnime => 'Репозиторії розширень аніме';

  @override
  String get dantotsuReposManga => 'Репозиторії розширень манги';

  @override
  String get dantotsuReposNovel => 'Репозиторії розширень новел';

  @override
  String get dantotsuUpdates => 'Перевірка оновлень';

  @override
  String get dantotsuComments => 'Коментарі';

  @override
  String get dantotsuActivity => 'Опитування сповіщень AniList';

  @override
  String get dantotsuDns => 'DNS-провайдер';

  @override
  String get dantotsuPlayer => 'Швидкість плеєра й кольори субтитрів';

  @override
  String get dantotsuWarning =>
      'Цей файл містить токени входу. Не показуй його нікому.';

  @override
  String get novelIndent => 'Відступи абзаців';

  @override
  String get novelIndentDesc =>
      'Починати кожен абзац з відступу в першому рядку';

  @override
  String get novelLetterSpacing => 'Міжлітерний інтервал';

  @override
  String get novelSectionTranslate => 'Переклад';

  @override
  String get sectionExperimental => 'Експериментальне';

  @override
  String get kitsuGraphqlDetail => 'Швидші сторінки тайтлів (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Вантажити тайтл разом із персонажами, командою й твоїм записом одним запитом';

  @override
  String get togetherTitle => 'Дивитись разом';

  @override
  String get togetherIntro =>
      'Встав посилання на кімнату, яке надіслав друг. Ти одразу приєднаєшся, а плеєр відкриється, коли вони почнуть дивитись.';

  @override
  String get togetherName => 'Твоє ім\'я';

  @override
  String get togetherConnecting => 'Підключаємось…';

  @override
  String get togetherLeave => 'Вийти з кімнати';

  @override
  String get togetherYou => 'Ти';

  @override
  String get togetherNoChat => 'Повідомлень поки немає';

  @override
  String get togetherChatHint => 'Повідомлення';

  @override
  String get togetherCopyInvite => 'Копіювати запрошення';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Сервер і кімнату скопійовано';

  @override
  String get togetherConnectionLost => 'З\'єднання втрачено';

  @override
  String togetherConnectedTo(String room) {
    return 'Підключено до $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Не вдалося підключитись: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name приєднався(-лась)';
  }

  @override
  String togetherLeft(String name) {
    return '$name вийшов(-ла)';
  }

  @override
  String togetherPaused(String name) {
    return '$name поставив(-ла) на паузу';
  }

  @override
  String togetherResumed(String name) {
    return '$name продовжив(-ла)';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name перемотав(-ла) на $time';
  }

  @override
  String get togetherFollowFailed =>
      'Не вдалося відкрити серію хоста. Відкрий її сам(-а).';

  @override
  String get togetherJoinRole => 'Приєднатись до кімнати';

  @override
  String get togetherOpenHost => 'Відкрити серію хоста';

  @override
  String get togetherShowChat => 'Показати живий чат';

  @override
  String get togetherWaitingHost => 'Чекаємо, поки хост запустить серію';

  @override
  String get togetherRoomLink => 'Посилання на кімнату';

  @override
  String get togetherBadLink => 'Це не посилання на кімнату';

  @override
  String get togetherHostClosed => 'Хост закрив кімнату';

  @override
  String get togetherNowPlaying => 'Зараз грає';

  @override
  String togetherWatchingCount(int count) {
    return 'Дивляться: $count';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user хоче поставити на паузу';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user хоче продовжити';
  }

  @override
  String get togetherChip => 'Разом';

  @override
  String get togetherSettingsDesc =>
      'Приєднуйся до кімнати друга за посиланням';

  @override
  String get novelBilingual => 'Показувати оригінал і переклад';

  @override
  String get novelBilingualDesc =>
      'Кожен абзац показує оригінальний текст, а під ним — переклад';

  @override
  String get novelTranslateTo => 'Перекладати на';

  @override
  String get novelTranslateOff => 'Вимк.';

  @override
  String get novelSectionSpeech => 'Озвучення тексту';

  @override
  String get novelSpeechRate => 'Швидкість мовлення';

  @override
  String get novelSpeechPitch => 'Висота мовлення';

  @override
  String get novelSpeak => 'Читати вголос';

  @override
  String get novelSpeakStop => 'Припинити читання вголос';

  @override
  String get novelTranslate => 'Перекласти розділ';

  @override
  String get novelTranslateShowOriginal => 'Показати оригінал';

  @override
  String novelTranslateFailed(String error) {
    return 'Не вдалося перекласти: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Озвучення тексту недоступне на цьому пристрої';

  @override
  String get novelSpeechVoice => 'Голос';

  @override
  String get novelSpeechVoiceDefault => 'Системний';

  @override
  String get novelSpeakPrevious => 'Попередній рядок';

  @override
  String get novelSpeakNext => 'Наступний рядок';

  @override
  String get novelTapPaging => 'Торкнись краю, щоб гортати';

  @override
  String get novelTapPagingDesc =>
      'Торкнись лівого чи правого боку, щоб прокрутити сторінку, середина показує керування';

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
    return 'Залишилось $count хв';
  }

  @override
  String get novelBold => 'Жирний текст';

  @override
  String get novelBoldDesc => 'Використовувати товщий шрифт';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Завершено: $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Далі: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Раніше: $chapter';
  }

  @override
  String get readerNoPages => 'У цьому розділі немає сторінок';

  @override
  String get readerLoadingPages => 'Завантажуємо сторінки…';

  @override
  String get readerSlowPage => 'Сторінка ще завантажується…';

  @override
  String get readerPageFailed => 'Не вдалося завантажити цю сторінку';

  @override
  String get playerShowComments => 'Показати коментарі';

  @override
  String get playerHideComments => 'Сховати коментарі';

  @override
  String get playerSubtitles => 'Субтитри';

  @override
  String get playerSubtitlesOff => 'Субтитри вимкнено';

  @override
  String get playerAudio => 'Аудіо';

  @override
  String get playerAddSubtitle => 'Додати файл субтитрів';

  @override
  String get playerAddAudio => 'Додати аудіофайл';

  @override
  String get playerChapters => 'Розділи';

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
  String get playerNoChapters => 'Немає розділів';

  @override
  String get playerTimestamp => 'Мітка часу';

  @override
  String get playerAutoPlayDelay => 'Відлік до наступної серії';

  @override
  String get playerWatchedAt => 'Зараховувати як переглянуте на';

  @override
  String playerNextIn(int seconds) {
    return 'Наступна серія через $seconds с';
  }

  @override
  String get playerPlayNow => 'Грати зараз';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: пропускатиметься автоматично для цього тайтла';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: не пропускатиметься автоматично для цього тайтла';
  }

  @override
  String get playerAudioLanguage => 'Бажана мова аудіо';

  @override
  String get playerLanguageOrderHint =>
      'Розділяй мови комами. Використовується перша знайдена.';

  @override
  String get playerPip => 'Картинка в картинці';

  @override
  String get playerAutoPip => 'Картинка в картинці при виході';

  @override
  String get playerAutoPipDesc =>
      'Продовжувати грати в маленькому вікні, коли виходиш із застосунку';

  @override
  String playerAutoPlaying(String title) {
    return 'Далі грає $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Не вдалося встановити шейдери: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Розділ $number';
  }

  @override
  String get playerPerTitle => 'Лише для цього тайтла';

  @override
  String get playerPerTitleDesc =>
      'Зберегти ці опції для цього тайтла, не чіпаючи типових';

  @override
  String get playerSwapGestures => 'Поміняти боки свайпів';

  @override
  String get playerSwapGesturesDesc => 'Яскравість зліва, гучність справа';

  @override
  String get playerOpenBig => 'Відкривати у великому режимі';

  @override
  String get playerOpenBigDesc =>
      'Запускати плеєр на весь екран, без списку серій';

  @override
  String get playerPauseOnBlur => 'Пауза при втраті фокусу';

  @override
  String get playerPauseOnBlurDesc =>
      'Ставити на паузу, коли застосунок перекрито, наприклад шторкою сповіщень, і продовжувати після повернення';

  @override
  String get playerAudioOutput => 'Аудіовивід';

  @override
  String get fontAppDefault => 'Шрифт застосунку';

  @override
  String get fontImport => 'Імпортувати шрифт';

  @override
  String get fontSample =>
      'Щоб з\'їсти ще цих м\'яких французьких булок, та й випий чаю';

  @override
  String get playerSubtitleDelay => 'Затримка субтитрів';

  @override
  String get playerAudioDelay => 'Затримка аудіо';

  @override
  String get playerDelayReset => 'Скинути';

  @override
  String get playerOnlineSubtitles => 'Онлайн-субтитри';

  @override
  String get playerOnlineSearchHint => 'Назва й серія';

  @override
  String get playerOnlineNone => 'Субтитрів не знайдено';

  @override
  String playerOnlineFailed(String error) {
    return 'Не вдалося знайти субтитри: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Не вдалося завантажити ці субтитри: $error';
  }

  @override
  String get playerOnlineMatch => 'Підходить до цього файлу';

  @override
  String get playerOnlineEpisode => 'Збіг за серією';

  @override
  String playerOnlineDownloads(int count) {
    return 'Завантажень: $count';
  }

  @override
  String get playerSeekPreview => 'Прев\'ю перемотки';

  @override
  String get playerSeekPreviewDesc =>
      'Показувати маленьке прев\'ю кадру над смугою перемотки. Відкриває другий декодер низької роздільності, тож на стрімах витрачає більше трафіку.';

  @override
  String get playerSettingsChip => 'Налаштування';

  @override
  String get playerAudioDevice => 'Аудіопристрій';

  @override
  String get settingsDownloads => 'Завантаження';

  @override
  String get settingsDownloadsDesc => 'Офлайн-серії, черга й офлайн-режим';

  @override
  String get downloadsTitle => 'Завантаження';

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
      'Дивись чергу та все збережене на цьому пристрої';

  @override
  String get downloadTitle => 'Завантажити';

  @override
  String get downloadAlready => 'Уже завантажено або в черзі';

  @override
  String get downloadPickStream => 'Який потік завантажити?';

  @override
  String get downloadPickSubtitle => 'Які субтитри завантажити?';

  @override
  String get downloadPickAudio => 'Яку аудіодоріжку завантажити?';

  @override
  String get downloadNoAudio => 'Без додаткового аудіо';

  @override
  String get downloadAudio => 'Аудіо';

  @override
  String get downloadNoSubtitle => 'Без субтитрів';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Цей потік — HLS-плейлист. Для його завантаження потрібне доповнення FFmpeg.';

  @override
  String get downloadSourceMissing => 'Джерело цієї серії не встановлено';

  @override
  String get downloadWaitingConnection => 'Чекаємо на з\'єднання';

  @override
  String get downloadSubtitles => 'Субтитри';

  @override
  String get downloadDownloaded => 'Завантажено';

  @override
  String get downloadOffline => 'Офлайн';

  @override
  String get downloadDelete => 'Видалити завантаження';

  @override
  String get downloadCancel => 'Скасувати';

  @override
  String get downloadPause => 'Пауза';

  @override
  String get downloadPaused => 'На паузі';

  @override
  String get downloadResume => 'Продовжити';

  @override
  String get downloadPauseAll => 'Усе на паузу';

  @override
  String get downloadResumeAll => 'Продовжити все';

  @override
  String get downloadQueuedState => 'Чекає в черзі';

  @override
  String get downloadResolving => 'Отримуємо потік…';

  @override
  String get downloadUsedFallback =>
      'Немає відповідного потоку, використано перший';

  @override
  String get downloadTabQueue => 'Черга';

  @override
  String get downloadTabDone => 'Готово';

  @override
  String get downloadTabFailed => 'Помилка';

  @override
  String get downloadEmptyQueue => 'Нічого не завантажується';

  @override
  String get downloadEmptyDone => 'Поки нічого не завантажено';

  @override
  String get downloadEmptyFailed => 'Немає невдалих завантажень';

  @override
  String get downloadNext => 'Наступна серія';

  @override
  String downloadNextN(int count) {
    return 'Наступні серії: $count';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Усі непереглянуті ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Цей діапазон ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Усі серії ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count серії додано в чергу',
      many: '$count серій додано в чергу',
      few: '$count серії додано в чергу',
      one: '$count серію додано в чергу',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name завантажено';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name: не вдалося завантажити';
  }

  @override
  String downloadStorage(String size) {
    return 'Завантаження займають $size';
  }

  @override
  String get downloadQueueHeader => 'Черга';

  @override
  String get downloadParallel => 'Одночасні завантаження';

  @override
  String get downloadParallelDesc =>
      'Завантажувати по одному або кілька одразу';

  @override
  String get downloadOneByOne => 'По одному';

  @override
  String get downloadNotifications => 'Сповіщення про завантаження';

  @override
  String get downloadNotificationsDesc =>
      'Живий прогрес, де система підтримує, інакше сповіщення про завершення';

  @override
  String get downloadNotifyLive => 'Живі';

  @override
  String get downloadNotifyDone => 'Після завершення';

  @override
  String get downloadNotifyOff => 'Вимк.';

  @override
  String get downloadInfoFile =>
      'Писати інфо-файл поруч із кожним завантаженням';

  @override
  String get downloadInfoFileDesc =>
      'Зберігає потік, якість, субтитри й часи пропуску в маленький .json-файл';

  @override
  String get offlineHeader => 'Офлайн';

  @override
  String get offlineModeDesc =>
      '«Авто» переходить в офлайн, лише якщо застосунок стартує без з\'єднання. «Завжди» лишається офлайн, поки не змінеш.';

  @override
  String get offlineModeOff => 'Вимк.';

  @override
  String get offlineModeAlways => 'Завжди';

  @override
  String get offlineModeOn =>
      'Офлайн-режим увімкнено. Зміни зберігаються тут і відправляться, коли ти знову будеш онлайн.';

  @override
  String get offlineSaved =>
      'Збережено на пристрої, синхронізується, коли ти будеш онлайн';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count зміни синхронізовано',
      many: '$count змін синхронізовано',
      few: '$count зміни синхронізовано',
      one: '$count зміну синхронізовано',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count зміни чекають синхронізації',
      many: '$count змін чекають синхронізації',
      few: '$count зміни чекають синхронізації',
      one: '$count зміна чекає синхронізації',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Зміни, що чекають синхронізації';

  @override
  String get offlinePendingNone => 'Нічого не чекає';

  @override
  String get offlineSyncNow => 'Синхронізувати зараз';

  @override
  String get offlineDiscard => 'Відкинути';

  @override
  String get downloadNotOffline =>
      'Цю серію не завантажено, тому вона недоступна офлайн';

  @override
  String get offlineModeChip => 'Офлайн';

  @override
  String get downloadNextChapter => 'Наступний розділ';

  @override
  String downloadNextChapters(int count) {
    return 'Наступні розділи: $count';
  }

  @override
  String downloadUnread(int count) {
    return 'Усі непрочитані ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Усі розділи ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return 'Сторінок: $done / $total';
  }

  @override
  String downloadPagesCount(int count) {
    return 'Сторінок: $count';
  }

  @override
  String get downloadFfmpegTitle => 'Потрібне доповнення FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'Цей потік — HLS-плейлист. Доповнення FFmpeg склеює його частини в один mp4-файл. Без нього частини лежать у теці серії й грають звідти.';

  @override
  String get downloadFfmpegInstall => 'Встановити';

  @override
  String get downloadFfmpegInstalling =>
      'Встановлюємо FFmpeg, це може зайняти час…';

  @override
  String get downloadFinishing => 'Склеюємо частини в один файл…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return 'Частин: $done / $total';
  }

  @override
  String get downloadTorrentNoFile =>
      'У торенті немає відеофайлу для завантаження';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Завантажується $count елемента',
      many: 'Завантажується $count елементів',
      few: 'Завантажується $count елементи',
      one: 'Завантажується $count елемент',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Видаляти переглянуті завантаження';

  @override
  String get downloadAutoDeleteDesc =>
      'Видаляє завантаження, коли твій прогрес досягає цієї серії чи розділу';

  @override
  String get downloadConnections => 'З\'єднань на завантаження';

  @override
  String get downloadConnectionsDesc =>
      'Ділить великий файл на частини, що вантажаться одночасно. Деякі сервери це обмежують.';

  @override
  String get downloadPlayChoice => 'Грати з';

  @override
  String get downloadPlayLocalDesc => 'Файл, збережений на цьому пристрої';

  @override
  String get downloadPlayStream => 'Стрімити онлайн';

  @override
  String get downloadPlayStreamDesc => 'Завантажувати серію з джерела';

  @override
  String get offlineFeedTitle => 'Завантажено на цей пристрій';

  @override
  String get offlineFeedEmpty =>
      'Завантаж щось, поки ти онлайн, і воно з\'явиться тут';

  @override
  String get offlineEnabled => 'Офлайн-режим увімкнено';

  @override
  String get offlineDisabled => 'Офлайн-режим вимкнено';

  @override
  String get downloadReadChoice => 'Читати з';

  @override
  String get downloadReadLocalDesc => 'Сторінки, збережені на цьому пристрої';

  @override
  String get downloadReadOnline => 'Читати онлайн';

  @override
  String get downloadReadOnlineDesc => 'Завантажувати розділ з джерела';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Видалити $name з цього пристрою?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Скасувати завантаження $name? Те, що вже завантажено, буде видалено.';
  }

  @override
  String get downloadFfmpegFolder => 'Лишити як теку';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Викинути $count зміни, які так і не надіслано? Це не можна скасувати.',
      many:
          'Викинути $count змін, які так і не надіслано? Це не можна скасувати.',
      few:
          'Викинути $count зміни, які так і не надіслано? Це не можна скасувати.',
      one:
          'Викинути $count зміну, яку так і не надіслано? Це не можна скасувати.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Чекаємо на Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Пауза на лімітному з\'єднанні';

  @override
  String get downloadWifiOnly => 'Лише Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Завантаження чекають, поки ти на мобільному інтернеті';

  @override
  String get downloadMetered => 'Пауза на лімітних з\'єднаннях';

  @override
  String get downloadMeteredDesc =>
      'Також чекає на Wi-Fi, який пристрій вважає лімітним';

  @override
  String get downloadSpeedLimit => 'Ліміт швидкості';

  @override
  String get downloadSpeedLimitDesc =>
      'Обмежує загальну швидкість завантаження';

  @override
  String get downloadUnlimited => 'Без ліміту';

  @override
  String get downloadMoveToTop => 'Нагору';

  @override
  String downloadSwarm(int seeds, int peers) {
    return 'Сідів: $seeds · Пірів: $peers';
  }

  @override
  String get downloadTorrentFile => 'Який файл?';

  @override
  String get downloadTorrentAuto => 'Підбирати серію автоматично';

  @override
  String get downloadTorrentLoading => 'Читаємо торент…';

  @override
  String get watchAutoSource => 'Автоматично перемикатись на наступне джерело';

  @override
  String get watchAutoSourceDesc =>
      'Якщо джерело не знаходить тайтл або не завантажується, спробувати наступне встановлене';

  @override
  String get extensionTest => 'Тест розширень';

  @override
  String get extensionTestCopy => 'Скопіювати помилки та їхні логи';

  @override
  String get extensionTestQuery => 'Пошуковий запит';

  @override
  String get extensionTestRun => 'Запустити';

  @override
  String get extensionTestStop => 'Стоп';

  @override
  String get extensionTestNone => 'Немає встановлених розширень цього типу';

  @override
  String get extensionTestNotRun => 'Ще не тестувалось';

  @override
  String get extensionTestSearch => 'Пошук';

  @override
  String get extensionTestDetail => 'Деталі';

  @override
  String get extensionTestUnits => 'Серії / розділи';

  @override
  String get extensionTestLinks => 'Потоки / сторінки';

  @override
  String extensionTestFailedAt(String step) {
    return 'Помилка на кроці: $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return 'Протестовано $done з $total · успішно: $passed · помилок: $failed';
  }

  @override
  String get extensionTestCopyLogs => 'Скопіювати все з повними логами';

  @override
  String get onboardingFeaturesTitle => 'Усе в одному місці';

  @override
  String get onboardingFeaturesBody =>
      'Усе, що ти відстежуєш, дивишся й читаєш, без жонглювання застосунками.';

  @override
  String get onboardingFeatureTrack => 'Відстежуй усе';

  @override
  String get onboardingFeatureTrackDesc =>
      'Списки, прогрес і оцінки в AniList, MyAnimeList, Simkl, Kitsu та MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Дивись і читай';

  @override
  String get onboardingFeatureWatchDesc =>
      'Став розширення й стрімь аніме чи читай мангу й новели просто в застосунку.';

  @override
  String get onboardingFeatureOffline => 'Бери з собою офлайн';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Завантажуй серії й розділи та продовжуй без інтернету.';

  @override
  String get onboardingFeatureSync => 'Тримай списки синхронними';

  @override
  String get onboardingFeatureSyncDesc =>
      'Віддзеркалюй список між сервісами або дай перемогти тому, де прогрес більший.';

  @override
  String get onboardingServices => 'Працює з';

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

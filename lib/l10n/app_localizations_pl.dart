// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'NOWA najlepsza apka do\nśledzenia anime i mangi';

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
  String get loadMore => 'Załaduj więcej';

  @override
  String get login => 'Zaloguj się';

  @override
  String get continueAsGuest => 'Kontynuuj jako gość';

  @override
  String get getStarted => 'Zaczynamy';

  @override
  String get loginWithToken => 'Zaloguj się tokenem';

  @override
  String get pasteTokenHint => 'Wklej swój token dostępu';

  @override
  String loginTo(String service) {
    return 'Zaloguj się do $service';
  }

  @override
  String get settings => 'Ustawienia';

  @override
  String get account => 'Konto';

  @override
  String get about => 'O aplikacji';

  @override
  String get language => 'Język';

  @override
  String get animationSpeed => 'Animacje';

  @override
  String get animationSpeedDesc =>
      'Szybkość przejść i efektów wejścia w całej aplikacji';

  @override
  String get animationSpeedOff => 'Wyłączone';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rozszerzenia',
      many: 'Rozszerzeń',
      few: 'Rozszerzenia',
      one: 'Rozszerzenie',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Nieznane źródło';

  @override
  String get install => 'Zainstaluj';

  @override
  String get update => 'Zaktualizuj';

  @override
  String get uninstall => 'Odinstaluj';

  @override
  String get updateInstallCancelled =>
      'Instalację anulowano. Jeśli Android napisał, że aplikacja koliduje z zainstalowaną, to podpis jest inny: najpierw odinstaluj obecną wersję, potem zainstaluj aktualizację';

  @override
  String updateInstallFailed(String error) {
    return 'Aktualizacja się nie udała: $error';
  }

  @override
  String get appLock => 'Blokada aplikacji';

  @override
  String get appLockDesc =>
      'Pytaj o kod, gdy aplikacja się otwiera albo wraca po dłuższej chwili';

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
  String get appLockUnlock => 'Wpisz swój kod';

  @override
  String get appLockWrong => 'Zły kod';

  @override
  String appLockWait(String seconds) {
    return 'Za dużo prób, poczekaj ${seconds}s';
  }

  @override
  String get appLockNew => 'Ustaw kod';

  @override
  String get appLockNewHint => '4 do 8 cyfr';

  @override
  String get appLockConfirm => 'Wpisz go jeszcze raz';

  @override
  String get appLockMismatch => 'Kody się nie zgadzają';

  @override
  String get appLockOn => 'Kod ustawiony';

  @override
  String get appLockRemoveTitle => 'Wpisz kod, żeby wyłączyć blokadę';

  @override
  String get installFailed => 'Instalacja nie powiodła się';

  @override
  String get updateFailed => 'Aktualizacja nie powiodła się';

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
  String get noSourceSettings => 'To źródło nie ma żadnych ustawień';

  @override
  String get addPluginRepository => 'Dodaj repozytorium wtyczek';

  @override
  String get pluginIndexUrlHint => 'URL indeksu wtyczek';

  @override
  String get addRepository => 'Dodaj repozytorium';

  @override
  String get pluginRepoUpdated => 'Zaktualizowano repozytorium wtyczek';

  @override
  String get pluginRepoUpdateFailed =>
      'Nie udało się odświeżyć repozytorium wtyczek';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Anuluj';

  @override
  String get yes => 'Tak';

  @override
  String get no => 'Nie';

  @override
  String get save => 'Zapisz';

  @override
  String get reset => 'Resetuj';

  @override
  String get clear => 'Wyczyść';

  @override
  String get test => 'Testuj';

  @override
  String get testing => 'Testowanie…';

  @override
  String get resolving => 'Rozwiązywanie…';

  @override
  String get none => 'Brak';

  @override
  String get selectMediaService => 'Wybierz serwis medialny';

  @override
  String get pickColor => 'Wybierz kolor';

  @override
  String get colorPickerCustom => 'Własny';

  @override
  String get colorPickerTransparent => 'Przezroczysty';

  @override
  String get ltr => 'Od lewej do prawej';

  @override
  String get searchSettings => 'Szukaj w ustawieniach';

  @override
  String nothingMatches(String query) {
    return 'Nic nie pasuje do „$query”';
  }

  @override
  String searchCategory(String category) {
    return 'Szukaj: $category';
  }

  @override
  String get settingsAppearance => 'Wygląd';

  @override
  String get settingsAppearanceDesc => 'Motyw, kolory, tryb szkła';

  @override
  String get settingsGeneral => 'Ogólne';

  @override
  String get settingsGeneralDesc => 'Język i zachowanie';

  @override
  String get settingsNetwork => 'Sieć';

  @override
  String get settingsNetworkDesc => 'User agent, certyfikaty, DNS i proxy';

  @override
  String get settingsAccountDesc => 'Serwis śledzenia i logowanie';

  @override
  String get settingsUpdates => 'Aktualizacje';

  @override
  String get amoledBlack => 'Czerń AMOLED';

  @override
  String get amoledBlackDesc => 'Idealnie czarne tła w ciemnym trybie';

  @override
  String get glassMode => 'Tryb szkła';

  @override
  String get glassModeDesc =>
      'Matowe powierzchnie na okładkach z twojej biblioteki';

  @override
  String get shelfFrame => 'Ramka wokół sekcji';

  @override
  String get shelfFrameDesc =>
      'Pokaż kartę za każdą półką albo zostaw rzędy bezpośrednio na stronie';

  @override
  String get settingsExtensionsDesc =>
      'Menedżery źródeł, repozytoria i opcje rozszerzeń';

  @override
  String get settingsAddons => 'Dodatki';

  @override
  String get customPath => 'Własna ścieżka przechowywania';

  @override
  String get customPathDesc =>
      'Gdzie trzymane są dane aplikacji. Przytrzymaj, żeby zresetować';

  @override
  String get selectDirectory => 'Wybierz katalog';

  @override
  String get differentCacheManager => 'Alternatywna pamięć podręczna obrazów';

  @override
  String get differentCacheManagerDesc =>
      'Użyj innego menedżera pamięci podręcznej dla obrazów';

  @override
  String get backupAndRestore => 'Kopia zapasowa i przywracanie';

  @override
  String get backupAndRestoreDesc => 'Zapisz lub wczytaj swoje ustawienia';

  @override
  String get backup => 'Kopia zapasowa';

  @override
  String get restore => 'Przywróć';

  @override
  String get loadExtensionsIcon => 'Wczytuj ikony rozszerzeń';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Pokazuj ikony źródeł na listach rozszerzeń';

  @override
  String get sectionStorage => 'Pamięć';

  @override
  String get sectionManagers => 'Menedżery';

  @override
  String get sectionOptions => 'Opcje';

  @override
  String get backupTabBackup => 'Zrób kopię';

  @override
  String get backupTabRestore => 'Przywróć';

  @override
  String backupSummary(Object keys, Object categories) {
    return 'Ustawienia: $keys w kategoriach: $categories';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Ostatnia kopia: $time';
  }

  @override
  String get backupNever => 'Brak kopii zapasowej';

  @override
  String get backupSelectAll => 'Zaznacz wszystko';

  @override
  String get backupClearAll => 'Wyczyść';

  @override
  String backupKeys(Object count) {
    return 'Ustawienia: $count';
  }

  @override
  String get backupPassword => 'Hasło (opcjonalnie)';

  @override
  String get backupPasswordHint => 'Zostaw puste, żeby użyć domyślnego';

  @override
  String get backupSensitive =>
      'Zawiera tokeny logowania. Trzymaj ten plik w tajemnicy';

  @override
  String get backupCreate => 'Utwórz kopię zapasową';

  @override
  String backupSaved(Object name) {
    return 'Kopia zapisana jako $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Kopia nie powiodła się: $error';
  }

  @override
  String get backupPickFile => 'Wybierz plik kopii zapasowej';

  @override
  String get backupPickFileDesc =>
      'Wybierz plik .json utworzony przez Dartotsu';

  @override
  String get backupChooseAnother => 'Wybierz inny plik';

  @override
  String get backupCreatedAt => 'Utworzono';

  @override
  String get backupAppVersion => 'Wersja aplikacji';

  @override
  String get backupDevice => 'Urządzenie';

  @override
  String get backupAccounts => 'Konta';

  @override
  String get backupSize => 'Rozmiar';

  @override
  String get backupEncrypted => 'Chronione hasłem';

  @override
  String get backupUnlock => 'Odblokuj';

  @override
  String get backupWrongPassword =>
      'Nie udało się odczytać tego pliku. Sprawdź hasło';

  @override
  String get backupRestoreSelected => 'Przywróć zaznaczone';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Przywrócić ustawienia: $count? Istniejące wartości w tych kategoriach zostaną nadpisane.';
  }

  @override
  String get backupRestored =>
      'Przywrócono. Uruchom aplikację ponownie, żeby wszystko zadziałało';

  @override
  String backupRestoreFailed(Object error) {
    return 'Przywracanie nie powiodło się: $error';
  }

  @override
  String get backupSelectOne => 'Wybierz co najmniej jedną kategorię';

  @override
  String get backupCatTheme => 'Wygląd';

  @override
  String get backupCatThemeDesc => 'Motyw, kolory, szkło, czcionki i styl kart';

  @override
  String get backupCatCommon => 'Ogólne';

  @override
  String get backupCatCommonDesc => 'Język, pamięć, sieć i opcje rozszerzeń';

  @override
  String get backupCatPlayer => 'Odtwarzacz';

  @override
  String get backupCatPlayerDesc => 'Ustawienia odtwarzacza';

  @override
  String get backupCatReader => 'Czytnik';

  @override
  String get backupCatReaderDesc => 'Ustawienia czytnika';

  @override
  String get backupCatProtected => 'Konta';

  @override
  String get backupCatProtectedDesc => 'Tokeny logowania i dane logowania';

  @override
  String get backupCatOther => 'Serwisy i kanały';

  @override
  String get backupCatOtherDesc => 'Układy kanałów, listy i opcje serwisów';

  @override
  String get logFile => 'Plik logów';

  @override
  String get logFileDesc =>
      'Udostępnij log aplikacji albo skopiuj jego ścieżkę na Linuksie';

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
  String get logFileCopied => 'Skopiowano ścieżkę logów';

  @override
  String get donateSheetTitle => 'Podoba ci się Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu tworzy i utrzymuje jedna osoba. Jeśli ci się przydaje, rozważ wsparcie rozwoju.';

  @override
  String get donateLater => 'Może później';

  @override
  String get glassBackground => 'Tło ze szkła';

  @override
  String get glassBackgroundDesc =>
      'Baner twojego profilu, chyba że ustawisz link do obrazu';

  @override
  String get glassBackgroundHint =>
      'Link do obrazu (zostaw puste dla swojego banera)';

  @override
  String get followCover => 'Podążaj za okładką';

  @override
  String get followCoverDesc =>
      'Kolory podążają za tłem, a na stronach szczegółów za okładką';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Styl kart';

  @override
  String get cardStyleDesc => 'Położenie tytułu, rozmiar, postęp i odznaki';

  @override
  String get customFont => 'Czcionka';

  @override
  String get customFontDesc => 'Domyślna, plik z urządzenia albo Google Fonts';

  @override
  String get customFontError => 'Nie udało się wczytać pliku czcionki';

  @override
  String get googleFontError => 'Nie udało się pobrać tej czcionki';

  @override
  String get yourFonts => 'Twoje czcionki';

  @override
  String get addFontFile => 'Dodaj plik czcionki…';

  @override
  String get browseGoogleFonts => 'Przeglądaj Google Fonts…';

  @override
  String get searchGoogleFonts => 'Szukaj w Google Fonts';

  @override
  String get defaultFont => 'Domyślna';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Dynamiczny kolor z systemu';

  @override
  String get jsonTheme => 'Własny plik motywu';

  @override
  String get jsonThemeDesc =>
      'Kolory na żywo z ~/.config/dartotsu/theme.json (własny skrypt albo ręczne zmiany)';

  @override
  String get themeMode => 'Tryb motywu';

  @override
  String get mode => 'Tryb';

  @override
  String get trackingService => 'Serwis śledzenia';

  @override
  String get signOut => 'Wyloguj się';

  @override
  String get signIn => 'Zaloguj się';

  @override
  String get notSignedIn => 'Niezalogowano';

  @override
  String signOutOf(String service) {
    return 'Wylogować się z $service?';
  }

  @override
  String get checkForUpdates => 'Sprawdź aktualizacje';

  @override
  String get checkForUpdatesDesc => 'Powiadamiaj o nowym wydaniu na GitHubie';

  @override
  String get updateChannel => 'Kanał aktualizacji';

  @override
  String get channel => 'Kanał';

  @override
  String get stable => 'Stabilny';

  @override
  String get preRelease => 'Wersja wstępna';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Sprawdź teraz';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Domyślny';

  @override
  String currentlyUsing(String value) {
    return 'Obecnie: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Domyślny (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Typ';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Port';

  @override
  String get proxyUsername => 'Nazwa użytkownika';

  @override
  String get proxyPassword => 'Hasło';

  @override
  String get optional => 'Opcjonalnie';

  @override
  String get clearCookies => 'Wyczyść ciasteczka';

  @override
  String get clearCookiesDesc => 'Usuń wszystkie zapisane ciasteczka';

  @override
  String notImplementedArea(String area) {
    return '$area — wkrótce';
  }

  @override
  String notImplementedService(String service) {
    return '$service jeszcze tego nie obsługuje.';
  }

  @override
  String get couldNotLoadResults => 'Nie udało się wczytać wyników';

  @override
  String get updateCheckFailed => 'Nie udało się sprawdzić aktualizacji';

  @override
  String get highRefreshRate => 'Wysoka częstotliwość odświeżania';

  @override
  String get highRefreshRateDesc =>
      'Używaj najwyższej częstotliwości odświeżania, jaką obsługuje twój ekran';

  @override
  String get imageSave => 'Zapisz obraz';

  @override
  String imageSavedTo(String path) {
    return 'Zapisano w $path';
  }

  @override
  String get imageActionFailed => 'Nie udało się pobrać obrazu';

  @override
  String get imageTitleCover => 'Okładka';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Baner';

  @override
  String get imageTitleAvatar => 'Zdjęcie profilowe';

  @override
  String get verifyTls => 'Weryfikuj certyfikaty';

  @override
  String get verifyTlsDesc =>
      'Odrzucaj serwery z nieprawidłowymi certyfikatami HTTPS. Wyłącz tylko dla źródła z certyfikatem własnym';

  @override
  String get clearCookiesConfirm =>
      'Usunąć wszystkie zapisane ciasteczka? Możesz zostać wylogowany z niektórych źródeł.';

  @override
  String get version => 'Wersja';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Kod źródłowy, zgłoszenia i wydania';

  @override
  String get discordDesc => 'Społeczność i wsparcie';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Wesprzyj rozwój';

  @override
  String get contributors => 'Współtwórcy';

  @override
  String get contributorsDesc => 'Ludzie, którzy zbudowali Dartotsu';

  @override
  String get contributorsLoadFailed => 'Nie udało się wczytać współtwórców';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projekty zbudowane na bazie Dartotsu';

  @override
  String get forksEmpty => 'Nie znaleziono forków';

  @override
  String get sectionColors => 'Kolory';

  @override
  String get sectionDisplay => 'Wyświetlanie';

  @override
  String get sectionStyle => 'Styl';

  @override
  String get sectionCommunity => 'Społeczność';

  @override
  String get sectionAppInfo => 'Informacje o aplikacji';

  @override
  String get sectionRequests => 'Żądania';

  @override
  String get sectionDnsProxy => 'DNS i proxy';

  @override
  String get onboardingBack => 'Wstecz';

  @override
  String get onboardingNext => 'Dalej';

  @override
  String get onboardingSkip => 'Pomiń';

  @override
  String get onboardingPaletteTitle => 'Dopasuj do siebie';

  @override
  String get onboardingPaletteBody =>
      'Wybierz paletę. Wszystkie akcenty, od kart po odtwarzacz, dopasują się do niej.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Jasny';

  @override
  String get themeModeDark => 'Ciemny';

  @override
  String get onboardingSyncTitle => 'Zsynchronizuj bibliotekę';

  @override
  String get onboardingSyncBody =>
      'Zaloguj się przez AniList, żeby mieć przy sobie listy, postępy i oceny. Albo pomiń i przeglądaj jako gość.';

  @override
  String get onboardingOpenLinks =>
      'Otwieraj linki AniList i repozytoriów w Dartotsu';

  @override
  String get onboardingPermsTitle => 'Uprawnienia';

  @override
  String get onboardingPermsBody =>
      'Zezwól na to teraz, żeby pobieranie, aktualizacje i powiadomienia działały bez przerw. Możesz to zmienić później w ustawieniach systemu.';

  @override
  String get permNotifications => 'Powiadomienia';

  @override
  String get permNotificationsDesc =>
      'Postęp pobierania, nowe odcinki i odpowiedzi';

  @override
  String get permStorage => 'Dostęp do wszystkich plików';

  @override
  String get permStorageDesc =>
      'Zapisuj pobrane pliki w publicznym folderze Dartotsu';

  @override
  String get permInstall => 'Instalowanie aktualizacji';

  @override
  String get permInstallDesc =>
      'Pozwól Dartotsu instalować własne aktualizacje';

  @override
  String get permBattery => 'Bez ograniczeń baterii';

  @override
  String get permBatteryDesc => 'Utrzymuj długie pobieranie w tle';

  @override
  String get permGrant => 'Zezwól';

  @override
  String get linkOpenInApp => 'Otwieraj linki w Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Pozwól, żeby linki AniList i repozytoriów otwierały aplikację';

  @override
  String get reviewsTitle => 'Recenzje';

  @override
  String get reviewsEmpty => 'Brak recenzji';

  @override
  String get reviewsFailed => 'Nie udało się wczytać recenzji';

  @override
  String get reviewHelpfulQuestion => 'Czy ta recenzja była pomocna?';

  @override
  String get reviewVoteFailed => 'Nie udało się zapisać twojego głosu';

  @override
  String reviewHelpful(int n, int total) {
    return '$n z $total uznało to za pomocne';
  }

  @override
  String get calendarTitle => 'Harmonogram emisji';

  @override
  String get calendarToday => 'Dziś';

  @override
  String get calendarEmpty => 'Tego dnia nic się nie emituje';

  @override
  String get calendarFailed => 'Nie udało się wczytać harmonogramu';

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
    return 'Odcinek $n';
  }

  @override
  String get shareAnalytics => 'Udostępniaj anonimowe dane użycia';

  @override
  String get shareAnalyticsDesc =>
      'Anonimowe liczby użytkowników i raporty o awariach. Bez konta i danych osobowych';

  @override
  String get linkOpenAnilist => 'Otwieraj linki AniList w Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Włącz obsługę linków, żeby linki anilist.co otwierały aplikację';

  @override
  String get linkSettingsFailed => 'Nie udało się otworzyć ustawień systemu';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Pokazuj na profilu Discord, co robisz. Wymaga twojego tokena Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Pokazuj na profilu Discord, co robisz. Wymaga uruchomionej aplikacji Discord na komputerze.';

  @override
  String get discordBrowsing => 'Pokazuj aktywność przeglądania';

  @override
  String get discordBrowsingDesc =>
      'Pokazuj też kartę, stronę lub profil, na które patrzysz, a nie tylko to, co oglądasz lub czytasz.';

  @override
  String get discordLookHeader => 'Wygląd statusu';

  @override
  String get discordActivityType => 'Typ aktywności';

  @override
  String get discordActivityTypeDesc =>
      'Jak Discord to ujmuje: „Ogląda …” lub „Gra w …”. Auto używa „Ogląda” dla anime i „Gra w” dla reszty.';

  @override
  String get discordWatching => 'Oglądanie';

  @override
  String get discordPlaying => 'Granie';

  @override
  String get discordCovers => 'Pokazuj okładki';

  @override
  String get discordCoversDesc => 'Okładka i ikona Dartotsu na karcie.';

  @override
  String get discordTimer => 'Pokazuj licznik czasu';

  @override
  String get discordTimerDesc =>
      'Czas, który upłynął, albo pozostały pod tytułem.';

  @override
  String get discordButtons => 'Pokazuj przyciski';

  @override
  String get discordButtonsDesc =>
      'Przyciski „Zobacz anime / mangę” i „Otwórz Dartotsu”.';

  @override
  String get discordHideTitles => 'Ukryj tytuły';

  @override
  String get discordHideTitlesDesc =>
      'Zastąp nazwy anime i mang (oraz ich okładkę i link) tekstem „Coś prywatnego”.';

  @override
  String get discordConnectionHeader => 'Połączenie';

  @override
  String get listSearchHint => 'Szukaj na tej liście';

  @override
  String get listSort => 'Sortuj';

  @override
  String get listFilter => 'Filtruj';

  @override
  String get listRandom => 'Losowy tytuł';

  @override
  String get listReverse => 'Odwróć kolejność';

  @override
  String get listSortDefault => 'Kolejność listy';

  @override
  String get listSortScore => 'Twoja ocena';

  @override
  String get listSortTitle => 'Tytuł';

  @override
  String get listSortUpdated => 'Ostatnio zaktualizowane';

  @override
  String get listSortProgress => 'Postęp';

  @override
  String get listSortReleased => 'Data premiery';

  @override
  String get listSortAverage => 'Średnia ocena';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Gatunki';

  @override
  String get listFilterClear => 'Wyczyść filtry';

  @override
  String get listNoMatches => 'Nic na tej liście nie pasuje';

  @override
  String get discordLogin => 'Zaloguj się do Discorda';

  @override
  String get discordToken => 'Token Discorda';

  @override
  String get discordTokenSaved =>
      'Zapisano. Stuknij, żeby zastąpić, przytrzymaj, żeby usunąć.';

  @override
  String get discordTokenNotSet => 'Nie ustawiono. Stuknij, żeby dodać.';

  @override
  String get discordTokenSavedSnack => 'Zapisano token Discorda';

  @override
  String get discordTokenRemovedSnack => 'Usunięto token Discorda';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Włączone · stuknij, żeby zmienić wygląd';

  @override
  String get discordRichPresenceRowOff =>
      'Pokazuj na profilu Discord, co robisz';

  @override
  String get loginCancelled => 'Logowanie anulowane';

  @override
  String get invalidToken => 'Nieprawidłowy token';

  @override
  String loginFailed(String error) {
    return 'Logowanie nie powiodło się: $error';
  }

  @override
  String get malLoginFailed => 'Logowanie do MyAnimeList nie powiodło się';

  @override
  String get kitsuLoginFailed =>
      'Logowanie do Kitsu nie powiodło się. Sprawdź e-mail i hasło.';

  @override
  String get kitsuLoginTitle => 'Zaloguj się do Kitsu';

  @override
  String get emailOrUsername => 'E-mail lub nazwa użytkownika';

  @override
  String get password => 'Hasło';

  @override
  String get kitsuProfile => 'Profil Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Logowanie do MangaBaka nie powiodło się';

  @override
  String get mangaBakaProfile => 'Profil MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Odśwież z MangaBaka';

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
  String get artistsLabel => 'Artyści';

  @override
  String get authorsLabel => 'Autorzy';

  @override
  String get publishersLabel => 'Wydawcy';

  @override
  String get licensedLabel => 'Licencjonowane';

  @override
  String get contentRatingLabel => 'Ocena wiekowa';

  @override
  String get yesLabel => 'Tak';

  @override
  String get noLabel => 'Nie';

  @override
  String get ratingSteps => 'Kroki oceny';

  @override
  String get hideNsfw => 'Ukryj NSFW';

  @override
  String get hideNsfwDesc =>
      'Trzymaj tytuły dla dorosłych z dala od kanałów i wyszukiwania, a swoje wpisy dla dorosłych pokaż w Ukrytych mediach.';

  @override
  String get kitsuAccountOptions => 'Opcje konta Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Opcje konta MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Nie udało się zaktualizować ustawień Kitsu';

  @override
  String get titleCanonical => 'Kanoniczne';

  @override
  String get titleRomanized => 'Zromanizowane';

  @override
  String get titleLocalized => 'Zlokalizowane';

  @override
  String get ratingSystem => 'System ocen';

  @override
  String get ratingSimple => 'Prosty (3 buźki)';

  @override
  String get ratingRegular => 'Zwykły (5 gwiazdek)';

  @override
  String get ratingAdvanced => 'Zaawansowany (10 punktów)';

  @override
  String get contentFilter => 'Filtr treści';

  @override
  String get contentSfw => 'Tylko bezpieczne w pracy';

  @override
  String get contentSometimes => 'Treści dla dorosłych w wyszukiwaniu';

  @override
  String get contentEverywhere => 'Treści dla dorosłych wszędzie';

  @override
  String get shareToGlobal => 'Udostępniaj w globalnym kanale';

  @override
  String get shareToGlobalDesc =>
      'Pozwól, żeby twoja aktywność pojawiała się w globalnym kanale Kitsu.';

  @override
  String get memberSince => 'Członek od';

  @override
  String get location => 'Lokalizacja';

  @override
  String get accountType => 'Typ konta';

  @override
  String get accountSupporter => 'Wspierający';

  @override
  String get accountFree => 'Darmowe';

  @override
  String get accountDetails => 'Szczegóły konta';

  @override
  String get refreshFromKitsu => 'Odśwież z Kitsu';

  @override
  String get simklReadOnly => 'Simkl przyznał dostęp tylko do odczytu';

  @override
  String get incognitoEditsBlocked => 'Incognito: edycje list są zablokowane';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'Incognito: postęp nie został zapisany';

  @override
  String progressSet(int progress) {
    return 'Ustawiono postęp na $progress';
  }

  @override
  String removedFromList(String title) {
    return 'Usunięto $title z twojej listy';
  }

  @override
  String get following => 'Obserwowani';

  @override
  String get homeSections => 'Sekcje strony głównej';

  @override
  String get homeSectionsHint =>
      'Przeciągnij, żeby zmienić kolejność. Ukryte sekcje nigdy nie są pobierane.';

  @override
  String get customListDeleteFailed => 'Nie udało się usunąć własnej listy';

  @override
  String get customListsSaveFailed => 'Nie udało się zapisać własnych list';

  @override
  String get customListsSaved => 'Zapisano własne listy';

  @override
  String get listName => 'Nazwa listy';

  @override
  String get addList => 'Dodaj listę';

  @override
  String voiceActorsIn(String name) {
    return 'Aktorzy głosowi · $name';
  }

  @override
  String get animeAppearances => 'Występy w anime';

  @override
  String get mangaAppearances => 'Występy w mangach';

  @override
  String get voicedCharacters => 'Podkładane postacie';

  @override
  String get animeCredits => 'Twórcy anime';

  @override
  String get mangaCredits => 'Twórcy mang';

  @override
  String get mainProductions => 'Główne produkcje';

  @override
  String get otherWorks => 'Inne prace';

  @override
  String get prequelSequel => 'Prequel i sequel';

  @override
  String get previousSeason => 'Poprzedni sezon';

  @override
  String get thisSeason => 'Ten sezon';

  @override
  String get nextSeason => 'Następny sezon';

  @override
  String get voiceRoles => 'Role głosowe';

  @override
  String get staffPositions => 'Stanowiska w ekipie';

  @override
  String get mangaWorks => 'Prace w mangach';

  @override
  String get malProfile => 'Profil MyAnimeList';

  @override
  String get refreshFromMal => 'Odśwież z MyAnimeList';

  @override
  String get repullProfileCounts => 'Pobierz ponownie profil i liczniki';

  @override
  String get refreshed => 'Odświeżono';

  @override
  String get simklProfile => 'Profil Simkl';

  @override
  String get refreshFromSimkl => 'Odśwież z Simkl';

  @override
  String get repullProfileLibrary => 'Pobierz ponownie profil i bibliotekę';

  @override
  String get simklSignInToSearch => 'Zaloguj się do Simkl, żeby szukać';

  @override
  String get dropRate => 'Odsetek porzuceń';

  @override
  String get simklAttribution =>
      'Dane i grafiki dostarcza Simkl. Zobacz w Simkl';

  @override
  String get onHold => 'Wstrzymane';

  @override
  String get scoredBy => 'Oceniło';

  @override
  String get planToWatch => 'Planuję oglądać';

  @override
  String get planToRead => 'Planuję czytać';

  @override
  String get timesRewatched => 'Razy obejrzane ponownie';

  @override
  String get timesReread => 'Razy przeczytane ponownie';

  @override
  String get comments => 'Komentarze';

  @override
  String get moviesAndSeries => 'Filmy i seriale';

  @override
  String get trackingOnly => 'Tylko śledzenie';

  @override
  String get signedIn => 'Zalogowano';

  @override
  String get searchLanguage => 'Język wyszukiwania';

  @override
  String get savedToList => 'Zapisano na twojej liście';

  @override
  String get removedFromYourList => 'Usunięto z twojej listy';

  @override
  String get retry => 'Ponów';

  @override
  String get synopsis => 'Opis';

  @override
  String get details => 'Szczegóły';

  @override
  String get addToList => 'Dodaj do listy';

  @override
  String get trailer => 'Zwiastun';

  @override
  String get titleCopied => 'Skopiowano tytuł';

  @override
  String get linkCopied => 'Skopiowano link';

  @override
  String get watchTrailer => 'Obejrzyj zwiastun';

  @override
  String get copyTitle => 'Kopiuj tytuł';

  @override
  String get copyLink => 'Kopiuj link';

  @override
  String get openInBrowser => 'Otwórz w przeglądarce';

  @override
  String viewOnSource(String source) {
    return 'Zobacz w $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Odcinek $ep wychodzi za $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Następny odcinek za $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Rozdział $chapter pojawi się za około $time';
  }

  @override
  String get logPathCopied => 'Skopiowano ścieżkę pliku logów do schowka';

  @override
  String get animeSource => 'Źródło anime';

  @override
  String get mangaSource => 'Źródło mang';

  @override
  String get popular => 'Popularne';

  @override
  String get latest => 'Najnowsze';

  @override
  String get saved => 'Zapisane';

  @override
  String get nothingMatched => 'Nic nie pasuje';

  @override
  String get nothingSavedFromSource => 'Nic jeszcze nie zapisano z tego źródła';

  @override
  String get sourceReturnedNothing => 'To źródło nic nie zwróciło';

  @override
  String get checkConnectionOrSource =>
      'Sprawdź połączenie albo spróbuj innego źródła.';

  @override
  String get tryDifferentSearch => 'Spróbuj innej frazy.';

  @override
  String get savedTitlesAppearHere =>
      'Tytuły dodane do listy pojawią się tutaj.';

  @override
  String get tryOtherFeed => 'Spróbuj innego kanału albo użyj wyszukiwania.';

  @override
  String searchSource(String source) {
    return 'Szukaj w: $source';
  }

  @override
  String get animeExtensions => 'Rozszerzenia anime';

  @override
  String get mangaExtensions => 'Rozszerzenia mang';

  @override
  String get nothingHereYet => 'Na razie nic tu nie ma';

  @override
  String get savedOnDeviceUntilLogin =>
      'Wszystko poniżej jest zapisane na tym urządzeniu, dopóki tego nie zrobisz.';

  @override
  String get yourProfile => 'Twój profil';

  @override
  String get activity => 'Aktywność';

  @override
  String get extensions => 'Rozszerzenia';

  @override
  String get logOut => 'Wyloguj się';

  @override
  String get logIn => 'Zaloguj się';

  @override
  String get logOutConfirm => 'Na pewno chcesz się wylogować?';

  @override
  String get incognitoMode => 'Tryb incognito';

  @override
  String get alsoBlockListEdits => 'Blokuj też edycje list';

  @override
  String get offlineMode => 'Tryb offline';

  @override
  String get switchService => 'Zmień serwis';

  @override
  String logOutOf(String name) {
    return 'Wyloguj się z $name';
  }

  @override
  String get loggedIn => 'Zalogowano';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get nothingNew => 'Nic nowego';

  @override
  String get thisWeek => 'W tym tygodniu';

  @override
  String get listOnly => 'Tylko lista';

  @override
  String get filter => 'Filtr';

  @override
  String get searchResults => 'Wyniki wyszukiwania';

  @override
  String get recentSearches => 'Ostatnie wyszukiwania';

  @override
  String get searchOrSetFilter => 'Szukaj albo ustaw filtr';

  @override
  String get filters => 'Filtry';

  @override
  String get showLess => 'Pokaż mniej';

  @override
  String get showAll => 'Pokaż wszystko';

  @override
  String get apply => 'Zastosuj';

  @override
  String get preview => 'Podgląd';

  @override
  String get preset => 'Preset';

  @override
  String get cardNormal => 'Normalny';

  @override
  String get cardOnCard => 'Na karcie';

  @override
  String get cardInCard => 'W karcie';

  @override
  String get size => 'Rozmiar';

  @override
  String get cardWidth => 'Szerokość karty';

  @override
  String get compact => 'Kompaktowy';

  @override
  String get coverAndTitleOnly => 'Tylko okładka i tytuł';

  @override
  String get titleLines => 'Linie tytułu';

  @override
  String get shape => 'Kształt';

  @override
  String get posterShape => 'Kształt plakatu';

  @override
  String get cornerRadius => 'Zaokrąglenie rogów';

  @override
  String get off => 'Wyłączone';

  @override
  String get topLeft => 'Lewy górny';

  @override
  String get topRight => 'Prawy górny';

  @override
  String get bottomLeft => 'Lewy dolny';

  @override
  String get bottomRight => 'Prawy dolny';

  @override
  String get overlays => 'Nakładki';

  @override
  String get progressCount => 'Postęp / liczba';

  @override
  String get pill => 'Pigułka';

  @override
  String get bar => 'Pasek';

  @override
  String get outside => 'Na zewnątrz';

  @override
  String get scoreBadge => 'Odznaka oceny';

  @override
  String get airingDot => 'Kropka emisji';

  @override
  String get updateAvailable => 'Dostępna aktualizacja';

  @override
  String get notInstalled => 'Niezainstalowane';

  @override
  String get done => 'Gotowe';

  @override
  String get searchOrEnterUrl => 'Szukaj lub wpisz URL';

  @override
  String get refresh => 'Odśwież';

  @override
  String get share => 'Udostępnij';

  @override
  String get characters => 'Postacie';

  @override
  String get staff => 'Ekipa';

  @override
  String get readMore => 'Czytaj dalej';

  @override
  String get couldNotLoadList => 'Nie udało się wczytać listy';

  @override
  String get logInToFavourite => 'Zaloguj się, żeby dodawać ulubione';

  @override
  String get alsoKnownAs => 'Znane też jako';

  @override
  String get hideSpoilerNames => 'Ukryj nazwy ze spoilerami';

  @override
  String get showSpoilerNames => 'Pokaż nazwy ze spoilerami';

  @override
  String get favourited => 'Dodano do ulubionych';

  @override
  String get favourite => 'Ulubione';

  @override
  String get couldNotOpenTitle => 'Nie udało się otworzyć tego tytułu';

  @override
  String get nobodyHereYet => 'Jeszcze nikogo tu nie ma';

  @override
  String get noMatches => 'Brak wyników';

  @override
  String get gridView => 'Widok siatki';

  @override
  String get fullWidth => 'Pełna szerokość';

  @override
  String get userNotFound => 'Nie znaleziono użytkownika';

  @override
  String get couldNotUpdateFollow => 'Nie udało się zaktualizować obserwowania';

  @override
  String followedUser(String name) {
    return 'Obserwujesz $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Przestano obserwować $name';
  }

  @override
  String get messages => 'Wiadomości';

  @override
  String get logInToSeeMessages =>
      'Zaloguj się, żeby zobaczyć swoje wiadomości';

  @override
  String get editActivity => 'Edytuj aktywność';

  @override
  String get newActivity => 'Nowa aktywność';

  @override
  String get editMessage => 'Edytuj wiadomość';

  @override
  String get writeMessage => 'Napisz wiadomość';

  @override
  String get editReply => 'Edytuj odpowiedź';

  @override
  String get posted => 'Opublikowano';

  @override
  String get couldNotPost => 'Nie udało się opublikować';

  @override
  String get nothingToPreview => 'Nie ma czego podejrzeć';

  @override
  String get writeSomethingHint => 'Napisz coś… markdown AniList działa tutaj';

  @override
  String get privateMessage => 'Prywatna wiadomość';

  @override
  String get post => 'Opublikuj';

  @override
  String get nothingHere => 'Nic tu nie ma';

  @override
  String get noAnimeProgress => 'Brak postępu w anime';

  @override
  String get noMangaProgress => 'Brak postępu w mangach';

  @override
  String get noMessages => 'Brak wiadomości';

  @override
  String get writeMessageHint => 'Napisz wiadomość…';

  @override
  String get shareSomethingHint => 'Podziel się czymś…';

  @override
  String get all => 'Wszystko';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Liczba';

  @override
  String get hoursWatched => 'Godzin obejrzanych';

  @override
  String get chaptersRead => 'Rozdziałów przeczytanych';

  @override
  String get meanScore => 'Średnia ocena';

  @override
  String get noStatsYet => 'Brak statystyk';

  @override
  String get totalEntries => 'Wszystkich wpisów';

  @override
  String get episodesWatched => 'Obejrzanych odcinków';

  @override
  String get daysWatched => 'Dni oglądania';

  @override
  String get volumesRead => 'Przeczytanych tomów';

  @override
  String get standardDeviation => 'Odchylenie standardowe';

  @override
  String get showMore => 'Pokaż więcej';

  @override
  String get followsYou => 'Obserwuje cię';

  @override
  String get nobodyYet => 'Jeszcze nikogo';

  @override
  String get logInToLike => 'Zaloguj się, żeby polubić';

  @override
  String get failedToLikeActivity => 'Nie udało się polubić aktywności';

  @override
  String get deleteActivityConfirm => 'Usunąć aktywność?';

  @override
  String get deletedActivity => 'Usunięto aktywność';

  @override
  String get failedToDeleteActivity => 'Nie udało się usunąć aktywności';

  @override
  String get subscribed => 'Subskrybujesz';

  @override
  String get unsubscribed => 'Anulowano subskrypcję';

  @override
  String get failedToUpdateSubscription =>
      'Nie udało się zaktualizować subskrypcji';

  @override
  String get edit => 'Edytuj';

  @override
  String get delete => 'Usuń';

  @override
  String get likedBy => 'Polubili';

  @override
  String get follow => 'Obserwuj';

  @override
  String get nameCopied => 'Skopiowano nazwę';

  @override
  String get followsEachOther => 'Obserwujecie się nawzajem';

  @override
  String get unfollow => 'Przestań obserwować';

  @override
  String get userIdCopied => 'Skopiowano ID użytkownika';

  @override
  String get shareProfile => 'Udostępnij profil';

  @override
  String get copyUserId => 'Kopiuj ID użytkownika';

  @override
  String get failedToDelete => 'Nie udało się usunąć';

  @override
  String get failedToLike => 'Nie udało się polubić';

  @override
  String get replies => 'Odpowiedzi';

  @override
  String get reply => 'Odpowiedz';

  @override
  String get noRepliesYet => 'Brak odpowiedzi';

  @override
  String get favouriteAnime => 'Ulubione anime';

  @override
  String get favouriteManga => 'Ulubione mangi';

  @override
  String get favouriteCharacters => 'Ulubione postacie';

  @override
  String get favouriteStaff => 'Ulubiona ekipa';

  @override
  String get favouriteStudios => 'Ulubione studia';

  @override
  String get noFavouritesYet => 'Brak ulubionych';

  @override
  String get yourStory => 'Twoja relacja';

  @override
  String get copiedToClipboard => 'Skopiowano do schowka';

  @override
  String get justNow => 'Przed chwilą';

  @override
  String get openImage => 'Otwórz obraz';

  @override
  String get hideSpoiler => 'Ukryj spoiler';

  @override
  String get showSpoiler => 'Pokaż spoiler';

  @override
  String get status => 'Status';

  @override
  String get score => 'Ocena';

  @override
  String get started => 'Rozpoczęto';

  @override
  String get completed => 'Ukończono';

  @override
  String get private => 'Prywatne';

  @override
  String get hideFromStatusLists => 'Ukryj na listach statusów';

  @override
  String get totalRepeats => 'Łącznie powtórek';

  @override
  String get other => 'Inne';

  @override
  String get customLists => 'Własne listy';

  @override
  String get activeDays => 'Aktywne dni';

  @override
  String get longestStreak => 'Najdłuższa seria';

  @override
  String get currentStreak => 'Obecna seria';

  @override
  String get tapOrHoverDay => 'Stuknij lub najedź na dzień';

  @override
  String get less => 'Mniej';

  @override
  String get more => 'Więcej';

  @override
  String epIn(int ep, String time) {
    return 'Odc. $ep za $time';
  }

  @override
  String get sectionLoading => 'Wczytywanie';

  @override
  String get querySize => 'Rozmiar zapytań';

  @override
  String get querySizeDesc =>
      'Jedno duże zapytanie ładuje wszystkie rzędy (i cały profil) jednym żądaniem. Podzielone zapytania wysyłają małe żądanie na rząd lub część profilu: każde jest szybkie, a części pojawiają się, gdy tylko dotrą.';

  @override
  String get oneBig => 'Jedno duże';

  @override
  String get split => 'Podzielone';

  @override
  String get sectionSocial => 'Społeczność';

  @override
  String get systemNotifications => 'Powiadomienia systemowe';

  @override
  String get feedLayout => 'Układ kanału';

  @override
  String sectionsShown(int shown, int total) {
    return 'Pokazano $shown z $total — stuknij, żeby wybrać i zmienić kolejność';
  }

  @override
  String labelSections(String label) {
    return 'Sekcje: $label';
  }

  @override
  String get accountOptions => 'Opcje konta';

  @override
  String get anilistAccountOptions => 'Opcje konta AniList';

  @override
  String get sectionPrivacy => 'Prywatność';

  @override
  String get hidePrivateEntries => 'Ukryj prywatne wpisy';

  @override
  String get hidePrivateEntriesDesc =>
      'Trzymaj wpisy oznaczone na AniList jako prywatne z dala od kanału';

  @override
  String get anilistExcludeList => 'Ukryj moją listę';

  @override
  String get anilistExcludeListDesc =>
      'Nie pokazuj na stronach anime i mangi tytułów, które masz już na AniList';

  @override
  String get anilistProfile => 'Profil AniList';

  @override
  String get refreshFromAnilist => 'Odśwież z AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Nie udało się zaktualizować ustawień AniList';

  @override
  String get sectionNames => 'Nazwy';

  @override
  String get titleLanguage => 'Język tytułów';

  @override
  String get titleLanguageDesc =>
      'Jak tytuły są zapisywane wszędzie, np. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Nazwy ekipy i postaci';

  @override
  String get sectionLists => 'Listy';

  @override
  String get scoreFormat => 'Format ocen';

  @override
  String get sortListsBy => 'Sortuj listy według';

  @override
  String labelCustomLists(String label) {
    return 'Własne listy: $label';
  }

  @override
  String customListsCount(int count) {
    return 'Listy: $count — stuknij, żeby dodać lub usunąć';
  }

  @override
  String get mergeActivities => 'Łącz aktywności';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Strefa czasowa';

  @override
  String get notSet => 'Nie ustawiono';

  @override
  String get airingNotifications => 'Powiadomienia o emisji';

  @override
  String get airingNotificationsDesc =>
      'Dostawaj powiadomienie, gdy wyjdzie odcinek obserwowanego tytułu';

  @override
  String get displayAdultContent => 'Pokazuj treści dla dorosłych';

  @override
  String get displayAdultContentDesc =>
      'Uwzględniaj tytuły 18+ w przeglądaniu, wyszukiwaniu i kanałach';

  @override
  String get restrictMessages => 'Ogranicz wiadomości do obserwowanych';

  @override
  String get restrictMessagesDesc =>
      'Tylko osoby, które obserwujesz, mogą do ciebie pisać';

  @override
  String get sectionServices => 'Serwisy';

  @override
  String get novel => 'Powieść';

  @override
  String labelService(String label) {
    return 'Serwis: $label';
  }

  @override
  String nameSettings(String name) {
    return 'Ustawienia: $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Opcje z mostka rozszerzeń $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name nie mógł się uruchomić: $error';
  }

  @override
  String get importLists => 'Importuj listy';

  @override
  String get importListsDesc =>
      'Z kopii zapasowych Aniyomi, Mihon / Tachiyomi lub Kotatsu';

  @override
  String get exportLists => 'Eksportuj listy';

  @override
  String get exportListsDesc => 'Do kopii zapasowej Aniyomi, Mihon lub Kotatsu';

  @override
  String get sectionBrowse => 'Przeglądaj';

  @override
  String get readingTab => 'Karta czytania';

  @override
  String get readingTabDesc => 'Jakie rozszerzenia pokazuje trzecia karta';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Domyślny kanał';

  @override
  String get defaultFeedDesc => 'Którą listą otwiera się źródło';

  @override
  String noServiceSupports(String type) {
    return 'Żaden serwis nie obsługuje: $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · wczytywanie źródeł: $loaded z $installed';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Żaden serwis rozszerzeń nie obsługuje tu: $type.';
  }

  @override
  String get loadDataFrom => 'Wczytaj dane z';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Brak zainstalowanych źródeł: $type.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Rozszerzenie dla $name nie jest zainstalowane';
  }

  @override
  String get thisSource => 'to źródło';

  @override
  String failedToAddRepository(String error) {
    return 'Nie udało się dodać repozytorium: $error';
  }

  @override
  String installedType(String type) {
    return 'Zainstalowane: $type';
  }

  @override
  String availableType(String type) {
    return 'Dostępne: $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Brak zainstalowanych rozszerzeń: $type';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Brak dostępnych rozszerzeń: $type';
  }

  @override
  String get nothingToShowYet => 'Na razie nie ma czego pokazać';

  @override
  String get addTitlesHint => 'Dodaj tytuły do listy, a pojawią się tutaj.';

  @override
  String get couldntLoad => 'Nie udało się wczytać';

  @override
  String get progressStyleHint =>
      'Pigułka i pasek nakładają się na plakat; „Na zewnątrz” pokazuje tę samą liczbę jako zwykły tekst — wybierz jedno.';

  @override
  String get nixManagedUpdate =>
      'Ta wersja jest zarządzana przez Nix — zamiast aktualizować stąd, uruchom „nix flake update” na swoim flake i zbuduj ponownie';

  @override
  String autoUpdateFailed(String error) {
    return 'Automatyczna aktualizacja nie powiodła się ($error) — otwieram stronę pobierania';
  }

  @override
  String get unknownPreference => 'Nieznane ustawienie';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Nieobsługiwany typ ustawienia: $type';
  }

  @override
  String get notYetReleased => 'Jeszcze niewydane';

  @override
  String get notStarted => 'Jeszcze nierozpoczęte';

  @override
  String get country => 'Kraj';

  @override
  String get sort => 'Sortuj';

  @override
  String get chooseBackupDialog =>
      'Wybierz kopię zapasową Aniyomi, Mihon lub Kotatsu';

  @override
  String get importListsHint =>
      'Przenieś bibliotekę z Aniyomi, Mihon / Tachiyomi lub Kotatsu. Tytuły, okładki, postęp i kategorie zostają.';

  @override
  String get chooseBackupFile => 'Wybierz plik kopii';

  @override
  String importAnimeCount(int count) {
    return 'Importuj anime: $count';
  }

  @override
  String importMangaCount(int count) {
    return 'Importuj mangi: $count';
  }

  @override
  String get mergeWithExisting => 'Połącz z istniejącymi listami';

  @override
  String get mergeWithExistingDesc =>
      'Zachowuje to, co już masz; po wyłączeniu zastępuje pasujące tytuły';

  @override
  String get chooseAnother => 'Wybierz inny';

  @override
  String get import => 'Importuj';

  @override
  String animeCount(int count) {
    return 'Anime: $count';
  }

  @override
  String mangaCount(int count) {
    return 'Mangi: $count';
  }

  @override
  String get chooseSaveLocation => 'Wybierz, gdzie zapisać kopię';

  @override
  String savedPath(String path) {
    return 'Zapisano $path';
  }

  @override
  String exportFailed(String error) {
    return 'Eksport nie powiódł się: $error';
  }

  @override
  String get nothingInLocalLists => 'Twoje lokalne listy są jeszcze puste.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Eksportuje anime: $anime i mangi: $manga z twoich lokalnych list. Kotatsu obsługuje tylko mangi.';
  }

  @override
  String get saveToFolder => 'Zapisz w folderze';

  @override
  String get formatAnimeManga => 'Anime i manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Tylko manga · .tachibk';

  @override
  String get formatMangaZip => 'Tylko manga · .zip';

  @override
  String get genres => 'Gatunki';

  @override
  String get relations => 'Powiązania';

  @override
  String get recommendations => 'Rekomendacje';

  @override
  String get openings => 'Openingi';

  @override
  String get endings => 'Endingi';

  @override
  String get background => 'Tło';

  @override
  String get links => 'Linki';

  @override
  String get rank => 'Ranking';

  @override
  String get members => 'Członkowie';

  @override
  String get favorites => 'Ulubione';

  @override
  String get episodes => 'Odcinki';

  @override
  String get chapters => 'Rozdziały';

  @override
  String get volumes => 'Tomy';

  @override
  String get format => 'Format';

  @override
  String get source => 'Źródło';

  @override
  String get duration => 'Czas trwania';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min na odc.';
  }

  @override
  String get rating => 'Ocena wiekowa';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Publikacja w magazynie';

  @override
  String get season => 'Sezon';

  @override
  String get broadcast => 'Emisja';

  @override
  String get aired => 'Wyemitowano';

  @override
  String get published => 'Opublikowano';

  @override
  String get popularity => 'Popularność';

  @override
  String get community => 'Społeczność';

  @override
  String get watching => 'Oglądane';

  @override
  String get reading => 'Czytane';

  @override
  String get dropped => 'Porzucone';

  @override
  String get planned => 'Planowane';

  @override
  String get trailers => 'Zwiastuny';

  @override
  String get ratings => 'Oceny';

  @override
  String get originalTitle => 'Oryginał';

  @override
  String get titleLabel => 'Tytuł';

  @override
  String get votes => 'Głosy';

  @override
  String get watchedStat => 'Obejrzane';

  @override
  String get runtime => 'Czas trwania';

  @override
  String get director => 'Reżyser';

  @override
  String get network => 'Stacja';

  @override
  String get certification => 'Klasyfikacja wiekowa';

  @override
  String get airs => 'Emisja';

  @override
  String get budget => 'Budżet';

  @override
  String get revenue => 'Przychód';

  @override
  String get released => 'Premiera';

  @override
  String get tags => 'Tagi';

  @override
  String get author => 'Autor';

  @override
  String get born => 'Data urodzenia';

  @override
  String get website => 'Strona';

  @override
  String get established => 'Założono';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Powieści';

  @override
  String get thisMonth => 'Ten miesiąc';

  @override
  String get movies => 'Filmy';

  @override
  String get shows => 'Seriale';

  @override
  String get rewatching => 'Oglądane ponownie';

  @override
  String get rereading => 'Czytane ponownie';

  @override
  String get watchedStatus => 'Obejrzane';

  @override
  String get planning => 'Planowane';

  @override
  String get paused => 'Wstrzymane';

  @override
  String get watch => 'Oglądaj';

  @override
  String get read => 'Czytaj';

  @override
  String get finished => 'Zakończone';

  @override
  String get releasing => 'Emitowane';

  @override
  String get cancelled => 'Anulowane';

  @override
  String get hiatus => 'Przerwa';

  @override
  String get remove => 'Usuń';

  @override
  String syncToService(String service) {
    return 'Synchronizuj z $service';
  }

  @override
  String syncedToService(String service) {
    return 'Zsynchronizowano z $service';
  }

  @override
  String get latestReleases => 'Najnowsze wydania';

  @override
  String get topRated => 'Najwyżej oceniane';

  @override
  String localSection(String title) {
    return '$title · Lokalnie';
  }

  @override
  String get localEntryNote =>
      'Ten tytuł jest tylko na twojej lokalnej liście na tym urządzeniu. Edycja jest tu wyłączona, bo mogłaby kolidować z listą z twojego konta; nadal możesz go usunąć.';

  @override
  String get cardPresetPoster => 'Plakat';

  @override
  String get cardPresetCard => 'Karta';

  @override
  String get cardPresetCozy => 'Przytulny';

  @override
  String get sortTopRated => 'Najwyżej oceniane';

  @override
  String get sortMostPopular => 'Najpopularniejsze';

  @override
  String get sortTrending => 'Na czasie';

  @override
  String get sortNewest => 'Najnowsze';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Najczęściej ulubione';

  @override
  String get anyCountry => 'Dowolny kraj';

  @override
  String get orderScore => 'Ocena';

  @override
  String get orderTitle => 'Tytuł';

  @override
  String get orderLastUpdated => 'Ostatnio zaktualizowane';

  @override
  String get orderLastAdded => 'Ostatnio dodane';

  @override
  String get never => 'Nigdy';

  @override
  String get always => 'Zawsze';

  @override
  String get scorePoint100 => '100 punktów';

  @override
  String get scorePoint10Decimal => '10 punktów z ułamkiem';

  @override
  String get scorePoint10 => '10 punktów';

  @override
  String get scorePoint5 => '5 gwiazdek';

  @override
  String get scorePoint3 => '3 punkty (buźki)';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count godziny',
      many: '$count godzin',
      few: '$count godziny',
      one: '1 godzina',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dnia',
      many: '$count dni',
      few: '$count dni',
      one: '1 dzień',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tygodnia',
      many: '$count tygodni',
      few: '$count tygodnie',
      one: '1 tydzień',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Wznów';

  @override
  String get resumeSourceMissing =>
      'Zainstaluj źródło tego tytułu, żeby wznowić';

  @override
  String get resumeRemove => 'Usuń z wznawiania';

  @override
  String resumeAt(String time) {
    return 'zostało $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Strona $page z $total';
  }

  @override
  String get continueWatching => 'Kontynuuj oglądanie';

  @override
  String get continueReading => 'Kontynuuj czytanie';

  @override
  String get favouriteAnimeSection => 'Ulubione anime';

  @override
  String get favouriteMangaSection => 'Ulubione mangi';

  @override
  String get plannedAnime => 'Planowane anime';

  @override
  String get plannedManga => 'Planowane mangi';

  @override
  String get completedAnime => 'Ukończone anime';

  @override
  String get completedManga => 'Ukończone mangi';

  @override
  String get hiddenMedia => 'Ukryte media';

  @override
  String get recentUpdates => 'Ostatnie aktualizacje';

  @override
  String get trendingNow => 'Na czasie';

  @override
  String get popularThisSeason => 'Popularne w tym sezonie';

  @override
  String get trendingMovies => 'Filmy na czasie';

  @override
  String get topRatedSeries => 'Najwyżej oceniane seriale';

  @override
  String get mostFavouriteSeries => 'Najczęściej ulubione seriale';

  @override
  String get popularAnime => 'Popularne anime';

  @override
  String get trendingManhwa => 'Manhwy na czasie';

  @override
  String get trendingNovels => 'Powieści na czasie';

  @override
  String get topRatedManga => 'Najwyżej oceniane mangi';

  @override
  String get mostFavouriteManga => 'Najczęściej ulubione mangi';

  @override
  String get popularManga => 'Popularne mangi';

  @override
  String get topMovies => 'Najlepsze filmy';

  @override
  String get topOna => 'Najlepsze ONA';

  @override
  String get topOva => 'Najlepsze OVA';

  @override
  String get mostPopular => 'Najpopularniejsze';

  @override
  String get mostFavourite => 'Najczęściej ulubione';

  @override
  String get upcoming => 'Nadchodzące';

  @override
  String get topManga => 'Najlepsze mangi';

  @override
  String get topManhwa => 'Najlepsze manhwy';

  @override
  String get topManhua => 'Najlepsze manhuy';

  @override
  String get topNovels => 'Najlepsze powieści';

  @override
  String get topOneShots => 'Najlepsze one-shoty';

  @override
  String get trendingMoviesToday => 'Filmy na czasie dziś';

  @override
  String get trendingShowsToday => 'Seriale na czasie dziś';

  @override
  String get trendingMoviesWeek => 'Filmy na czasie w tym tygodniu';

  @override
  String get trendingShowsWeek => 'Seriale na czasie w tym tygodniu';

  @override
  String get mostWatchedMoviesMonth =>
      'Najczęściej oglądane filmy w tym miesiącu';

  @override
  String get mostWatchedShowsMonth =>
      'Najczęściej oglądane seriale w tym miesiącu';

  @override
  String get trendingThisWeek => 'Na czasie w tym tygodniu';

  @override
  String get mostWatchedThisMonth => 'Najczęściej oglądane w tym miesiącu';

  @override
  String get repoLinksAdded => 'Dodano linki do repozytoriów!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'Błąd pobierania danych z AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'KOMENTARZE';

  @override
  String get playerNotAvailable => 'Odtwarzacz jeszcze nie jest dostępny';

  @override
  String deepLinkInitialError(String error) {
    return 'Błąd pobierania początkowego deep linka: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Błąd otwierania linku: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Tego linku nie da się otworzyć: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Błąd otwierania linku: $error';
  }

  @override
  String get forReleasingTitles => 'dla aktualnie emitowanych tytułów';

  @override
  String get progress => 'Postęp';

  @override
  String get notes => 'Notatki';

  @override
  String serviceNotFound(String id) {
    return 'Nie znaleziono serwisu „$id”';
  }

  @override
  String get glassEffectEnabled => 'Efekt szkła włączony';

  @override
  String get glassEffectDisabled => 'Efekt szkła wyłączony';

  @override
  String get materialYouEnabled => 'Material You włączony';

  @override
  String get materialYouDisabled => 'Material You wyłączony';

  @override
  String get darkModeEnabled => 'Ciemny tryb włączony';

  @override
  String get darkModeDisabled => 'Ciemny tryb wyłączony';

  @override
  String get animeList => 'Lista anime';

  @override
  String get mangaList => 'Lista mang';

  @override
  String ownerAnimeList(String owner) {
    return 'Lista anime: $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Lista mang: $owner';
  }

  @override
  String get loadingList => 'Wczytywanie listy';

  @override
  String get earlier => 'Wcześniej';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dnia temu',
      many: '$count dni temu',
      few: '$count dni temu',
      one: '1 dzień temu',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count godziny temu',
      many: '$count godzin temu',
      few: '$count godziny temu',
      one: '1 godzinę temu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuty temu',
      many: '$count minut temu',
      few: '$count minuty temu',
      one: '1 minutę temu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count min temu';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count godz. temu';
  }

  @override
  String daysAgoShort(int count) {
    return '$count dn. temu';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count tyg. temu';
  }

  @override
  String get couldntLoadSource => 'Nie udało się wczytać tego źródła';

  @override
  String get followers => 'Obserwujący';

  @override
  String couldntLoadTitle(String title) {
    return 'Nie udało się wczytać: $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Nie udało się wczytać tego profilu';

  @override
  String get profile => 'Profil';

  @override
  String get feed => 'Kanał';

  @override
  String get stats => 'Statystyki';

  @override
  String get received => 'Otrzymane';

  @override
  String get sent => 'Wysłane';

  @override
  String get global => 'Globalne';

  @override
  String get couldntLoadPage => 'Nie udało się wczytać tej strony';

  @override
  String get couldntLoadAllDetails =>
      'Nie udało się wczytać wszystkich szczegółów';

  @override
  String get series => 'Seriale';

  @override
  String get studios => 'Studia';

  @override
  String get users => 'Użytkownicy';

  @override
  String repositoriesTitle(String type) {
    return 'Repozytoria: $type';
  }

  @override
  String get repositoryUrl => 'URL repozytorium';

  @override
  String get downloadingRepository => 'Pobieranie repozytorium…';

  @override
  String get noRepositories => 'Nie dodano repozytoriów';

  @override
  String repoExtensionsCount(String count) {
    return 'Rozszerzenia: $count';
  }

  @override
  String get searchExtensions => 'Szukaj rozszerzeń...';

  @override
  String deletePluginTitle(String name) {
    return 'Usunąć $name?';
  }

  @override
  String get deletePluginMessage => 'Na pewno chcesz usunąć tę wtyczkę?';

  @override
  String pluginDeleted(String name) {
    return 'Usunięto $name';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name nie jest dostępne w skonfigurowanym repozytorium';
  }

  @override
  String get pluginFetchFailed => 'Nie udało się pobrać informacji o wtyczce';

  @override
  String installPluginTitle(String name) {
    return 'Zainstaluj $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Rozmiar: $size';
  }

  @override
  String get installedState => 'Zainstalowane';

  @override
  String get errorLabel => 'Błąd:';

  @override
  String get stackTraceDetails => 'Szczegóły (stos wywołań)';

  @override
  String get shareLogFile => 'Udostępnij plik logów';

  @override
  String get copyLogs => 'Kopiuj logi';

  @override
  String noListToEdit(String service) {
    return '$service nie ma listy do edycji';
  }

  @override
  String get couldNotReadFile => 'Nie udało się odczytać tego pliku';

  @override
  String importedSummary(int anime, int manga) {
    return 'Zaimportowano anime: $anime i mangi: $manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · już jest: $count';
  }

  @override
  String get airingNow => 'Teraz emitowane';

  @override
  String get topRatedMovies => 'Najwyżej oceniane filmy';

  @override
  String get koreanDramas => 'Koreańskie dramy';

  @override
  String get chineseDramas => 'Chińskie dramy';

  @override
  String get japaneseDramas => 'Japońskie dramy';

  @override
  String get thaiDramas => 'Tajskie dramy';

  @override
  String get turkishDramas => 'Tureckie seriale';

  @override
  String get miniSeries => 'Miniseriale';

  @override
  String get topRatedShows => 'Najwyżej oceniane seriale';

  @override
  String get recommendedSection => 'Polecane';

  @override
  String get syncRow => 'Synchronizuj listy';

  @override
  String get syncRowDesc =>
      'Odbij listę jednego serwisu na twoich pozostałych kontach';

  @override
  String get syncTitle => 'Synchronizuj';

  @override
  String get syncMainService => 'Główny serwis';

  @override
  String get syncMainServiceDesc =>
      'Jego lista jest wiarygodna; każdy inny zalogowany serwis zostanie do niej dopasowany';

  @override
  String get syncAuto => 'Auto-synchronizacja';

  @override
  String get syncAutoDesc =>
      'Pobieraj i synchronizuj w tle po otwarciu aplikacji i co 30 minut';

  @override
  String get syncAddMissing => 'Dodawaj brakujące wpisy';

  @override
  String get syncAddMissingDesc =>
      'Dodawaj też wpisy, których drugi serwis jeszcze nie ma';

  @override
  String get syncOnlyForward => 'Zachowaj dalszy postęp';

  @override
  String get syncOnlyForwardDesc =>
      'Nie obniżaj postępu w serwisie, który jest już dalej';

  @override
  String get syncFetch => 'Pobierz';

  @override
  String get syncFetchAgain => 'Pobierz ponownie';

  @override
  String get syncAll => 'Synchronizuj wszystko';

  @override
  String get syncStop => 'Zatrzymaj';

  @override
  String get syncResume => 'Wznów';

  @override
  String get syncNothingToSync =>
      'Ten serwis nie może być synchronizowany dla tego typu';

  @override
  String get syncNoTargets =>
      'Zaloguj się do innego serwisu, żeby synchronizować';

  @override
  String get syncLoadingMap => 'Wczytywanie mapowania ID';

  @override
  String get syncComparing => 'Porównywanie list';

  @override
  String get syncIntro =>
      'Wybierz główny serwis i naciśnij Pobierz. Każdy serwis jest raz pytany o twoją listę, a potem porównywany z głównym.';

  @override
  String get syncStateSynced => 'Zsynchronizowano';

  @override
  String get syncStateOutdated => 'Niezsynchronizowano';

  @override
  String get syncStateMissing => 'Nie ma na liście';

  @override
  String get syncStateUnmapped => 'Brak dopasowania';

  @override
  String syncPaused(String time) {
    return 'Czekam na limit żądań, wznowię za $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count tylko w $name, bez zmian';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done z $total';
  }

  @override
  String get syncNothingHere => 'Nie ma czego pokazać';

  @override
  String syncLimits(int used, int max, String window) {
    return 'Wykorzystano $used z $max żądań na $window';
  }

  @override
  String get syncMinute => 'minutę';

  @override
  String get syncDay => 'dzień';

  @override
  String get syncNotInList => 'Jeszcze nie na liście';

  @override
  String get syncCleared => 'Wyczyszczono plan';

  @override
  String get syncClear => 'Wyczyść';

  @override
  String get syncOptions => 'Opcje';

  @override
  String get syncShared => 'Dzieli wpis z innym elementem';

  @override
  String syncNotFound(String service) {
    return 'Nie znaleziono w $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Synchronizuj $service ($count)';
  }

  @override
  String get syncOnEdit => 'Synchronizuj zmiany od razu';

  @override
  String get syncOnEditDesc =>
      'Wysyłaj każdą zmianę postępu i edycję listy od razu do pozostałych zalogowanych serwisów';

  @override
  String syncPushed(String services) {
    return 'Zsynchronizowano z $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Limit żądań, spróbuj za chwilę';

  @override
  String get syncAhead => 'Ten, który jest dalej';

  @override
  String get syncAheadDesc =>
      'W obie strony: dla każdego tytułu wygrywa wpis, który jest najdalej, i trafia do wszystkich twoich pozostałych serwisów';

  @override
  String syncAheadFrom(String service) {
    return 'Z $service';
  }

  @override
  String get syncConfirm => 'Przejrzyj przed synchronizacją';

  @override
  String get syncConfirmDesc =>
      'Pokaż, co zmieni Synchronizuj wszystko i ile potrzeba żądań';

  @override
  String get syncPreviewTitle => 'Gotowe do synchronizacji';

  @override
  String syncPreviewLine(int updates, int adds) {
    return 'Aktualizacje: $updates, do dodania: $adds';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Około $count żądań';
  }

  @override
  String syncPreviewLookups(int count) {
    return 'Najpierw trzeba wyszukać ID: $count';
  }

  @override
  String get syncPreviewNothing => 'Nic do zmiany';

  @override
  String get syncStart => 'Start';

  @override
  String get syncRetry => 'Ponów';

  @override
  String get syncSkip => 'Pomiń ten element';

  @override
  String get syncInclude => 'Uwzględnij ten element ponownie';

  @override
  String get syncSkippedLabel => 'Pominięto';

  @override
  String get syncChanges => 'Różnice';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Postęp';

  @override
  String get syncChangeScore => 'Ocena';

  @override
  String get syncChangeDates => 'Daty';

  @override
  String get syncChangeRepeat => 'Liczba powtórek';

  @override
  String get syncFailedReason => 'Dlaczego się nie udało';

  @override
  String get syncSkippedHint =>
      'Pominięte elementy zostają w spokoju, nawet po ponownym pobraniu';

  @override
  String get commentsRules => 'Zasady komentowania';

  @override
  String get commentsRulesBody =>
      'ZŁAMIESZ DOWOLNĄ ZASADĘ = WYLATUJESZ\n\n1. Żadnego rasizmu, dyskryminacji ani mowy nienawiści\n2. Żadnego spamu ani autopromocji\n3. Absolutnie żadnych treści NSFW\n4. Tylko po angielsku, bez wyjątków\n5. Żadnego podszywania się, nękania ani obrażania\n6. Żadnych nielegalnych treści ani skrajnego braku szacunku wobec jakiegokolwiek fandomu\n7. Nie proś o repozytoria ani rozszerzenia i ich nie udostępniaj\n8. Spoilery tylko z tagami spoilerów i ostrzeżeniem\n9. Żadnych seksualizujących ani niestosownych komentarzy o nieletnich postaciach\n10. Jeśli to złe, nie wrzucaj tego!';

  @override
  String get commentsRulesAccept => 'Rozumiem';

  @override
  String get commentsSortNewest => 'Najnowsze';

  @override
  String get commentsSortOldest => 'Najstarsze';

  @override
  String get commentsSortHighest => 'Najwyżej oceniane';

  @override
  String get commentsSortLowest => 'Najniżej oceniane';

  @override
  String commentsEpisodeShort(int number) {
    return 'Odc. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Rozdz. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filtruj po odcinku';

  @override
  String get commentsFilterChapterTitle => 'Filtruj po rozdziale';

  @override
  String get commentsFilterTagTitle => 'Wpisz numer odcinka lub rozdziału';

  @override
  String get commentsFilterHint => 'Numer';

  @override
  String get commentsFilterApply => 'Filtruj';

  @override
  String get commentsFilterClear => 'Pokaż wszystko';

  @override
  String get commentsPlaceholder => 'Dodaj komentarz…';

  @override
  String commentsReplyingTo(String name) {
    return 'Odpowiadasz użytkownikowi $name';
  }

  @override
  String get commentsSend => 'Wyślij';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (opcjonalnie)';
  }

  @override
  String get commentsTagEpisode => 'odcinek';

  @override
  String get commentsTagChapter => 'rozdział';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Numer: $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Tag nie może przekraczać łącznej liczby ($total)';
  }

  @override
  String get commentsNoTag => 'Bez tagu';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Szukaj GIF-ów';

  @override
  String get commentsGifEmpty => 'Nie znaleziono GIF-ów';

  @override
  String get commentsEmptyText => 'Komentarz nie może być pusty';

  @override
  String get commentsBannedYou => 'Masz zakaz komentowania';

  @override
  String get commentsEdited => 'Komentarz edytowany';

  @override
  String get commentsDeleted => 'Komentarz usunięty';

  @override
  String get commentsDeletedPlaceholder => '[usunięto]';

  @override
  String get commentsReported => 'Komentarz zgłoszony';

  @override
  String get commentsUserBanned => 'Użytkownik zbanowany';

  @override
  String get commentsReport => 'Zgłoś';

  @override
  String get commentsReportAsk => 'Zgłosić ten komentarz moderatorom?';

  @override
  String get commentsDelete => 'Usuń';

  @override
  String get commentsDeleteAsk =>
      'Ten komentarz zostanie usunięty dla wszystkich.';

  @override
  String get commentsBan => 'Zbanuj';

  @override
  String get commentsBanAsk => 'Zbanować tego użytkownika w komentarzach?';

  @override
  String get commentsCopy => 'Kopiuj';

  @override
  String get commentsViewReply => 'Zobacz 1 odpowiedź';

  @override
  String commentsViewReplies(int count) {
    return 'Zobacz odpowiedzi: $count';
  }

  @override
  String get commentsHideReplies => 'Ukryj odpowiedzi';

  @override
  String get commentsLoadMore => 'Załaduj więcej komentarzy';

  @override
  String get commentsEmpty => 'Jeszcze nie ma komentarzy. Bądź pierwszy!';

  @override
  String get commentsEmptyFiltered => 'Brak komentarzy dla tego filtra';

  @override
  String get commentsSignIn =>
      'Zaloguj się do AniList, żeby czytać i pisać komentarze';

  @override
  String get commentsSignInMessage =>
      'Komentarze są wspólne dla wszystkich serwisów i korzystają z twojego konta AniList.';

  @override
  String get commentsUnavailable =>
      'Komentarze nie są dostępne dla tego tytułu';

  @override
  String get commentsUnavailableMessage =>
      'Nie udało się go dopasować do wpisu w AniList.';

  @override
  String get commentsDisabled => 'Komentarze są wyłączone';

  @override
  String get commentsDisabledMessage =>
      'Możesz je włączyć z powrotem w Ustawienia › Ogólne.';

  @override
  String get commentsOffline => 'Nie udało się wczytać komentarzy';

  @override
  String get commentsSingleTitle => 'Pokazano jeden komentarz';

  @override
  String get commentsShowAll => 'Pokaż wszystkie komentarze';

  @override
  String get commentsSettingsHeader => 'Komentarze';

  @override
  String get commentsSettingEnabled => 'Komentarze';

  @override
  String get commentsSettingEnabledDesc =>
      'Pokazuj kartę Komentarze przy tytułach i loguj się na serwerze komentarzy kontem AniList';

  @override
  String get commentsSettingAlerts => 'Powiadomienia o odpowiedziach';

  @override
  String get commentsSettingAlertsDesc =>
      'Powiadom mnie, gdy ktoś odpowie na mój komentarz';

  @override
  String get commentsNoticeReplyTitle => 'Nowa odpowiedź na komentarz';

  @override
  String commentsNoticeReply(String name) {
    return '$name odpowiedział(a) na twój komentarz';
  }

  @override
  String get commentsNoticeWarningTitle => 'Dostałeś ostrzeżenie';

  @override
  String get commentsNoticeWarning => 'Bądź bardziej rozważny w komentarzach';

  @override
  String get commentsNoticeUpdateTitle => 'Aktualizacja od Dantotsu';

  @override
  String get barcodeTitle => 'Zeskanuj kod kreskowy';

  @override
  String get barcodeTooltip => 'Znajdź mangę lub powieść po kodzie kreskowym';

  @override
  String get barcodeIntro =>
      'Skieruj aparat na kod kreskowy z tyłu tomu albo wpisz jego ISBN.';

  @override
  String get barcodeIntroManual =>
      'Wpisz ISBN wydrukowany nad kodem kreskowym z tyłu tomu.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'To nie jest prawidłowy ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'Nie znaleziono książki dla $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Aparat jest niedostępny. Zezwól na dostęp do aparatu albo wpisz ISBN.';

  @override
  String get themesTitle => 'Openingi i endingi';

  @override
  String get themesPlayVideo => 'Odtwórz wideo';

  @override
  String get themesPlayAudio => 'Odtwórz tylko dźwięk';

  @override
  String get themesOpenSite => 'Otwórz w AnimeThemes';

  @override
  String get themesCredit => 'Motywy z AnimeThemes';

  @override
  String get themesVersions => 'Wersje';

  @override
  String get sauceTitle => 'Znajdź źródło';

  @override
  String get sauceIntro =>
      'Wgraj stronę mangi lub grafikę albo wklej link, żeby znaleźć, skąd pochodzi.';

  @override
  String get sauceKeyTitle => 'Klucz API SauceNAO';

  @override
  String get sauceKeyHint => 'Opcjonalnie, podnosi dzienny limit wyszukiwań';

  @override
  String get sauceKeyDesc => 'Weź darmowy klucz na saucenao.com/user.php';

  @override
  String get sauceOpen => 'Otwórz źródło';

  @override
  String get sauceCredit => 'Wyszukiwanie obrazem przez SauceNAO';

  @override
  String get sauceEmpty => 'Nie znaleziono dopasowania';

  @override
  String get sauceTooltip => 'Znajdź źródło strony mangi lub grafiki';

  @override
  String get trendzTitle => 'Rankingi anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Postacie żeńskie';

  @override
  String get trendzMale => 'Postacie męskie';

  @override
  String get trendzCouple => 'Pary';

  @override
  String get trendzCredit => 'Cotygodniowe rankingi od AniTrendz';

  @override
  String get trendzNew => 'NOWE';

  @override
  String get trendzEmpty => 'Ranking jest pusty';

  @override
  String get shareCard => 'Udostępnij kartę';

  @override
  String get shareCardList => 'Udostępnij kartę listy';

  @override
  String get shareCardSaved => 'Zapisano kartę';

  @override
  String get shareCardFailed => 'Nie udało się stworzyć karty';

  @override
  String get shareCardListEmpty =>
      'Twoja lista nie ma jeszcze nic do udostępnienia';

  @override
  String get shareCardTop => 'Moje typy';

  @override
  String themesEpisodes(String eps) {
    return 'Odcinki: $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return 'Dopasowanie $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Tydzień $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return 'Głosy: $count';
  }

  @override
  String trendzPeak(String rank) {
    return 'Szczyt #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'Tygodni w pierwszej dziesiątce: $count';
  }

  @override
  String get imageSearchTitle => 'Szukaj obrazem';

  @override
  String get imageSearchTooltip => 'Znajdź anime po zrzucie ekranu';

  @override
  String get imageSearchIntro =>
      'Wybierz zrzut ekranu albo wklej link do obrazu, a trace.moe znajdzie odcinek i moment, z którego pochodzi.';

  @override
  String get imageSearchPick => 'Wybierz obraz';

  @override
  String get imageSearchLinkHint => 'Wklej link do obrazu';

  @override
  String get imageSearchGo => 'Szukaj';

  @override
  String get imageSearchEmpty => 'Nie znaleziono dopasowania';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Odcinek $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'o $time';
  }

  @override
  String get imageSearchPreview => 'Podgląd fragmentu';

  @override
  String imageSearchSimilarity(int percent) {
    return 'Dopasowanie $percent%';
  }

  @override
  String get imageSearchCredit => 'Dzięki trace.moe';

  @override
  String get imageSearchOpenFailed => 'Nie udało się otworzyć tego tytułu';

  @override
  String get groups => 'Grupy';

  @override
  String get groupsYours => 'Twoje grupy';

  @override
  String get groupsPopular => 'Popularne';

  @override
  String get groupsNew => 'Nowe';

  @override
  String get groupsFeatured => 'Wyróżnione';

  @override
  String get groupsSearch => 'Szukaj grup';

  @override
  String get groupsAll => 'Wszystkie';

  @override
  String get groupsEmpty => 'Nie znaleziono grup';

  @override
  String get groupsEmptyYours => 'Nie dołączyłeś jeszcze do żadnej grupy';

  @override
  String get groupsSignIn =>
      'Zaloguj się, żeby zobaczyć grupy, do których dołączyłeś';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count członka',
      many: '$count członków',
      few: '$count członków',
      one: '1 członek',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Dołącz';

  @override
  String get groupsJoined => 'Dołączono';

  @override
  String get groupsLeave => 'Opuść grupę';

  @override
  String get groupsLeaveAsk =>
      'Przestaniesz widzieć posty tej grupy w swoim kanale.';

  @override
  String get groupsJoinFailed =>
      'Nie udało się dołączyć do tej grupy, może być tylko na zaproszenie';

  @override
  String get groupsLeaveFailed => 'Nie udało się opuścić tej grupy';

  @override
  String get groupsPosts => 'Posty';

  @override
  String get groupsMembersTab => 'Członkowie';

  @override
  String get groupsAbout => 'O grupie';

  @override
  String get groupsRules => 'Zasady';

  @override
  String get groupsPrivacyOpen => 'Otwarta';

  @override
  String get groupsPrivacyRestricted => 'Ograniczona';

  @override
  String get groupsPrivacyClosed => 'Zamknięta';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Nie udało się wczytać tej grupy';

  @override
  String get groupsNewPost => 'Napisz w grupie';

  @override
  String get groupsPostHint => 'Podziel się czymś z grupą';

  @override
  String get groupsOpenInBrowser => 'Otwórz w przeglądarce';

  @override
  String get groupsCategory => 'Kategoria';

  @override
  String get groupsLanguage => 'Język';

  @override
  String get groupsCreated => 'Utworzono';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lidera',
      many: '$count liderów',
      few: '$count liderzy',
      one: '1 lider',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Prywatność';

  @override
  String get notificationsAll => 'Wszystko';

  @override
  String get notificationsAiring => 'Emisja';

  @override
  String get notificationsMedia => 'Nowe tytuły';

  @override
  String get notificationsReplies => 'Odpowiedzi';

  @override
  String get notificationsMentions => 'Wzmianki';

  @override
  String get notificationsMessages => 'Wiadomości';

  @override
  String get notificationsLikes => 'Polubienia';

  @override
  String get notificationsFollows => 'Obserwujący';

  @override
  String get notificationsNoServices =>
      'Żaden zalogowany serwis nie ma powiadomień';

  @override
  String get notificationsNoServicesMessage =>
      'Zaloguj się do serwisu, który wysyła powiadomienia, a pojawią się tutaj.';

  @override
  String get notificationsEmptyKind => 'W tej kategorii jeszcze nic nie ma';

  @override
  String get notificationsCommentsEmpty => 'Brak powiadomień o komentarzach';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Odpowiedzi na twoje komentarze i ogłoszenia od Dantotsu pojawiają się tutaj.';

  @override
  String get notificationsSettings => 'Ustawienia powiadomień';

  @override
  String get notificationsPollTitle => 'Sprawdzaj nowe powiadomienia';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Co $minutes min, gdy aplikacja jest otwarta';
  }

  @override
  String get notificationsNotifyAbout => 'Powiadamiaj mnie o';

  @override
  String get notificationsCommentsHeader => 'Powiadomienia o komentarzach';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Pokazuj powiadomienie systemowe dla każdego nieprzeczytanego powiadomienia $service, gdy aplikacja działa.';
  }

  @override
  String get notificationsTestSent => 'Wysłano testowe powiadomienie';

  @override
  String get notificationsTestDenied =>
      'Powiadomienia są wyłączone dla Dartotsu. Włącz je w ustawieniach systemu.';

  @override
  String get notificationsTestHint =>
      'Przytrzymaj, żeby wysłać testowe powiadomienie';

  @override
  String get notificationsTestSample => 'To jest testowe powiadomienie';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name odpowiedział(a) na twój komentarz w $media';
  }

  @override
  String get imageSearchNotLink => 'To nie wygląda na link';

  @override
  String get imageSearchQuota => 'Przekroczono limit wyszukiwań';

  @override
  String get imageSearchBusy => 'Za dużo żądań, spróbuj za chwilę';

  @override
  String imageSearchFailed(int code) {
    return 'Wyszukiwanie nie powiodło się ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return 'Nowe powiadomienia: $count';
  }

  @override
  String get reactionsTitle => 'Reakcje';

  @override
  String get reactionsNeedEntry =>
      'Dodaj ten tytuł do listy, zanim zareagujesz';

  @override
  String get reactionsAdd => 'Dodaj reakcję';

  @override
  String get reactionsHint => 'Co o tym myślisz? (krótko i bez spoilerów)';

  @override
  String get reactionsPost => 'Opublikuj';

  @override
  String get reactionsFailed => 'Nie udało się zaktualizować reakcji';

  @override
  String get settingsWatch => 'Oglądaj i czytaj';

  @override
  String get settingsWatchDesc =>
      'Listy odcinków, dopasowanie źródeł i szczegóły odcinków';

  @override
  String get watchSettingsLayout => 'Lista odcinków';

  @override
  String get watchSettingsSources => 'Źródła';

  @override
  String get watchSettingsMetadata => 'Szczegóły odcinków';

  @override
  String get watchLayout => 'Układ';

  @override
  String get watchListView => 'Lista';

  @override
  String get watchGridView => 'Siatka';

  @override
  String get watchCompactView => 'Kompaktowy';

  @override
  String get watchDefaultLayoutDesc =>
      'Jak układane są odcinki i rozdziały, dopóki nie zmienisz tego dla tytułu';

  @override
  String get watchChunkSize => 'Rozmiar zakresu';

  @override
  String get watchChunkSizeDesc =>
      'Ile odcinków lub rozdziałów mieści każda karta zakresu';

  @override
  String get watchShowDescription => 'Pokazuj opisy';

  @override
  String get watchShowDescriptionDesc =>
      'Pokazuj streszczenie odcinka pod każdym tytułem w układzie listy';

  @override
  String get watchShowFiller => 'Pokazuj odcinki fillerowe';

  @override
  String get watchShowFillerDesc =>
      'Wyłącz, żeby ukryć odcinki oznaczone jako filler';

  @override
  String get watchBlurUnwatched => 'Ukryj miniatury ze spoilerami';

  @override
  String get watchBlurUnwatchedDesc =>
      'Rozmyj miniaturę odcinków, których jeszcze nie obejrzałeś';

  @override
  String get watchResumeShelf => 'Półka wznawiania';

  @override
  String get watchResumeShelfDesc => 'Pokazuj rząd Wznów na stronie głównej';

  @override
  String get watchMarkOnLongPress => 'Długie przytrzymanie oznacza postęp';

  @override
  String get watchMarkOnLongPressDesc =>
      'Przytrzymaj odcinek lub rozdział, żeby oznaczyć go jako obejrzany lub nieobejrzany';

  @override
  String get watchMatching => 'Dopasowanie źródeł';

  @override
  String get watchMatchingDesc =>
      'Najbliższe bierze najlepszy wynik wyszukiwania. Tylko dokładne akceptuje prawie identyczny tytuł, a resztę zostawia tobie do wyboru.';

  @override
  String get watchMatchClosest => 'Najbliższe dopasowanie';

  @override
  String get watchMatchExact => 'Tylko dokładne dopasowanie';

  @override
  String get watchMetadataDesc =>
      'Skąd pochodzą tytuły odcinków, streszczenia, miniatury, daty emisji i oznaczenia fillerów. Przeciągnij, żeby ustawić priorytet; wygrywa pierwsze źródło z wartością.';

  @override
  String get watchMetaAniZipDesc =>
      'Tytuły odcinków, streszczenia, kadry i daty emisji';

  @override
  String get watchMetaKitsuDesc => 'Tytuły odcinków, opisy i miniatury';

  @override
  String get watchMetaSimklDesc =>
      'Tytuły odcinków, opisy, kadry i daty emisji';

  @override
  String get watchMetaAniListDesc =>
      'Tytuły odcinków ze streamingu, miniatury i harmonogram emisji';

  @override
  String get watchMetaTenraiDesc =>
      'Tytuły odcinków, daty emisji, oznaczenia fillerów i recapów z MyAnimeList przez Tenrai';

  @override
  String get watchClearMetadata => 'Odśwież szczegóły odcinków';

  @override
  String get watchClearMetadataDesc =>
      'Zapomnij zapisane szczegóły odcinków, żeby pobrać je ponownie';

  @override
  String get watchMetadataCleared =>
      'Szczegóły odcinków zostaną pobrane ponownie';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odcinka',
      many: '$count odcinków',
      few: '$count odcinki',
      one: '1 odcinek',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rozdziału',
      many: '$count rozdziałów',
      few: '$count rozdziały',
      one: '1 rozdział',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Odcinek $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Rozdział $number';
  }

  @override
  String get watchSearching => 'Szukanie…';

  @override
  String watchSearchingFor(String term) {
    return 'Szukanie: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Wybrano: $title';
  }

  @override
  String watchFound(String title) {
    return 'Znaleziono: $title';
  }

  @override
  String get watchNothingFound => 'Nic nie znaleziono w tym źródle';

  @override
  String get watchSearchFailed => 'Wyszukiwanie w źródle nie powiodło się';

  @override
  String get watchLoadFailed => 'Nie udało się wczytać listy';

  @override
  String get watchSignInToTrack => 'Zaloguj się, żeby śledzić swój postęp';

  @override
  String watchInstallSource(String action) {
    return 'Zainstaluj rozszerzenie, żeby zacząć: $action';
  }

  @override
  String get watchSourceMissing => 'To źródło nie jest zainstalowane';

  @override
  String get watchWrongTitle => 'Zły tytuł?';

  @override
  String get watchSearchAgain => 'Szukaj ponownie';

  @override
  String watchSearchSource(String source) {
    return 'Szukaj w: $source';
  }

  @override
  String get watchSource => 'Źródło';

  @override
  String get watchOptions => 'Opcje';

  @override
  String get watchReverse => 'Odwróć kolejność';

  @override
  String get watchScanlators => 'Grupy';

  @override
  String get watchResetOptions => 'Zresetuj te opcje';

  @override
  String get watchContinue => 'Kontynuuj';

  @override
  String get watchStart => 'Start';

  @override
  String get watchPlay => 'Odtwórz';

  @override
  String get watchRead => 'Czytaj';

  @override
  String get watchMarkWatched => 'Oznacz jako obejrzane';

  @override
  String get watchMarkUnwatched => 'Oznacz jako nieobejrzane';

  @override
  String get watchMarkRead => 'Oznacz jako przeczytane';

  @override
  String get watchMarkUnread => 'Oznacz jako nieprzeczytane';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Nie znaleziono odcinków';

  @override
  String get watchNoChapters => 'Nie znaleziono rozdziałów';

  @override
  String get watchSourceTools => 'Narzędzia źródła';

  @override
  String get watchSourceSettings => 'Ustawienia źródła';

  @override
  String get watchOpenWebView => 'Otwórz w widoku webowym';

  @override
  String get watchOpenWebViewDesc =>
      'Rozwiąż weryfikację Cloudflare albo się zaloguj; ciasteczka są wspólne z żądaniami źródła';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ciasteczka zapisanego dla $host',
      many: '$count ciasteczek zapisanych dla $host',
      few: '$count ciasteczka zapisane dla $host',
      one: '1 ciasteczko zapisane dla $host',
      zero: 'Brak zapisanych ciasteczek dla $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Przepustka Cloudflare aktywna, $time';
  }

  @override
  String get watchClearanceMissing => 'Brak ciasteczka przepustki Cloudflare';

  @override
  String get watchClearanceSession => 'działa do zamknięcia aplikacji';

  @override
  String get watchAgentShared =>
      'Żądania używają user agenta widoku webowego, który sprawdza Cloudflare';

  @override
  String get watchAgentCustom =>
      'Ustawiono własnego user agenta, więc przepustka Cloudflare z widoku webowego może zostać odrzucona';

  @override
  String get watchTestConnection => 'Testuj połączenie';

  @override
  String get watchSolveChallenge => 'Rozwiąż';

  @override
  String watchProbeOk(int code) {
    return 'Osiągalne (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare nadal żąda weryfikacji';

  @override
  String watchProbeBlocked(int code) {
    return 'Zablokowane przez stronę (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Nie udało się połączyć ze stroną';

  @override
  String get watchClearCookies => 'Wyczyść ciasteczka dla tej strony';

  @override
  String get watchCookiesCleared => 'Wyczyszczono ciasteczka';

  @override
  String get watchMetaSource => 'Szczegóły odcinków z';

  @override
  String get watchMetaAuto => 'Automatycznie';

  @override
  String get watchMetaOff => 'Wyłączone';

  @override
  String get playerSettingsTitle => 'Ustawienia odtwarzacza';

  @override
  String get playerSectionPlayback => 'Odtwarzanie';

  @override
  String get playerSectionSkip => 'Pomijanie';

  @override
  String get playerSectionGestures => 'Sterowanie';

  @override
  String get playerSectionSubtitles => 'Napisy';

  @override
  String get playerSectionShaders => 'Shadery';

  @override
  String get playerSectionEngine => 'Silnik';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Prędkość odtwarzania';

  @override
  String get playerCursedSpeed => 'Dodatkowe prędkości';

  @override
  String get playerCursedSpeedDesc => 'Dodaj do listy prędkości do 10x';

  @override
  String get playerResize => 'Tryb skalowania';

  @override
  String get playerFitFit => 'Dopasuj';

  @override
  String get playerFitCover => 'Wypełnij';

  @override
  String get playerFitStretch => 'Rozciągnij';

  @override
  String get playerSkipDuration => 'Długość przycisku pomijania';

  @override
  String get playerSkipDurationDesc =>
      'Sekundy, o które skacze przycisk pomijania poza openingami i endingami';

  @override
  String get playerSeekDuration => 'Przewijanie podwójnym stuknięciem';

  @override
  String get playerSeekDurationDesc =>
      'Sekundy skoku po podwójnym stuknięciu lub strzałce';

  @override
  String get playerAutoPlay => 'Odtwarzaj następny automatycznie';

  @override
  String get playerAutoPlayDesc =>
      'Uruchom następny odcinek, gdy ten się skończy';

  @override
  String get playerResume => 'Wznawiaj tam, gdzie skończyłeś';

  @override
  String get playerResumeDesc => 'Kontynuuj odcinek od ostatniej pozycji';

  @override
  String get playerOrientation => 'Orientacja';

  @override
  String get playerOrientationAuto => 'Zgodnie z urządzeniem';

  @override
  String get playerOrientationLandscape => 'Pozioma';

  @override
  String get playerOrientationPortrait => 'Pionowa';

  @override
  String get playerAutoSkipOpening => 'Pomijaj openingi';

  @override
  String get playerAutoSkipEnding => 'Pomijaj endingi';

  @override
  String get playerAutoSkipRecap => 'Pomijaj recapy';

  @override
  String get playerAutoSkipDesc =>
      'Przeskocz go od razu, gdy się zacznie, na podstawie AniSkip i znaczników czasu streamu';

  @override
  String get playerSkipOnce => 'Pomijaj tylko raz';

  @override
  String get playerSkipOnceDesc =>
      'Nie pomijaj tej samej części ponownie, jeśli cofniesz się do niej';

  @override
  String get playerAdjustBrightness => 'Gest jasności';

  @override
  String get playerAdjustBrightnessDesc =>
      'Przesuń w górę i w dół po prawej połowie ekranu';

  @override
  String get playerAdjustVolume => 'Gest głośności';

  @override
  String get playerAdjustVolumeDesc =>
      'Przesuń w górę i w dół po lewej połowie ekranu';

  @override
  String get playerHoldToSpeed => 'Przytrzymaj, żeby przyspieszyć';

  @override
  String get playerHoldToSpeedDesc =>
      'Przytrzymaj wideo, żeby odtwarzać szybciej, przeciągnij w bok, żeby zmienić prędkość';

  @override
  String get playerThumbless => 'Grubszy pasek przewijania';

  @override
  String get playerThumblessDesc => 'Gruby pasek bez uchwytu';

  @override
  String get playerShowSubtitles => 'Pokazuj napisy';

  @override
  String get playerShowSubtitlesDesc =>
      'Wyłącz, żeby ukryć wszystkie ścieżki napisów';

  @override
  String get playerSubtitleLanguage => 'Preferowany język napisów';

  @override
  String get playerSubtitleSize => 'Rozmiar napisów';

  @override
  String get playerSubtitleWeight => 'Grubość napisów';

  @override
  String get playerSubtitleBottom => 'Dolny odstęp napisów';

  @override
  String get playerSubtitleFont => 'Czcionka napisów';

  @override
  String get playerSubtitleColor => 'Kolor napisów';

  @override
  String get playerSubtitleBackground => 'Tło napisów';

  @override
  String get playerSubtitleOutline => 'Obrys napisów';

  @override
  String get playerLibass => 'Użyj libass';

  @override
  String get playerLibassDesc =>
      'Renderuj stylizowane napisy .ass. Rozmiar, kolor i czcionka powyżej przestają wtedy działać';

  @override
  String get playerShaders => 'Shadery';

  @override
  String get playerShadersEnable => 'Włącz shadery';

  @override
  String get playerShadersEnableDesc =>
      'Skaluj w górę i czyść obraz shaderami GLSL, np. Anime4K';

  @override
  String get playerShadersOff => 'Shadery wyłączone';

  @override
  String get playerShadersMissing => 'Anime4K nie jest zainstalowany';

  @override
  String get playerShadersMissingDesc =>
      'Pobierz paczkę shaderów Anime4K (ok. 0,8 MB), żeby używać wbudowanych trybów.';

  @override
  String get playerShadersDownload => 'Pobierz Anime4K';

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
  String get playerShadersPreview => 'Podgląd na tej klatce';

  @override
  String get playerShadersUse => 'Użyj tego';

  @override
  String get playerPicture => 'Obraz';

  @override
  String get playerColors => 'Kolory';

  @override
  String get playerColorDefault => 'Domyślne';

  @override
  String get playerColorVivid => 'Żywe';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Łagodne';

  @override
  String get playerColorCinematic => 'Filmowe';

  @override
  String get playerColorBright => 'Jasne';

  @override
  String get playerColorNight => 'Nocne';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Własne';

  @override
  String get playerColorBrightness => 'Jasność';

  @override
  String get playerColorContrast => 'Kontrast';

  @override
  String get playerColorSaturation => 'Nasycenie';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Odcień';

  @override
  String get playerColorReset => 'Resetuj';

  @override
  String get playerColorAdjust => 'Dostosuj';

  @override
  String get playerShadersOriginal => 'Oryginał';

  @override
  String get playerShadersPreviewFailed =>
      'Nie udało się pobrać klatki do podglądu';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Twoje shadery';

  @override
  String get playerShadersCustom => 'Własne shadery';

  @override
  String get playerShadersImport => 'Importuj .glsl';

  @override
  String get playerShadersNone =>
      'Importuj własne pliki .glsl lub .hook i zaznacz je, żeby je połączyć';

  @override
  String get playerShadersBadFile => 'Wybierz plik shadera .glsl lub .hook';

  @override
  String get playerDecoder => 'Dekoder';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (bezpieczne)';

  @override
  String get playerDecoderSoftware => 'Programowy';

  @override
  String get playerDecoderHardware => 'Sprzętowy';

  @override
  String get playerDecoderHardwarePlus => 'Sprzętowy+';

  @override
  String get playerVideoOutput => 'Wyjście wideo';

  @override
  String get playerAudioChannels => 'Kanały audio';

  @override
  String get playerBuffer => 'Rozmiar bufora (MB)';

  @override
  String get playerBufferDesc =>
      'Pamięć, której odtwarzacz może używać do buforowania streamu';

  @override
  String get playerUseMpvConf => 'Użyj mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Stosuj opcje z twojego mpv.conf, gdy zaczyna się odtwarzanie';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Edytuj konfigurację mpv';

  @override
  String get playerMpvConfDesc =>
      'Jedna opcja na linię, jak --hwdec=auto w zwykłym mpv.conf. Profile w [nawiasach] są ignorowane.';

  @override
  String get playerMpvConfSaved => 'Zapisano mpv.conf';

  @override
  String get playerUseScripts => 'Użyj skryptów mpv';

  @override
  String get playerUseScriptsDesc =>
      'Wczytuj wtyczki z folderu skryptów. Wymagają kompilacji libmpv z obsługą Lua lub JavaScript';

  @override
  String get playerScripts => 'Skrypty mpv';

  @override
  String get playerScriptsManage => 'Dodawaj, usuwaj i przełączaj wtyczki';

  @override
  String get playerScriptsAdd => 'Dodaj skrypt';

  @override
  String get playerScriptsDesc =>
      'Wtyczki Lua, JavaScript i natywne umieszczone tutaj są wczytywane, gdy zaczyna się odtwarzanie.';

  @override
  String get playerScriptsNone => 'Brak skryptów';

  @override
  String get playerScriptsBadFile =>
      'Wybierz plik .lua, .js lub natywnej wtyczki';

  @override
  String get playerTuning => 'Zaawansowane strojenie wideo';

  @override
  String get playerTuningDesc =>
      'Nadpisz synchronizację, cache, skalowanie i tone mapping. Złe wartości mogą zepsuć odtwarzanie';

  @override
  String get playerVideoSync => 'Synchronizacja wideo';

  @override
  String get playerInterpolation => 'Interpolacja klatek';

  @override
  String get playerInterpolationDesc =>
      'Płynny ruch, wymaga synchronizacji display-resample';

  @override
  String get playerPitch => 'Korekta wysokości dźwięku';

  @override
  String get playerPitchDesc =>
      'Zachowaj naturalne głosy przy innych prędkościach';

  @override
  String get playerCacheSeconds => 'Cache (sekundy)';

  @override
  String get playerReadahead => 'Odczyt z wyprzedzeniem (sekundy)';

  @override
  String get playerThreads => 'Wątki dekodera';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Zmniejsz pasmowanie kolorów w gradientach';

  @override
  String get playerDebandIterations => 'Iteracje deband';

  @override
  String get playerDebandThreshold => 'Próg deband';

  @override
  String get playerCorrectDownscaling => 'Poprawne zmniejszanie';

  @override
  String get playerSigmoid => 'Skalowanie w górę sigmoid';

  @override
  String get playerScale => 'Skaler w górę';

  @override
  String get playerCscale => 'Skaler chromy w górę';

  @override
  String get playerDscale => 'Skaler w dół';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Docelowy szczyt';

  @override
  String get playerOpenFiles => 'Otwórz pliki wideo';

  @override
  String get playerOpenFilesDesc => 'Odtwarzaj pliki z tego urządzenia';

  @override
  String get playerOpenFolder => 'Otwórz folder';

  @override
  String get playerOpenFolderDesc =>
      'Odtwórz wszystkie filmy z folderu jako playlistę';

  @override
  String get playerNetworkStream => 'Stream sieciowy';

  @override
  String get playerNetworkStreamDesc =>
      'Otwórz bezpośredni link do wideo lub HLS';

  @override
  String get playerStreamUrl => 'URL streamu';

  @override
  String get playerStreamReferer => 'Referer (opcjonalnie)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Streamuj magnet link lub plik .torrent';

  @override
  String get playerMagnetLink => 'Magnet link lub URL torrenta';

  @override
  String get playerPickTorrent => 'Wybierz plik .torrent';

  @override
  String get playerTorrentMissing =>
      'Najpierw zainstaluj dodatek torrentów w Ustawienia > Dodatki';

  @override
  String get playerNoVideos => 'Nie znaleziono odtwarzalnych filmów';

  @override
  String get playerReset => 'Resetuj ustawienia odtwarzacza';

  @override
  String get playerResetDesc =>
      'Przywróć wszystkie opcje odtwarzacza do domyślnych';

  @override
  String get playerResetConfirm =>
      'Zresetować wszystkie ustawienia odtwarzacza?';

  @override
  String get playerResetDone => 'Zresetowano ustawienia odtwarzacza';

  @override
  String get playerQuality => 'Jakość';

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
  String get playerStreams => 'Streamy';

  @override
  String get playerAutoSelect => 'Wybieraj stream automatycznie';

  @override
  String get playerAutoSelectDesc =>
      'Wybierz stream najbardziej podobny do twojego ostatniego wyboru dla tego tytułu';

  @override
  String get playerLoadingStreams => 'Szukanie streamów…';

  @override
  String get playerNoStreams => 'Ten odcinek nie ma streamów';

  @override
  String get playerNoStreamsTitle => 'Nie znaleziono streamów';

  @override
  String get playerFailed => 'Odtwarzanie nie powiodło się';

  @override
  String get playerTorrentNeeded => 'Ten stream to torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Zainstaluj dodatek torrentów, żeby odtwarzać magnet linki i pliki .torrent';

  @override
  String get playerOpenAddons => 'Otwórz dodatki';

  @override
  String get playerTryAnotherStream => 'Spróbuj innego streamu';

  @override
  String get playerEpisodes => 'Odcinki';

  @override
  String get playerLock => 'Zablokuj sterowanie';

  @override
  String get playerFullscreen => 'Pełny ekran';

  @override
  String get readerChapters => 'Rozdziały';

  @override
  String get readerSettingsTitle => 'Ustawienia czytnika';

  @override
  String get readerPreviousChapter => 'Poprzedni rozdział';

  @override
  String get readerNextChapter => 'Następny rozdział';

  @override
  String get readerFirstChapter => 'To pierwszy rozdział';

  @override
  String get readerLastChapter => 'Jesteś na bieżąco';

  @override
  String get readerFailed => 'Nie udało się otworzyć tego rozdziału';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Ten rozdział nie ma tekstu';

  @override
  String get readerPerTitle => 'Tylko dla tego tytułu';

  @override
  String get readerPerTitleDesc =>
      'Zachowaj te ustawienia czytnika tylko dla tego tytułu';

  @override
  String get readerSectionReading => 'Czytanie';

  @override
  String get readerSectionControls => 'Sterowanie';

  @override
  String get readerSectionDisplay => 'Wyświetlanie';

  @override
  String get readerSectionNovel => 'Powieść';

  @override
  String get readerMode => 'Tryb czytania';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Od prawej do lewej';

  @override
  String get readerModeLtr => 'Od lewej do prawej';

  @override
  String get readerModeVertical => 'Strony pionowo';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Ciągłe przewijanie';

  @override
  String get readerScale => 'Skala obrazu';

  @override
  String get readerScaleFit => 'Dopasuj do ekranu';

  @override
  String get readerScaleWidth => 'Dopasuj do szerokości';

  @override
  String get readerScaleHeight => 'Dopasuj do wysokości';

  @override
  String get readerScaleOriginal => 'Oryginalny rozmiar';

  @override
  String get readerScaleSmart => 'Inteligentne dopasowanie';

  @override
  String get readerDoublePage => 'Podwójne strony';

  @override
  String get readerDoublePageDesc =>
      'Pokazuj dwie strony obok siebie w poziomie';

  @override
  String get readerDoubleTapZoom => 'Powiększanie podwójnym stuknięciem';

  @override
  String get readerDoubleTapZoomDesc =>
      'Powiększaj i pomniejszaj stronę podwójnym stuknięciem';

  @override
  String get readerAnimate => 'Animacja stron';

  @override
  String get readerAnimateDesc => 'Animuj przewracanie stron';

  @override
  String get readerSidePadding => 'Margines boczny';

  @override
  String get readerSidePaddingDesc => 'Odstęp obok stron w procentach';

  @override
  String get readerPageGap => 'Odstęp między stronami';

  @override
  String get readerPageGapDesc => 'Przestrzeń między stronami';

  @override
  String get readerAutoNext => 'Przechodź do następnego rozdziału';

  @override
  String get readerAutoNextDesc =>
      'Wczytuj następny rozdział, gdy czytasz koniec tego';

  @override
  String get readerPreload => 'Wczytuj strony z wyprzedzeniem';

  @override
  String get readerPreloadDesc => 'Ile stron pobierać do przodu';

  @override
  String get readerTapZones => 'Strefy dotyku';

  @override
  String get readerTapDefault => 'Domyślne';

  @override
  String get readerTapLShaped => 'L-kształtne';

  @override
  String get readerTapKindle => 'Jak w Kindle';

  @override
  String get readerTapEdge => 'Tylko krawędzie';

  @override
  String get readerTapOff => 'Wyłączone';

  @override
  String get readerInvertTaps => 'Odwróć strefy dotyku';

  @override
  String get readerInvertTapsDesc =>
      'Zamień miejscami obszary poprzedniej i następnej strony';

  @override
  String get readerBackground => 'Tło';

  @override
  String get readerBackgroundBlack => 'Czarne';

  @override
  String get readerBackgroundGray => 'Szare';

  @override
  String get readerBackgroundWhite => 'Białe';

  @override
  String get readerBackgroundTheme => 'Motyw aplikacji';

  @override
  String get readerFilter => 'Filtr kolorów';

  @override
  String get readerFilterNone => 'Brak';

  @override
  String get readerFilterGrayscale => 'Skala szarości';

  @override
  String get readerFilterInvert => 'Negatyw';

  @override
  String get readerFilterSepia => 'Sepia';

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
  String get readerDim => 'Przyciemnienie';

  @override
  String get readerDimDesc => 'Przyciemnij strony';

  @override
  String get readerPageNumber => 'Numer strony';

  @override
  String get readerPageNumberDesc => 'Pokazuj numer strony podczas czytania';

  @override
  String get readerFullscreen => 'Pełny ekran';

  @override
  String get readerFullscreenDesc => 'Ukryj paski systemowe';

  @override
  String get readerCropBorders => 'Przycinaj marginesy';

  @override
  String get readerCropBordersDesc =>
      'Obcinaj puste białe lub czarne marginesy ze stron';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Klawisze głośności przewracają strony';

  @override
  String get readerVolumeKeysDesc => 'Ciszej idzie do przodu, głośniej wraca';

  @override
  String get readerBookmarks => 'Zakładki';

  @override
  String get readerBookmarkAdd => 'Dodaj zakładkę';

  @override
  String get readerBookmarkRemove => 'Usuń zakładkę';

  @override
  String get readerBookmarksEmpty => 'Brak zakładek';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Strona $page z $total';
  }

  @override
  String get readerAutoScroll => 'Autoprzewijanie';

  @override
  String get readerAutoScrollStop => 'Zatrzymaj autoprzewijanie';

  @override
  String get readerAutoScrollSpeed => 'Szybkość autoprzewijania';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Jak szybko strony przewijają się lub zmieniają same';

  @override
  String get readerKeepOn => 'Nie wygaszaj ekranu';

  @override
  String get readerKeepOnDesc =>
      'Nie pozwól, żeby ekran się wyłączał podczas czytania';

  @override
  String get readerOrientation => 'Orientacja';

  @override
  String get readerOrientationFree => 'Dowolna';

  @override
  String get readerOrientationPortrait => 'Pionowa';

  @override
  String get readerOrientationLandscape => 'Pozioma';

  @override
  String get readerSaveProgress => 'Zapisuj postęp';

  @override
  String get readerSaveProgressDesc =>
      'Pamiętaj stronę i oznaczaj rozdziały jako przeczytane';

  @override
  String get readerReset => 'Resetuj ustawienia czytnika';

  @override
  String get readerResetDesc => 'Wróć do domyślnych';

  @override
  String get novelSize => 'Rozmiar tekstu';

  @override
  String get novelFont => 'Czcionka';

  @override
  String get novelLineHeight => 'Wysokość linii';

  @override
  String get novelParagraph => 'Odstęp akapitów';

  @override
  String get novelMargin => 'Marginesy';

  @override
  String get novelTheme => 'Motyw czytnika';

  @override
  String get novelThemeApp => 'Motyw aplikacji';

  @override
  String get novelThemeLight => 'Jasny';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Ciemny';

  @override
  String get novelThemeBlack => 'Czarny';

  @override
  String get novelJustify => 'Wyjustuj tekst';

  @override
  String get novelJustifyDesc => 'Wyrównaj tekst do obu krawędzi';

  @override
  String get trackProgressTitle => 'Zapisać postęp?';

  @override
  String trackProgressAnime(String name) {
    return 'Śledzić $name na twojej liście podczas oglądania? Wybierz „Tylko to urządzenie”, żeby trzymać to lokalnie, albo Nie, żeby nic nie zapisywać.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Śledzić $name na twojej liście, gdy skończysz rozdział? Wybierz „Tylko to urządzenie”, żeby trzymać to lokalnie, albo Nie, żeby nic nie zapisywać.';
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
  String get trackProgressYes => 'Zapisz';

  @override
  String get trackProgressReset =>
      'Zresetowano pytanie o zapis postępu dla tego typu, zapyta ponownie';

  @override
  String get trackProgressNo => 'Nie';

  @override
  String get trackProgressOff => 'Wyłączone';

  @override
  String get trackProgressLocal => 'Tylko to urządzenie';

  @override
  String get trackProgressSettingAnime => 'Śledź postęp anime';

  @override
  String get trackProgressSettingManga => 'Śledź postęp mang i powieści';

  @override
  String get trackProgressSettingDesc =>
      'Co zrobić, gdy otworzysz odcinek lub skończysz rozdział';

  @override
  String get trackProgressAsk => 'Pytaj';

  @override
  String get trackProgressAlways => 'Zawsze';

  @override
  String get dantotsuImport => 'Importuj z Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Wczytaj kopię ustawień Dantotsu (.ani albo zaszyfrowany .sani)';

  @override
  String get dantotsuPick => 'Wybierz kopię Dantotsu';

  @override
  String get dantotsuNothing => 'Nic z tego pliku nie da się zaimportować';

  @override
  String get dantotsuApply => 'Importuj zaznaczone';

  @override
  String dantotsuDone(int done, int total) {
    return 'Zaimportowano $done z $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Konta';

  @override
  String get dantotsuGroupAppearance => 'Wygląd';

  @override
  String get dantotsuGroupExtensions => 'Rozszerzenia';

  @override
  String get dantotsuGroupApp => 'Aplikacja';

  @override
  String get dantotsuGroupPlayer => 'Odtwarzacz';

  @override
  String get dantotsuAnilist => 'Logowanie do AniList';

  @override
  String get dantotsuMal => 'Logowanie do MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Motyw';

  @override
  String get dantotsuReposAnime => 'Repozytoria rozszerzeń anime';

  @override
  String get dantotsuReposManga => 'Repozytoria rozszerzeń mang';

  @override
  String get dantotsuReposNovel => 'Repozytoria rozszerzeń powieści';

  @override
  String get dantotsuUpdates => 'Sprawdzanie aktualizacji';

  @override
  String get dantotsuComments => 'Komentarze';

  @override
  String get dantotsuActivity => 'Odpytywanie powiadomień AniList';

  @override
  String get dantotsuDns => 'Dostawca DNS';

  @override
  String get dantotsuPlayer => 'Prędkość odtwarzacza i kolory napisów';

  @override
  String get dantotsuWarning =>
      'Ten plik zawiera tokeny logowania. Trzymaj go w tajemnicy.';

  @override
  String get novelIndent => 'Wcięcia akapitów';

  @override
  String get novelIndentDesc =>
      'Zaczynaj każdy akapit wcięciem w pierwszej linii';

  @override
  String get novelLetterSpacing => 'Odstępy między literami';

  @override
  String get novelSectionTranslate => 'Tłumaczenie';

  @override
  String get sectionExperimental => 'Eksperymentalne';

  @override
  String get kitsuGraphqlDetail => 'Szybsze strony szczegółów (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Wczytaj tytuł wraz z postaciami, ekipą i twoim wpisem jednym żądaniem';

  @override
  String get togetherTitle => 'Oglądanie razem';

  @override
  String get togetherIntro =>
      'Wklej link do pokoju, który wysłał ci znajomy. Dołączasz od razu, a odtwarzacz otworzy się, gdy zacznie oglądać.';

  @override
  String get togetherName => 'Twoje imię';

  @override
  String get togetherConnecting => 'Łączenie…';

  @override
  String get togetherLeave => 'Opuść pokój';

  @override
  String get togetherYou => 'Ty';

  @override
  String get togetherNoChat => 'Jeszcze nie ma wiadomości';

  @override
  String get togetherChatHint => 'Wiadomość';

  @override
  String get togetherCopyInvite => 'Kopiuj zaproszenie';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Skopiowano serwer i pokój';

  @override
  String get togetherConnectionLost => 'Utracono połączenie';

  @override
  String togetherConnectedTo(String room) {
    return 'Połączono z $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Nie udało się połączyć: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name dołączył(a)';
  }

  @override
  String togetherLeft(String name) {
    return '$name wyszedł(-ła)';
  }

  @override
  String togetherPaused(String name) {
    return '$name zapauzował(a)';
  }

  @override
  String togetherResumed(String name) {
    return '$name wznowił(a)';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name przeskoczył(a) do $time';
  }

  @override
  String get togetherFollowFailed =>
      'Nie udało się otworzyć odcinka hosta. Otwórz go sam.';

  @override
  String get togetherJoinRole => 'Dołącz do pokoju';

  @override
  String get togetherOpenHost => 'Otwórz odcinek hosta';

  @override
  String get togetherShowChat => 'Pokaż czat na żywo';

  @override
  String get togetherWaitingHost => 'Czekam, aż host uruchomi odcinek';

  @override
  String get togetherRoomLink => 'Link do pokoju';

  @override
  String get togetherBadLink => 'To nie jest link do pokoju';

  @override
  String get togetherHostClosed => 'Host zamknął pokój';

  @override
  String get togetherNowPlaying => 'Teraz odtwarzane';

  @override
  String togetherWatchingCount(int count) {
    return 'Ogląda: $count';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user chce zapauzować';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user chce wznowić';
  }

  @override
  String get togetherChip => 'Razem';

  @override
  String get togetherSettingsDesc => 'Dołącz do pokoju znajomego przez link';

  @override
  String get novelBilingual => 'Pokazuj oryginał i tłumaczenie';

  @override
  String get novelBilingualDesc =>
      'Każdy akapit pokazuje oryginalny tekst z tłumaczeniem pod spodem';

  @override
  String get novelTranslateTo => 'Tłumacz na';

  @override
  String get novelTranslateOff => 'Wyłączone';

  @override
  String get novelSectionSpeech => 'Zamiana tekstu na mowę';

  @override
  String get novelSpeechRate => 'Szybkość mowy';

  @override
  String get novelSpeechPitch => 'Wysokość mowy';

  @override
  String get novelSpeak => 'Czytaj na głos';

  @override
  String get novelSpeakStop => 'Przestań czytać na głos';

  @override
  String get novelTranslate => 'Przetłumacz rozdział';

  @override
  String get novelTranslateShowOriginal => 'Pokaż oryginał';

  @override
  String novelTranslateFailed(String error) {
    return 'Tłumaczenie nie powiodło się: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Zamiana tekstu na mowę jest niedostępna na tym urządzeniu';

  @override
  String get novelSpeechVoice => 'Głos';

  @override
  String get novelSpeechVoiceDefault => 'Domyślny systemowy';

  @override
  String get novelSpeakPrevious => 'Poprzednia linia';

  @override
  String get novelSpeakNext => 'Następna linia';

  @override
  String get novelTapPaging => 'Stuknij krawędzie, żeby przewrócić stronę';

  @override
  String get novelTapPagingDesc =>
      'Stuknij lewą lub prawą stronę, żeby przewinąć stronę, środek pokazuje sterowanie';

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
    return 'zostało $count min';
  }

  @override
  String get novelBold => 'Pogrubiony tekst';

  @override
  String get novelBoldDesc => 'Użyj grubszego kroju';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Skończono: $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Dalej: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Wcześniej: $chapter';
  }

  @override
  String get readerNoPages => 'Ten rozdział nie ma stron';

  @override
  String get readerLoadingPages => 'Wczytywanie stron…';

  @override
  String get readerSlowPage => 'Ta strona wciąż się wczytuje…';

  @override
  String get readerPageFailed => 'Nie udało się wczytać tej strony';

  @override
  String get playerShowComments => 'Pokaż komentarze';

  @override
  String get playerHideComments => 'Ukryj komentarze';

  @override
  String get playerSubtitles => 'Napisy';

  @override
  String get playerSubtitlesOff => 'Napisy wyłączone';

  @override
  String get playerAudio => 'Dźwięk';

  @override
  String get playerAddSubtitle => 'Dodaj plik napisów';

  @override
  String get playerAddAudio => 'Dodaj plik dźwiękowy';

  @override
  String get playerChapters => 'Rozdziały';

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
  String get playerNoChapters => 'Brak rozdziałów';

  @override
  String get playerTimestamp => 'Znacznik czasu';

  @override
  String get playerAutoPlayDelay => 'Odliczanie do następnego odcinka';

  @override
  String get playerWatchedAt => 'Zalicz jako obejrzane przy';

  @override
  String playerNextIn(int seconds) {
    return 'Następny odcinek za $seconds s';
  }

  @override
  String get playerPlayNow => 'Odtwórz teraz';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: zostanie automatycznie pominięte dla tego tytułu';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: nie zostanie automatycznie pominięte dla tego tytułu';
  }

  @override
  String get playerAudioLanguage => 'Preferowany język dźwięku';

  @override
  String get playerLanguageOrderHint =>
      'Rozdziel języki przecinkami. Użyty zostanie pierwszy znaleziony.';

  @override
  String get playerPip => 'Obraz w obrazie';

  @override
  String get playerAutoPip => 'Obraz w obrazie po wyjściu';

  @override
  String get playerAutoPipDesc =>
      'Odtwarzaj dalej w małym oknie, gdy wyjdziesz z aplikacji';

  @override
  String playerAutoPlaying(String title) {
    return 'Zaraz odtwarzam: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Nie udało się zainstalować shaderów: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Rozdział $number';
  }

  @override
  String get playerPerTitle => 'Tylko dla tego tytułu';

  @override
  String get playerPerTitleDesc =>
      'Zachowaj te opcje dla tego tytułu i zostaw domyślne w spokoju';

  @override
  String get playerSwapGestures => 'Zamień strony gestów';

  @override
  String get playerSwapGesturesDesc => 'Jasność po lewej, głośność po prawej';

  @override
  String get playerOpenBig => 'Otwieraj w dużym widoku';

  @override
  String get playerOpenBigDesc =>
      'Uruchamiaj odtwarzacz na pełnym ekranie, bez listy odcinków';

  @override
  String get playerPauseOnBlur => 'Pauza po utracie fokusu';

  @override
  String get playerPauseOnBlurDesc =>
      'Wstrzymuj, gdy aplikacja jest zasłonięta, np. panelem powiadomień, i wznów po powrocie';

  @override
  String get playerAudioOutput => 'Wyjście audio';

  @override
  String get fontAppDefault => 'Czcionka aplikacji';

  @override
  String get fontImport => 'Importuj czcionkę';

  @override
  String get fontSample => 'Zażółć gęślą jaźń';

  @override
  String get playerSubtitleDelay => 'Opóźnienie napisów';

  @override
  String get playerAudioDelay => 'Opóźnienie dźwięku';

  @override
  String get playerDelayReset => 'Resetuj';

  @override
  String get playerOnlineSubtitles => 'Napisy online';

  @override
  String get playerOnlineSearchHint => 'Tytuł i odcinek';

  @override
  String get playerOnlineNone => 'Nie znaleziono napisów';

  @override
  String playerOnlineFailed(String error) {
    return 'Wyszukiwanie napisów nie powiodło się: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Nie udało się pobrać tych napisów: $error';
  }

  @override
  String get playerOnlineMatch => 'Pasuje do tego pliku';

  @override
  String get playerOnlineEpisode => 'Dopasowanie odcinka';

  @override
  String playerOnlineDownloads(int count) {
    return 'Pobrań: $count';
  }

  @override
  String get playerSeekPreview => 'Podgląd przewijania';

  @override
  String get playerSeekPreviewDesc =>
      'Pokazuj mały podgląd klatki nad paskiem przewijania podczas przesuwania. Otwiera drugi dekoder niskiej rozdzielczości, więc zużywa dodatkowe dane przy streamach.';

  @override
  String get playerSettingsChip => 'Ustawienia';

  @override
  String get playerAudioDevice => 'Urządzenie audio';

  @override
  String get settingsDownloads => 'Pobrane';

  @override
  String get settingsDownloadsDesc => 'Odcinki offline, kolejka i tryb offline';

  @override
  String get downloadsTitle => 'Pobrane';

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
      'Zobacz kolejkę i wszystko zapisane na tym urządzeniu';

  @override
  String get downloadTitle => 'Pobierz';

  @override
  String get downloadAlready => 'Już pobrane albo w kolejce';

  @override
  String get downloadPickStream => 'Który stream pobrać?';

  @override
  String get downloadPickSubtitle => 'Które napisy pobrać?';

  @override
  String get downloadPickAudio => 'Którą ścieżkę dźwiękową pobrać?';

  @override
  String get downloadNoAudio => 'Bez dodatkowego dźwięku';

  @override
  String get downloadAudio => 'Dźwięk';

  @override
  String get downloadNoSubtitle => 'Bez napisów';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Ten stream to playlista HLS. Pobranie jej wymaga dodatku FFmpeg.';

  @override
  String get downloadSourceMissing =>
      'Źródło tego odcinka nie jest zainstalowane';

  @override
  String get downloadWaitingConnection => 'Czekam na połączenie';

  @override
  String get downloadSubtitles => 'Napisy';

  @override
  String get downloadDownloaded => 'Pobrano';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Usuń pobrany plik';

  @override
  String get downloadCancel => 'Anuluj';

  @override
  String get downloadPause => 'Wstrzymaj';

  @override
  String get downloadPaused => 'Wstrzymano';

  @override
  String get downloadResume => 'Wznów';

  @override
  String get downloadPauseAll => 'Wstrzymaj wszystko';

  @override
  String get downloadResumeAll => 'Wznów wszystko';

  @override
  String get downloadQueuedState => 'Czeka w kolejce';

  @override
  String get downloadResolving => 'Pobieranie streamu…';

  @override
  String get downloadUsedFallback =>
      'Brak pasującego streamu, użyto pierwszego';

  @override
  String get downloadTabQueue => 'Kolejka';

  @override
  String get downloadTabDone => 'Gotowe';

  @override
  String get downloadTabFailed => 'Niepowodzenia';

  @override
  String get downloadEmptyQueue => 'Nic się nie pobiera';

  @override
  String get downloadEmptyDone => 'Nic jeszcze nie pobrano';

  @override
  String get downloadEmptyFailed => 'Brak nieudanych pobrań';

  @override
  String get downloadNext => 'Następny odcinek';

  @override
  String downloadNextN(int count) {
    return 'Następne odcinki: $count';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Wszystkie nieobejrzane ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Ten zakres ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Wszystkie odcinki ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odcinka w kolejce',
      many: '$count odcinków w kolejce',
      few: '$count odcinki w kolejce',
      one: '1 odcinek w kolejce',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return 'Pobrano $name';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Nie udało się pobrać $name';
  }

  @override
  String downloadStorage(String size) {
    return 'Pobrane zajmują $size';
  }

  @override
  String get downloadQueueHeader => 'Kolejka';

  @override
  String get downloadParallel => 'Pobierania naraz';

  @override
  String get downloadParallelDesc => 'Pobieraj po jednym albo kilka naraz';

  @override
  String get downloadOneByOne => 'Po kolei';

  @override
  String get downloadNotifications => 'Powiadomienia o pobieraniu';

  @override
  String get downloadNotificationsDesc =>
      'Postęp na żywo tam, gdzie system to obsługuje, w przeciwnym razie notatka po zakończeniu pobierania';

  @override
  String get downloadNotifyLive => 'Na żywo';

  @override
  String get downloadNotifyDone => 'Po zakończeniu';

  @override
  String get downloadNotifyOff => 'Wyłączone';

  @override
  String get downloadInfoFile =>
      'Zapisuj plik informacyjny obok każdego pobrania';

  @override
  String get downloadInfoFileDesc =>
      'Zapisuje stream, jakość, napisy i czasy pominięć jako mały plik .json';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Auto przechodzi w tryb offline tylko wtedy, gdy aplikacja startuje bez połączenia. Zawsze zostaje offline, dopóki tego nie zmienisz.';

  @override
  String get offlineModeOff => 'Wyłączone';

  @override
  String get offlineModeAlways => 'Zawsze';

  @override
  String get offlineModeOn =>
      'Tryb offline jest włączony. Zmiany są zapisywane tutaj i wysyłane, gdy wrócisz online.';

  @override
  String get offlineSaved =>
      'Zapisano na tym urządzeniu, zsynchronizuje się, gdy będziesz online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zmiany zsynchronizowanej',
      many: '$count zmian zsynchronizowanych',
      few: '$count zmiany zsynchronizowane',
      one: '1 zmiana zsynchronizowana',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zmiany czeka na synchronizację',
      many: '$count zmian czeka na synchronizację',
      few: '$count zmiany czekają na synchronizację',
      one: '1 zmiana czeka na synchronizację',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Zmiany czekające na synchronizację';

  @override
  String get offlinePendingNone => 'Nic nie czeka';

  @override
  String get offlineSyncNow => 'Synchronizuj teraz';

  @override
  String get offlineDiscard => 'Odrzuć';

  @override
  String get downloadNotOffline =>
      'Ten odcinek nie jest pobrany, więc nie jest dostępny offline';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Następny rozdział';

  @override
  String downloadNextChapters(int count) {
    return 'Następne rozdziały: $count';
  }

  @override
  String downloadUnread(int count) {
    return 'Wszystkie nieprzeczytane ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Wszystkie rozdziały ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total stron';
  }

  @override
  String downloadPagesCount(int count) {
    return 'Stron: $count';
  }

  @override
  String get downloadFfmpegTitle => 'Wymagany dodatek FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'Ten stream to playlista HLS. Dodatek FFmpeg skleja jej kawałki w jeden plik mp4. Bez niego kawałki zostają w folderze odcinka i stamtąd są odtwarzane.';

  @override
  String get downloadFfmpegInstall => 'Zainstaluj';

  @override
  String get downloadFfmpegInstalling =>
      'Instalowanie FFmpeg, to może chwilę potrwać…';

  @override
  String get downloadFinishing => 'Sklejanie kawałków w jeden plik…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total części';
  }

  @override
  String get downloadTorrentNoFile => 'Torrent nie ma pliku wideo do pobrania';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pobieranie $count elementu',
      many: 'Pobieranie $count elementów',
      few: 'Pobieranie $count elementów',
      one: 'Pobieranie 1 elementu',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Usuwaj obejrzane pobrania';

  @override
  String get downloadAutoDeleteDesc =>
      'Usuwa pobrany plik, gdy twój postęp dojdzie do tego odcinka lub rozdziału';

  @override
  String get downloadConnections => 'Połączenia na pobranie';

  @override
  String get downloadConnectionsDesc =>
      'Dzieli duży plik na części pobierane jednocześnie. Niektóre serwery to ograniczają.';

  @override
  String get downloadPlayChoice => 'Odtwarzaj z';

  @override
  String get downloadPlayLocalDesc => 'Plik zapisany na tym urządzeniu';

  @override
  String get downloadPlayStream => 'Streamuj online';

  @override
  String get downloadPlayStreamDesc => 'Wczytaj odcinek ze źródła';

  @override
  String get offlineFeedTitle => 'Pobrano na tym urządzeniu';

  @override
  String get offlineFeedEmpty =>
      'Pobierz coś, gdy jesteś online, a pojawi się tutaj';

  @override
  String get offlineEnabled => 'Tryb offline jest włączony';

  @override
  String get offlineDisabled => 'Tryb offline jest wyłączony';

  @override
  String get downloadReadChoice => 'Czytaj z';

  @override
  String get downloadReadLocalDesc => 'Strony zapisane na tym urządzeniu';

  @override
  String get downloadReadOnline => 'Czytaj online';

  @override
  String get downloadReadOnlineDesc => 'Wczytaj rozdział ze źródła';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Usunąć $name z tego urządzenia?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Anulować pobieranie $name? To, co już pobrano, zostanie usunięte.';
  }

  @override
  String get downloadFfmpegFolder => 'Zachowaj jako folder';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Odrzucić $count zmiany, które nigdy nie zostały wysłane? Tego nie da się cofnąć.',
      many:
          'Odrzucić $count zmian, które nigdy nie zostały wysłane? Tego nie da się cofnąć.',
      few:
          'Odrzucić $count zmiany, które nigdy nie zostały wysłane? Tego nie da się cofnąć.',
      one:
          'Odrzucić zmianę, która nigdy nie została wysłana? Tego nie da się cofnąć.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Czekam na Wi-Fi';

  @override
  String get downloadWaitingMetered =>
      'Wstrzymano na połączeniu z limitem danych';

  @override
  String get downloadWifiOnly => 'Tylko Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Pobierania czekają, gdy korzystasz z danych mobilnych';

  @override
  String get downloadMetered => 'Wstrzymuj na połączeniach z limitem danych';

  @override
  String get downloadMeteredDesc =>
      'Czeka też na Wi-Fi, które twoje urządzenie oznacza jako z limitem danych';

  @override
  String get downloadSpeedLimit => 'Limit prędkości';

  @override
  String get downloadSpeedLimitDesc => 'Ogranicza łączną prędkość pobierania';

  @override
  String get downloadUnlimited => 'Bez limitu';

  @override
  String get downloadMoveToTop => 'Przenieś na górę';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seedów · $peers peerów';
  }

  @override
  String get downloadTorrentFile => 'Który plik?';

  @override
  String get downloadTorrentAuto => 'Dopasuj odcinek automatycznie';

  @override
  String get downloadTorrentLoading => 'Czytanie torrenta…';

  @override
  String get watchAutoSource => 'Przełączaj na następne źródło automatycznie';

  @override
  String get watchAutoSourceDesc =>
      'Jeśli źródło nie może znaleźć tytułu albo się nie wczyta, spróbuj następnego zainstalowanego źródła';

  @override
  String get extensionTest => 'Testuj rozszerzenia';

  @override
  String get extensionTestCopy => 'Skopiuj błędy i ich logi';

  @override
  String get extensionTestQuery => 'Szukana fraza';

  @override
  String get extensionTestRun => 'Uruchom';

  @override
  String get extensionTestStop => 'Zatrzymaj';

  @override
  String get extensionTestNone => 'Brak zainstalowanych rozszerzeń tego typu';

  @override
  String get extensionTestNotRun => 'Jeszcze nie przetestowano';

  @override
  String get extensionTestSearch => 'Szukaj';

  @override
  String get extensionTestDetail => 'Szczegóły';

  @override
  String get extensionTestUnits => 'Odcinki / rozdziały';

  @override
  String get extensionTestLinks => 'Streamy / strony';

  @override
  String extensionTestFailedAt(String step) {
    return 'Niepowodzenie na etapie: $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return 'Przetestowano $done z $total · udane: $passed · nieudane: $failed';
  }

  @override
  String get extensionTestCopyLogs => 'Skopiuj wszystko z pełnymi logami';

  @override
  String get onboardingFeaturesTitle => 'Wszystko w jednym miejscu';

  @override
  String get onboardingFeaturesBody =>
      'Wszystko, co śledzisz, oglądasz i czytasz, bez żonglowania aplikacjami.';

  @override
  String get onboardingFeatureTrack => 'Śledź wszystko';

  @override
  String get onboardingFeatureTrackDesc =>
      'Listy, postęp i oceny w AniList, MyAnimeList, Simkl, Kitsu i MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Oglądaj i czytaj';

  @override
  String get onboardingFeatureWatchDesc =>
      'Instaluj rozszerzenia i streamuj anime albo czytaj mangi i powieści prosto w aplikacji.';

  @override
  String get onboardingFeatureOffline => 'Weź to offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Pobieraj odcinki i rozdziały i korzystaj dalej bez połączenia.';

  @override
  String get onboardingFeatureSync => 'Synchronizuj listy';

  @override
  String get onboardingFeatureSyncDesc =>
      'Odbijaj swoją listę między serwisami albo pozwól wygrać temu, który jest dalej.';

  @override
  String get onboardingServices => 'Działa z';

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

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
  String get trakt => 'Trakt';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get comick => 'Comick';

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
  String get appLockBiometric => 'Odblokuj za pomocą danych biometrycznych';

  @override
  String get appLockBiometricDesc =>
      'Zamiast wpisywać hasło, użyj odcisku palca lub twarzy';

  @override
  String get appLockBiometricReason => 'Odblokuj Dartotsu';

  @override
  String get appLockDelay => 'Blokuj w stanie bezczynności';

  @override
  String get appLockDelayAlways => 'Zawsze';

  @override
  String get appLockDelayNever => 'Nigdy';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minut',
      one: '1 minuta',
    );
    return 'Po $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Korzystaj z biometrii';

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
      other: 'Dostępne aktualizacje $count',
      one: 'Dostępna jest 1 aktualizacja',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Zaktualizuj wszystko';

  @override
  String extensionsUpdated(int done, int total) {
    return 'Zaktualizowano $done z $total rozszerzeń';
  }

  @override
  String get updateConflictTitle => 'Aktualizacja nie została zainstalowana';

  @override
  String updateConflictBody(String names) {
    return 'Nie można zainstalować $names w istniejącej wersji. Zwykle oznacza to, że zainstalowana kopia została podpisana inaczej. Odinstalować i zainstalować nową wersję?';
  }

  @override
  String get updateConflictAction => 'Odinstaluj i zainstaluj ponownie';

  @override
  String get noSourceSettings => 'To źródło nie ma żadnych ustawień';

  @override
  String get addPluginRepository => 'Dodaj repozytorium wtyczek';

  @override
  String get pluginIndexUrlHint => 'URL indeksu wtyczek';

  @override
  String get addRepository => 'Dodaj repozytorium';

  @override
  String get importRepositoryFile => 'Zaimportuj plik';

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
  String get manageServices => 'Usługi medialne';

  @override
  String get manageServicesDesc =>
      'Zmień kolejność usług i wybierz, które pojawią się w selektorze';

  @override
  String get manageServicesHint =>
      'Przeciągnij, aby zmienić kolejność i wyłączyć te, których nie używasz';

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
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

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
  String get stories => 'Historie';

  @override
  String get watchOrder => 'Oglądaj porządek';

  @override
  String get watchOrderOpenSite => 'Otwórz na chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Nie znaleziono kolejności oglądania dla tego tytułu';

  @override
  String get watchOrderOpenFailed => 'Nie udało się otworzyć tego tytułu';

  @override
  String get watchOrderCurrent => 'Jesteś tutaj';

  @override
  String get watchOrderCredit => 'Oglądaj zamówienia na chiaki.site';

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
  String get settingsSync => 'Synchronizuj ustawienia';

  @override
  String get settingsSyncDesc =>
      'Zachowaj takie same ustawienia na każdym urządzeniu. Są one przechowywane w prywatnej wiadomości na Twoim koncie GitHub';

  @override
  String get settingsSyncSwitch => 'Synchronizuj po zmianie';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Zaloguj się w GitHubie';

  @override
  String get settingsSyncSignInDesc =>
      'Ustawienia są przechowywane w prywatnej wiadomości na Twoim koncie';

  @override
  String get settingsSyncToken => 'Użyj osobistego tokenu dostępu';

  @override
  String get settingsSyncTokenDesc =>
      'Utwórz go na github.com/settings/tokens, mając tylko podstawowe uprawnienia';

  @override
  String get settingsSyncTokenField => 'Żeton';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Zalogowano jako $user';
  }

  @override
  String get settingsSyncSignOut => 'Wyloguj się';

  @override
  String settingsSyncCode(Object code) {
    return 'Wpisz $code w GitHubie';
  }

  @override
  String get settingsSyncCodeDesc =>
      'Strona GitHub została otwarta w Twojej przeglądarce. Stuknij, aby skopiować kod, lub stuknij i przytrzymaj, aby anulować.';

  @override
  String get settingsSyncSignInFailed => 'Nie można zalogować się do GitHuba';

  @override
  String get dcPreview => 'Podgląd';

  @override
  String get dcSampleWatching => 'Oglądanie';

  @override
  String get dcSampleReading => 'Czytanie';

  @override
  String get dcSampleBrowsing => 'Przeglądanie';

  @override
  String get dcSampleLive => 'Właśnie teraz';

  @override
  String get dcLiveNothing =>
      'W tej chwili nic się nie wyświetla. Otwórz tytuł, rozpocznij odcinek lub rozdział, a pojawi się on tutaj.';

  @override
  String get dcMemberList => 'Na liście członków';

  @override
  String get dcAccount => 'Konto';

  @override
  String get dcSignIn => 'Zaloguj się za pomocą Discorda';

  @override
  String get dcSignOut => 'Wyloguj się';

  @override
  String get dcDesktopHint =>
      'Bez połączenia Discord wyświetla „Oglądanie Dartotsu” w aplikacji komputerowej. Połącz się z Discordem, aby nazwać aktywność po tytule, także na telefonie komórkowym.';

  @override
  String get dcMobileHint =>
      'Połącz się z Discordem, aby pokazać, co oglądasz lub czytasz. Używa strony autoryzacji Discorda, a nie tokena Twojego konta.';

  @override
  String get dcConnect => 'Połącz Discorda';

  @override
  String get dcConnectDesc =>
      'Otwiera stronę autoryzacji Discorda i dodaje Dartotsu w sekcji Autoryzowane aplikacje. Discord prosi o aktualizację Twojej obecności. Zapisywany jest tylko token odświeżania, a nie token Twojego konta.';

  @override
  String get dcConnectFailed => 'Nie można połączyć Discorda';

  @override
  String get dcConnectedSnack => 'Discord podłączony';

  @override
  String get dcDisconnect => 'Rozłącz';

  @override
  String get dcDisconnectedSnack => 'Discord rozłączony';

  @override
  String get dcUseToken => 'Zamiast tego użyj tokena';

  @override
  String get dcRouteDesktop =>
      'Za pośrednictwem aplikacji komputerowej Discord';

  @override
  String get dcRouteHeadless => 'Przez Twoje konto';

  @override
  String get dcRouteGateway => 'Za pośrednictwem swojego konta, na żywo';

  @override
  String get dcRouteLinked => 'Połączona aplikacja';

  @override
  String get dcRouteNone => 'Nie podłączony';

  @override
  String get dcStatusNeedsToken =>
      'Potrzebuje tokena Discord. Podłączenie aplikacji nie powoduje ustawienia Twojego statusu online.';

  @override
  String get dcAccountOnly => 'Wymaga zalogowanego konta';

  @override
  String get dcStatusSection => 'Stan';

  @override
  String get dcControlStatus => 'Kontroluj mój status';

  @override
  String get dcControlStatusDesc =>
      'Utrzymuje aktywne połączenie z Discordem, gdy włączona jest funkcja Rich Presence, dzięki czemu Dartotsu może ustawić Twój status.';

  @override
  String get dcStatusOnline => 'W Internecie';

  @override
  String get dcStatusIdle => 'Bezczynny';

  @override
  String get dcStatusDnd => 'Nie przeszkadzaj';

  @override
  String get dcStatusInvisible => 'Niewidzialny';

  @override
  String get dcCustomStatus => 'Stan niestandardowy';

  @override
  String get dcCustomStatusHint => 'Co robisz?';

  @override
  String get dcActivitySection => 'Działalność';

  @override
  String get dcShowWatching => 'Pokaż podczas oglądania';

  @override
  String get dcShowReading => 'Pokaż podczas czytania';

  @override
  String get dcListening => 'Słuchanie';

  @override
  String get dcCompeting => 'Konkurowanie';

  @override
  String get dcActivityName => 'Nazwa działania';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Tytuł';

  @override
  String get dcNameCustom => 'Niestandardowe';

  @override
  String get dcCustomNameHint => 'Imię i nazwisko wyświetlane po „Oglądaniu”';

  @override
  String get dcStatusText => 'Tekst stanu';

  @override
  String get dcStatusTextDesc =>
      'Co lista członków pokazuje obok Twojego imienia i nazwiska';

  @override
  String get dcDisplayName => 'Imię';

  @override
  String get dcDisplayState => 'Stan';

  @override
  String get dcDisplayDetails => 'Szczegóły';

  @override
  String get dcTextSection => 'Tekst';

  @override
  String get dcDetails => 'Górna linia';

  @override
  String get dcState => 'Konkluzja';

  @override
  String get dcTemplateHint => 'Pusty używa wartości domyślnej';

  @override
  String get dcVariables => 'Kliknij, aby wstawić wartość';

  @override
  String get dcImagesSection => 'Obrazy';

  @override
  String get dcLargeImage => 'Duży obraz';

  @override
  String get dcLargeAuto => 'Automat';

  @override
  String get dcLargeCover => 'Okładka';

  @override
  String get dcLargeLogo => 'Logo';

  @override
  String get dcSmallImage => 'Mały obraz';

  @override
  String get dcSmallAuto => 'Logo';

  @override
  String get dcSmallNone => 'Żadne';

  @override
  String get dcTimerStyle => 'Styl timera';

  @override
  String get dcTimerAuto => 'Automat';

  @override
  String get dcTimerElapsed => 'Upłynął';

  @override
  String get dcTimerRemaining => 'Pozostało';

  @override
  String get dcButtonsSection => 'Guziki';

  @override
  String get dcButtonMedia => 'Link do tytułu';

  @override
  String get dcButtonApp => 'Link do Dartotsu';

  @override
  String get dcButtonCustom => 'Przycisk niestandardowy';

  @override
  String get dcButtonLabel => 'Etykieta';

  @override
  String get dcButtonUrl => 'Link';

  @override
  String get dcPrivacySection => 'Prywatność';

  @override
  String get dcPrivateText => 'Tekst prywatny';

  @override
  String get dcPrivateHint => 'Coś prywatnego';

  @override
  String get dcTokenWarning =>
      'Logowanie wykorzystuje Twój token konta. Zasady Discorda tego odradzają, więc korzystasz z niego na własne ryzyko.';

  @override
  String get dcConnected => 'Połączono';

  @override
  String get dcConnection => 'Połączenie';

  @override
  String get dcMethodDesktop => 'Aplikacja komputerowa Discord';

  @override
  String get dcMethodDesktopDesc =>
      'Używane automatycznie, gdy nic innego nie jest podłączone. Discord musi być otwarty na tym komputerze.';

  @override
  String get dcMethodToken => 'Token konta';

  @override
  String get dcInUse => 'W użyciu';

  @override
  String get dcRecommended => 'Zalecane';

  @override
  String get dcConnecting => 'Łączę…';

  @override
  String get dcDisconnected => 'Nie podłączony';

  @override
  String dcSignedInAs(String name) {
    return 'Zalogowano jako $name';
  }

  @override
  String get settingsSyncOn => 'Włączone';

  @override
  String get settingsSyncCustom => 'Niestandardowe';

  @override
  String get settingsSyncChangedHeader => 'Zmienione ustawienia';

  @override
  String get settingsSyncNoneChanged =>
      'Nie zmieniłeś jeszcze żadnego z nich, więc nie ma nic do synchronizacji.';

  @override
  String get settingsSyncChangedOnly =>
      'Zapisywane są tylko ustawienia, które zmieniłeś. Wszystko inne używa ustawień domyślnych na każdym urządzeniu. Ikona chmury pokazuje, co już znajduje się na serwerze.';

  @override
  String get settingsSyncOffCategory =>
      'Brak synchronizacji. Pozostają one na tym urządzeniu, a kopia serwerowa pozostaje bez zmian.';

  @override
  String get settingsSyncPartsNote =>
      'Na urządzenie. Opcja Wyłączona powoduje zachowanie wartości każdego urządzenia, więc telefon i telewizor mogą się różnić.';

  @override
  String get settingsSyncPartSubtitles => 'Rozmiar i kolory napisów';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Rozmiar, waga, kolory i położenie';

  @override
  String get settingsSyncPartPictureColors => 'Kolory obrazu';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Jasność, kontrast, nasycenie, gamma, odcień i HDR';

  @override
  String get settingsSyncPartPalette => 'Kolory motywu';

  @override
  String get settingsSyncPartPaletteDesc =>
      'Motyw, kolor akcentujący i czerń OLED';

  @override
  String get settingsSyncCatOther => 'Oglądaj, czytaj i korzystaj z usług';

  @override
  String get settingsSyncTitles => 'Obserwuj postępy i tytuły';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records tytuły i $resume wznowienia wpisów na serwerze';
  }

  @override
  String get settingsSyncTitlesNone => 'Jeszcze nic nie zostało przesłane';

  @override
  String get settingsSyncTitlesNote =>
      'Oglądaj i czytaj pozycje, półkę z CV, listy lokalne, zakładki, wyróżnienia i opcje poszczególnych tytułów. Dopasowania źródłowe i strumienie pozostają na każdym urządzeniu, ponieważ zależą od Twoich rozszerzeń. Tytuły przesyłane są maksymalnie co 45 sekund.';

  @override
  String get settingsSyncConnect => 'Nie podłączony';

  @override
  String get settingsSyncConnectDesc =>
      'Zaloguj się w GitHub, aby zachować takie same ustawienia na każdym urządzeniu.';

  @override
  String get settingsSyncFailedTitle => 'Synchronizacja nie powiodła się';

  @override
  String get settingsSyncPaused => 'Wstrzymano';

  @override
  String get settingsSyncPausedDesc =>
      'Gdy ta opcja jest wyłączona, nic nie jest przesyłane ani pobierane.';

  @override
  String get settingsSyncUpToDate => 'Aktualne';

  @override
  String get settingsSyncRetry => 'Spróbuj ponownie';

  @override
  String get settingsSyncAccount => 'Konto GitHuba';

  @override
  String get settingsSyncAccountDesc =>
      'Twoje dane trafiają do prywatnego konta na Twoim koncie.';

  @override
  String get settingsSyncWaiting => 'Czekam na zatwierdzenie w GitHub';

  @override
  String get settingsSyncCopyCode => 'Kliknij kod, aby go skopiować';

  @override
  String get settingsSyncCancel => 'Anuluj';

  @override
  String get settingsSyncStatSettings => 'Ustawienia';

  @override
  String get settingsSyncStatTitles => 'Tytuły';

  @override
  String get settingsSyncStatShelf => 'Wznów';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Przesłano $time z $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zmieniony',
      one: '1 zmieniony',
      zero: 'Nic się jeszcze nie zmieniło',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Konta i hasła';

  @override
  String get settingsSyncSecretsDesc =>
      'Zsynchronizuj swoje dane logowania (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), klucze API i blokadę aplikacji między swoimi urządzeniami. Są szyfrowane hasłem, które pozostaje na Twoich urządzeniach, więc GitHub nigdy ich nie widzi.';

  @override
  String get settingsSyncSecretsOn => 'Konta są synchronizowane i szyfrowane';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Wylogowanie się na jednym urządzeniu nie powoduje wylogowania na pozostałych.';

  @override
  String get settingsSyncSecretsBroken =>
      'Hasło nie jest już zgodne z hasłem na serwerze. Wprowadź go ponownie, aby kontynuować synchronizację kont.';

  @override
  String get settingsSyncPassphraseSet => 'Ustaw hasło';

  @override
  String get settingsSyncPassphraseEnter => 'Wprowadź swoje hasło';

  @override
  String get settingsSyncPassphraseField => 'Hasło';

  @override
  String get settingsSyncPassphraseConfirm => 'Powtórz hasło';

  @override
  String get settingsSyncPassphraseNew =>
      'Wybierz hasło składające się z co najmniej 6 znaków. Nie są one przechowywane nigdzie poza Twoimi urządzeniami i nie można ich odzyskać. Jeśli o tym zapomnisz, usuń kopię serwera i zacznij od nowa.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Wprowadź hasło wybrane na drugim urządzeniu. Konta na tym urządzeniu zostaną zastąpione kontami zsynchronizowanymi.';

  @override
  String get settingsSyncPassphraseWrong => 'Błędne hasło';

  @override
  String get settingsSyncPassphraseMismatch => 'Hasła nie pasują';

  @override
  String get settingsSyncPassphraseShort => 'Użyj co najmniej 6 znaków';

  @override
  String get settingsSyncSecretsStop => 'Zatrzymaj synchronizację kont';

  @override
  String get settingsSyncSecretsDelete => 'Usuń z GitHuba';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Spowoduje to usunięcie zaszyfrowanego pliku kont z Twojej istoty. Inne urządzenia zachowują swoje dane logowania i mogą ustawić nowe hasło.';

  @override
  String get settingsSyncWhat => 'Co synchronizować';

  @override
  String get settingsSyncServer => 'Na serwerze';

  @override
  String get settingsSyncServerEmpty => 'Jeszcze nic nie zostało przesłane';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return 'Ustawienia $count, przesłane $time z $device';
  }

  @override
  String get settingsSyncThisDevice => 'to urządzenie';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ustawienia na serwerze',
      one: '1 ustawienie na serwerze',
      zero: 'Nic na serwerze',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Zsynchronizuj teraz';

  @override
  String get settingsSyncRunning => 'Synchronizowanie…';

  @override
  String get settingsSyncNever => 'Jeszcze nie zsynchronizowane';

  @override
  String settingsSyncLast(Object time) {
    return 'Ostatnia synchronizacja $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Synchronizacja nie powiodła się: $error';
  }

  @override
  String get settingsSyncScope =>
      'Synchronizowane są tylko ustawienia, które wszędzie działają tak samo. Konta, tokeny, foldery, rozszerzenia, powiadomienia, Discord, aktualizacje i rozmiar okna pozostają na każdym urządzeniu.';

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
  String get autoUpdateRuntimes =>
      'Automatycznie aktualizuj środowisko wykonawcze rozszerzeń';

  @override
  String get autoUpdateRuntimesDesc =>
      'Pobierz nowe wersje Aniyomi, CloudStream i inne wersje uruchomieniowe w tle. Wyłączone, zamiast tego obok menedżera pojawia się ikona aktualizacji.';

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
  String get backupPasswordRequired => 'Hasło (wymagane dla danych konta)';

  @override
  String get backupProtectedNeedsPassword =>
      'Ustaw hasło do tworzenia kopii zapasowej danych konta lub odznacz je';

  @override
  String get backupProtectedSkipped =>
      'Ta kopia zapasowa nie ma hasła, więc dane konta zostały pominięte';

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
  String get logDelete => 'Usuń pliki dziennika';

  @override
  String get logDeleteDesc =>
      'Wyczyść zapisane dzienniki aplikacji, aby zwolnić miejsce';

  @override
  String logDeleted(String size) {
    return 'Usunięto $size dzienników';
  }

  @override
  String get missingSequel => 'Brakująca kontynuacja';

  @override
  String get rising => 'Powstanie';

  @override
  String get stacks => 'Stosy';

  @override
  String get stacksAll => 'Wszystko';

  @override
  String get stacksFeatured => 'Polecane';

  @override
  String get stacksMine => 'Twój';

  @override
  String get stacksSaved => 'Zapisano';

  @override
  String get stacksFollowing => 'Śledzenie';

  @override
  String get stacksEmpty => 'Nie ma tu jeszcze stosów';

  @override
  String get stacksSignIn =>
      'Zaloguj się do MangaBaka, aby zobaczyć swoje stosy';

  @override
  String get stacksScopeNeeded =>
      'Twoje stosy wymagają nowego pozwolenia. Zaloguj się ponownie do MangaBaka, aby na to pozwolić.';

  @override
  String get stacksSignInAgain => 'Zaloguj się ponownie';

  @override
  String get stacksCouldntLoad => 'Nie udało się wczytać stosów';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seria $count',
      one: '1 seria',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zapisuje',
      one: '1 zapisz',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'przez $name';
  }

  @override
  String get stackSpoilers => 'Spoilery';

  @override
  String get stackEmptyEntries => 'Ten stos jest pusty';

  @override
  String get stackSave => 'Zapisz stos';

  @override
  String get stackUnsave => 'Usuń z zapisanych';

  @override
  String get stackSavedToast => 'Zapisano w Twoich stosach';

  @override
  String get stackRemovedToast => 'Usunięto z zapisanych stosów';

  @override
  String userStacks(String name) {
    return 'Stosy autorstwa $name';
  }

  @override
  String get newsTitle => 'Wiadomości';

  @override
  String get newsEmpty => 'Brak wiadomości w tej chwili';

  @override
  String get newsCouldntLoad => 'Nie udało się wczytać wiadomości';

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
  String get followCoverMediaOnly => 'Tylko dla mediów';

  @override
  String get followCoverMediaOnlyDesc =>
      'Postępuj zgodnie z okładką na stronach mediów, wszędzie indziej zachowane są normalne kolory';

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
  String get proxy => 'Pełnomocnik';

  @override
  String get proxyProtocol => 'Typ';

  @override
  String get proxyHost => 'Gospodarz';

  @override
  String get proxyPort => 'Portu';

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
  String get imageTitlePage => 'Strona';

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
  String get supportDeveloper => 'Wesprzyj programistę';

  @override
  String get buyMeCoffee => 'Kup mi kawę';

  @override
  String get upiId => 'Identyfikator UPI';

  @override
  String get upiCopied => 'Skopiowano identyfikator UPI';

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
  String get onboardingLanguageBody =>
      'Wybierz język, w jakim wyświetlany jest Dartotsu. Możesz go później zmienić w Ustawieniach.';

  @override
  String get onboardingPaletteTitle => 'Dopasuj do siebie';

  @override
  String get onboardingPaletteBody =>
      'Wybierz paletę. Wszystkie akcenty, od kart po odtwarzacz, dopasują się do niej.';

  @override
  String get themeModeAuto => 'Automat';

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
    return 'Rozdział $n';
  }

  @override
  String get calendarExpected => 'Oczekiwane';

  @override
  String get castReceiverFailed => 'Chromecast nie uruchomił odtwarzacza';

  @override
  String get castPlaybackFailed =>
      'Urządzenie nie mogło odtworzyć tego strumienia';

  @override
  String get shortcutNothingToContinue =>
      'Nie ma jeszcze nic, co można by kontynuować';

  @override
  String shortcutNoCalendar(String service) {
    return '$service nie ma kalendarza';
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
  String get listFilterFormat => 'Sformatuj';

  @override
  String get listFilterStatus => 'Stan';

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
  String get comickLoginFailed => 'Logowanie do komiksu nie powiodło się';

  @override
  String get tagline => 'Hasło';

  @override
  String get trending => 'Trendy';

  @override
  String get anticipated => 'Przewidywany';

  @override
  String get watchlist => 'Lista obserwowanych';

  @override
  String get recommendedShows => 'Polecane programy';

  @override
  String get recommendedMovies => 'Polecane filmy';

  @override
  String get boxOffice => 'Kasa fiskalna';

  @override
  String get popularMovies => 'Popularne filmy';

  @override
  String get popularShows => 'Popularne programy';

  @override
  String get anticipatedMovies => 'Wyczekiwane filmy';

  @override
  String get anticipatedShows => 'Wyczekiwane pokazy';

  @override
  String get trendingShows => 'Popularne programy';

  @override
  String get mostWatchedThisWeek => 'Najczęściej oglądane w tym tygodniu';

  @override
  String get sortMostViewed => 'Najczęściej oglądane';

  @override
  String get sortMostFollowed => 'Większość poszła za nimi';

  @override
  String get sortLatestUpdates => 'Najnowsze aktualizacje';

  @override
  String get translationStatusLabel => 'Tłumaczenie';

  @override
  String get weeklySchedule => 'Harmonogram tygodniowy';

  @override
  String get mostFollowed => 'Najczęściej obserwowane';

  @override
  String get latestUpdates => 'Najnowsze aktualizacje';

  @override
  String get trendingAnime => 'Popularne anime';

  @override
  String get topRatedAnime => 'Najwyżej oceniane anime';

  @override
  String get mostFollowedAnime => 'Najczęściej obserwowane anime';

  @override
  String get comickProfile => 'Profil komiksowy';

  @override
  String get refreshFromComick => 'Odśwież z komiksu';

  @override
  String get mangaBakaProfile => 'Profil MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Odśwież z MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Zaloguj się do MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'Profil MangaUpdates';

  @override
  String get mangaUpdatesAnimeStart => 'Rozpoczyna się adaptacja anime';

  @override
  String get mangaUpdatesAnimeEnd => 'Adaptacja anime dobiega końca';

  @override
  String get refreshFromMangaUpdates => 'Odśwież z MangaUpdates';

  @override
  String get usernameOnly => 'Nazwa użytkownika';

  @override
  String get releases => 'Wydania';

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
  String get hideNsfwSourcesDesc =>
      'Ukryj źródła oznaczone jako 18+ przed kanałami i selektorem źródeł. Pozostają zainstalowane.';

  @override
  String get hideNsfwDesc =>
      'Trzymaj tytuły dla dorosłych z dala od kanałów i wyszukiwania, a swoje wpisy dla dorosłych pokaż w Ukrytych mediach.';

  @override
  String get kitsuAccountOptions => 'Opcje konta Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Opcje konta MangaBaka';

  @override
  String get comickAccountOptions => 'Opcje konta Comick';

  @override
  String get comickClientId => 'Komiksowy identyfikator klienta';

  @override
  String get comickClientIdDesc =>
      'Niestandardowy identyfikator klienta zarejestrowany na stronie komiks.dev';

  @override
  String get traktClientId => 'Trakt Client ID';

  @override
  String get traktClientIdDesc =>
      'Sign in with your own Trakt app instead of the built-in one';

  @override
  String get traktCreateApp => 'Create a Trakt app';

  @override
  String get traktCreateAppDesc => 'Opens your apps on trakt.tv';

  @override
  String traktRedirectHelp(String uris) {
    return 'On trakt.tv/oauth/applications create an app and add these Redirect URIs, one per line:\n\n$uris\n\nThen paste its Client ID here, save and sign in again.';
  }

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
  String get traktReadOnly => 'Trakt przyznał dostęp tylko do odczytu';

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
  String get followsMutual => 'Wzajemne';

  @override
  String get followsNotMutual => 'Nie wzajemne';

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
  String get voiceActors => 'Aktorzy głosowi';

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
  String get prequel => 'Prequel';

  @override
  String get sequel => 'Kontynuacja';

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
  String get traktProfile => 'Profil Traktu';

  @override
  String get refreshFromSimkl => 'Odśwież z Simkl';

  @override
  String get refreshFromTrakt => 'Odśwież z Trakt';

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
  String get traktAttribution =>
      'Dane i grafiki dostarczone przez Trakt. Zobacz na Trakt';

  @override
  String get listsLiked => 'Podobało się';

  @override
  String get listsYours => 'Twój';

  @override
  String get traktVip => 'VIP-a';

  @override
  String get traktVipMember => 'Członek VIP Trakt';

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
  String get simklMoviesOnly => 'Tylko filmy i seriale';

  @override
  String get simklMoviesOnlyDesc =>
      'Zastępuje kartę Anime: najpierw filmy, a następnie programy kilkoma wierszami anime';

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
  String get trailerQuality => 'Jakość przyczepy';

  @override
  String get titleCopied => 'Skopiowano tytuł';

  @override
  String get linkCopied => 'Skopiowano link';

  @override
  String get watchTrailer => 'Obejrzyj zwiastun';

  @override
  String get copyTitle => 'Kopiuj tytuł';

  @override
  String get detailStale =>
      'Nie udało się uzyskać połączenia z AniList. Są to informacje zapisane i mogą być nieaktualne.';

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
  String get allCustomLists => 'Wszystkie listy niestandardowe';

  @override
  String get simklTitleLanguage => 'Język tytułów anime';

  @override
  String get titleLanguageEnglish => 'Angielski';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Trendy';

  @override
  String get simklListsMostLiked => 'Najbardziej lubiany';

  @override
  String get simklListsMostFollowed => 'Większość poszła za nimi';

  @override
  String get simklListsOfficial => 'Oficjalny';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tytuły',
      one: '1 tytuł',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Ludzie';

  @override
  String get mostComments => 'Większość komentarzy';

  @override
  String get alphabetical => 'Alfabetycznie';

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
  String get notInList => 'Nie na liście';

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
  String get preset => 'Wstępnie ustawione';

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
  String get animePlanetRank => 'Ranga';

  @override
  String get animePlanetMagazine => 'Magazyn';

  @override
  String get animePlanetRefreshLists => 'Odśwież swoje listy';

  @override
  String get animePlanetRefreshListsDesc =>
      'Przeczytaj jeszcze raz swoje listy Anime-Planet';

  @override
  String get animePlanetLocalNote =>
      'Zaloguj się, aby zapisać zmiany na swoim koncie Anime-Planet. Do tego czasu pozostają na tym urządzeniu';

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
  String get status => 'Stan';

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
  String get firstTab => 'Pierwsza zakładka';

  @override
  String get firstTabDesc =>
      'Jakie rozszerzenia pokazuje pierwsza karta. Wybierz mangę tutaj i powieść na karcie czytania, aby usunąć anime z paska';

  @override
  String get novelExtensions => 'Nowe rozszerzenia';

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
  String get format => 'Sformatuj';

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
  String get year => 'Rok';

  @override
  String get filterAny => 'Dowolny';

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
  String get unfinished => 'Niedokończony';

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
  String get died => 'Zmarł';

  @override
  String get birthplace => 'Miejsce urodzenia';

  @override
  String get department => 'Dział';

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
  String get moviesWatched => 'Oglądane filmy';

  @override
  String get showsWatched => 'Programy obejrzane';

  @override
  String get moviesCollected => 'Zebrane filmy';

  @override
  String get showsCollected => 'Pokazy zebrane';

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
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

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
    return 'Dodać to repozytorium?\n\n$url\n\nDodawaj repozytoria tylko z zaufanych źródeł.';
  }

  @override
  String get errorGettingAnilistData => 'Błąd pobierania danych z AniList.';

  @override
  String get navInfo => 'INFORMACJE';

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
  String updatePluginTitle(String name) {
    return 'Zaktualizuj $name';
  }

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
  String syncServiceOn(String name) {
    return 'Synchronizuj z $name';
  }

  @override
  String get syncDelete => 'Usuń to, czego nie ma usługa główna';

  @override
  String get syncDeleteDesc =>
      'Usuń wpisy z pozostałych usług, których nie ma na liście głównej. Usuwane są tylko wpisy, które można dopasować do tytułu, więc takie rzeczy jak filmy i seriale Simkl pozostają';

  @override
  String get syncDeleteTitle => 'Usunąć wpisy?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wpisy',
      one: '1 wpis',
    );
    return '$_temp0 które nie znajdują się na Twojej liście głównej, zostaną usunięte z pozostałych usług. Tego nie można cofnąć.';
  }

  @override
  String get syncDeleteAction => 'Usuń';

  @override
  String get syncToDelete => 'Aby usunąć';

  @override
  String get syncDeletedNote => 'Zostanie usunięty';

  @override
  String syncWillRemove(int count, String name) {
    return '$count zostanie usunięty z $name';
  }

  @override
  String get syncOnlyForward => 'Zachowaj dalszy postęp';

  @override
  String get syncOnlyForwardDesc =>
      'Nie obniżaj postępu w serwisie, który jest już dalej';

  @override
  String get animePlanetWontWatch => 'Nie będę oglądać';

  @override
  String get animePlanetWontRead => 'Nie przeczytam';

  @override
  String get animePlanetAlreadyOnList => 'Już na tej liście';

  @override
  String get animePlanetNewList => 'Nowa nazwa listy';

  @override
  String get syncPrivate => 'Wpisy prywatne';

  @override
  String get syncPrivateDesc =>
      'Co zrobić z wpisami, które trzymasz jako prywatne. Usługa z opcją prywatną zapewnia im prywatność; inni pokazaliby je publicznie';

  @override
  String get syncPrivateModeAsk => 'Zapytaj';

  @override
  String get syncPrivateModeSync => 'Zsynchronizuj je';

  @override
  String get syncPrivateModeSkip => 'Pomiń je';

  @override
  String get syncPrivateTitle => 'Wpisy prywatne';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wpisy są prywatne',
      one: '1 wpis jest prywatny',
    );
    return '$_temp0. Usługi z opcją prywatną (AniList, Kitsu, MangaBaka) sprawią, że będą one prywatne; pozostałe usługi nie mają opcji prywatnej i wyświetlają je publicznie. Zsynchronizować je? Twoja odpowiedź została zapamiętana; zmień to w obszarze Opcje synchronizacji.';
  }

  @override
  String get syncPrivateInclude => 'Zsynchronizuj je';

  @override
  String get syncPrivateSkip => 'Pomiń je';

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
  String syncRemoved(String services) {
    return 'Usunięto z $services';
  }

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
  String get syncStart => 'Zacznij';

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
  String get syncChangeStatus => 'Stan';

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
  String get commentsTagButton => 'Oznacz';

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
  String get groupsRoleAdmin => 'Administrator';

  @override
  String get groupsRoleMod => 'mod';

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
  String get sourceTags => 'Tagi';

  @override
  String get sourceTagsHint =>
      'Oznacz, do czego służy to źródło. Tytuł zawiera listę źródeł oznaczonych dla niego, a następnie nieoznaczonych. Źródła powyżej 18 roku życia pokazują tylko tytuły dla dorosłych.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Filmy i seriale';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Ukryte przez tagi';

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
  String get watchStart => 'Zacznij';

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
  String get watchFiller => 'Wypełniacz';

  @override
  String get watchRecap => 'Podsumowanie';

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
  String get watchFailTimeout => 'Kontrola nie zakończyła się na czas';

  @override
  String get watchFailBlocked =>
      'Witryna zablokowała to urządzenie (odmowa dostępu). Kontrola nie pomoże';

  @override
  String get watchFailTurnstile =>
      'To sprawdzenie wymaga dotknięcia, którego nie jest w stanie wykonać narzędzie do rozwiązywania problemów w tle';

  @override
  String get watchFailLoad =>
      'Strona nie została załadowana. Sprawdź połączenie i adres witryny';

  @override
  String get watchFailRejected =>
      'Witryna odrzuciła właśnie wydane zezwolenie. Spróbuj ponownie lub wyczyść pliki cookie';

  @override
  String get watchFailDismissed =>
      'Kontrola została zamknięta przed zakończeniem';

  @override
  String get watchFailCooldown =>
      'Przed chwilą zamknąłeś czek. Naciśnij Rozwiąż, aby spróbować ponownie';

  @override
  String get watchFailQuiet =>
      'Czek Cię potrzebuje, a aplikacja działała samodzielnie';

  @override
  String get watchFailWebView =>
      'Nie można uruchomić widoku internetowego w tle';

  @override
  String get watchFailUnavailable =>
      'Nie ma ekranu, na którym można by wyświetlić zaznaczenie';

  @override
  String get watchStatusReady => 'Gotowy';

  @override
  String get watchStatusChallenge => 'Wymagane sprawdzenie Cloudflare';

  @override
  String get watchStatusBlocked => 'Zablokowane przez witrynę';

  @override
  String get watchStatusOffline => 'Nie można dotrzeć do witryny';

  @override
  String get watchStatusUntested => 'Jeszcze nie przetestowane';

  @override
  String get watchStatusTesting => 'Testowanie połączenia…';

  @override
  String get watchStatusSolving => 'Przejście testu Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Kontrola Cloudflare przebiegła w tle ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Kontrola Cloudflare przeszła pomyślnie';

  @override
  String watchClearanceIssued(String time) {
    return 'zarobione $time';
  }

  @override
  String get watchClearanceStale =>
      'Potwierdzenie zostało uzyskane za pomocą innego agenta użytkownika, więc nie zostało wysłane. Przetestuj połączenie, aby uzyskać nowe';

  @override
  String get watchSectionConnection => 'Połączenie';

  @override
  String get watchSectionSession => 'Sesja';

  @override
  String get watchSectionTools => 'Narzędzia';

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
  String get localSource => 'Pliki lokalne';

  @override
  String get localMissing =>
      'Ten plik lub folder nie znajduje się już w Twoim folderze lokalnym';

  @override
  String get playerStickyStage => 'Przyklejony film';

  @override
  String get playerStickyStageDesc =>
      'Podczas przewijania odcinków i komentarzy poniżej film powinien znajdować się na górze';

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
  String get playerDisableSkips => 'Wyłącz pomijanie';

  @override
  String get playerDisableSkipsDesc =>
      'W odtwarzaczu nie można pomijać ani pomijać sygnatur czasowych, znaczników rozdziałów ani pomijać przesłanych treści';

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
  String get playerSubtitleOutlineWidth => 'Szerokość konturu napisów';

  @override
  String get playerSubtitlePreview => 'Podgląd napisów';

  @override
  String get playerSubtitlePreviewText => 'Tekst podglądu napisów';

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
  String get playerPictureSave => 'Zapisz tę ramkę';

  @override
  String get playerPictureOriginal => 'Oryginał';

  @override
  String get playerPictureOriginalDesc =>
      'Klatka taka, jaką ma wideo, bez shaderów i kolorów';

  @override
  String get playerPictureProcessed => 'Z shaderami i kolorami';

  @override
  String get playerPictureProcessedDesc => 'Rama taka, jaką widzisz teraz';

  @override
  String get playerPictureSaved => 'Ramka zapisana';

  @override
  String get playerPictureSaveFailed => 'Nie można zapisać ramki';

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
  String get playerColorPop => 'Pop anime';

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
      'Shadery wymagają renderowania sprzętowego, a odtwarzacz korzysta z renderowania programowego. Wyłącz renderowanie programowe w ustawieniach odtwarzacza.';

  @override
  String get playerSoftwareRender => 'Renderowanie oprogramowania';

  @override
  String get playerSoftwareRenderDesc =>
      'Tylko dla czarnego wideo. Shadery na nim nie działają. Obowiązuje przy następnym otwarciu odtwarzacza';

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
  String get playerDecoderAuto => 'Automat';

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
  String get playerToneMapping => 'Mapowanie tonów';

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
  String get streamGroupHardSub => 'Twardy sub';

  @override
  String get streamGroupSoftSub => 'Miękki sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Surowy';

  @override
  String get streamGroupOther => 'Inne';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count strumienie',
      one: '1 strumień',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Streamy';

  @override
  String get playerStreamFailedNext =>
      'Ten strumień nie będzie odtwarzany. Próbuję uruchomić następny';

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
  String get readerOpenBook => 'Otwórz książkę';

  @override
  String get readerOpenBookDesc =>
      'Przeczytaj plik epub (czytnik powieści) lub plik PDF (czytnik mangi) ze swoich plików';

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
  String get readerModeAuto => 'Auto (według rodzaju serii)';

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
  String get readerFilterQuality => 'Jakość filtra obrazu';

  @override
  String get readerFilterQualityNone => 'Brak (najbliższy sąsiad)';

  @override
  String get readerFilterQualityLow => 'Niski (dwuliniowy)';

  @override
  String get readerFilterQualityMedium => 'Średni (trójliniowy)';

  @override
  String get readerFilterQualityHigh => 'Wysoka (dwusześcienna)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (rdza wysokiej jakości)';

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
  String get readerLongPressSave => 'Przytrzymaj stronę, aby ją zapisać';

  @override
  String get readerLongPressSaveDesc =>
      'Naciśnij i przytrzymaj stronę, aby otworzyć opcje zapisywania, udostępniania i kopiowania';

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
  String get readerResetConfirm =>
      'Zresetować wszystkie ustawienia czytnika do wartości domyślnych?';

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
    return 'Zapisywać swoje postępy w $name na liście na tym urządzeniu podczas oglądania?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Zapisać swoje postępy w $name na swojej liście na tym urządzeniu po ukończeniu rozdziału?';
  }

  @override
  String get downloadClearQueue => 'Wyczyść kolejkę';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Anulować wszystkie pobrania $count w kolejce? To, co zostało już pobrane, zostanie usunięte.';
  }

  @override
  String downloadSelectedCount(int count) {
    return 'Wybrano $count';
  }

  @override
  String get downloadSelectAll => 'Zaznacz wszystko';

  @override
  String get downloadDeleteSelected => 'Usuń wybrane';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Usunąć pobrane pliki $count? Ich pliki zostaną usunięte z urządzenia.';
  }

  @override
  String get castTitle => 'Przesyłaj na urządzenie';

  @override
  String get castSearching => 'Szukam urządzeń w Twojej sieci…';

  @override
  String get castNoDevices =>
      'Nie znaleziono żadnych urządzeń. Upewnij się, że telewizor lub Chromecast są połączone z tą samą siecią Wi-Fi, a następnie wyszukaj ponownie.';

  @override
  String get castRefresh => 'Wyszukaj ponownie';

  @override
  String get castFailed => 'Nie można rozpocząć przesyłania';

  @override
  String get castStop => 'Przestań przesyłać';

  @override
  String castNowCasting(String name) {
    return 'Przesyłanie do $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecasta';

  @override
  String get castProtocolDlna => 'DLNA/inteligentna telewizja';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku nie może zgłosić ani zmienić pozycji';

  @override
  String get castControls => 'Sterowanie';

  @override
  String get castVolume => 'Głośność telewizora';

  @override
  String castSkipPart(String name) {
    return 'Pomiń $name';
  }

  @override
  String get trackProgressRememberSeries => 'Pamiętajcie o tej serii';

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
  String get themePickerTitle => 'Temat';

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
  String togetherLinkConfirm(String room) {
    return 'Dołącz do pokoju $room? Gospodarz wybiera, co jest odtwarzane, a gracz sam otwiera, gdy zaczyna oglądać.';
  }

  @override
  String get togetherJoin => 'Dołącz';

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
  String get togetherShareInvite => 'Udostępnij zaproszenie';

  @override
  String togetherShareText(String link) {
    return 'Oglądaj ze mną Dartotsu: $link';
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
  String get novelPaged => 'Przewracanie stron';

  @override
  String get novelPagedDesc =>
      'Podziel rozdział na strony i przesuwaj lub stukaj, aby je obracać, zamiast przewijać';

  @override
  String novelPageOf(int current, int total) {
    return 'Strona $current z $total';
  }

  @override
  String get novelPaginating => 'Układanie stron';

  @override
  String get novelTools =>
      'Spis treści, wyszukiwanie i najważniejsze informacje';

  @override
  String get novelContents => 'Spis treści';

  @override
  String get novelContentsEmpty => 'Ten rozdział nie ma nagłówków';

  @override
  String get novelSearch => 'Szukaj';

  @override
  String get novelSearchHint => 'Szukaj w tym rozdziale';

  @override
  String get novelSearchNone => 'Brak dopasowań';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '1 mecz',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Najważniejsze';

  @override
  String get novelHighlightsEmpty =>
      'Wybierz tekst i dotknij Wyróżnij, aby zachować go tutaj';

  @override
  String get novelHighlight => 'Zaznacz';

  @override
  String get novelHighlightNote => 'Uwaga';

  @override
  String get novelHighlightNoteHint => 'Dodaj notatkę';

  @override
  String get novelHighlightRemove => 'Usuń wyróżnienie';

  @override
  String get novelHighlightFailed =>
      'Nie udało się dopasować tego zaznaczenia do tekstu';

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
  String get playerSkipSubmit => 'Prześlij czasy pominięć';

  @override
  String get playerSkipSubmitDesc =>
      'Zaznacz, gdzie zaczyna się i kończy początek, zakończenie lub podsumowanie w tym odcinku i udostępnij to AniSkipowi, aby każdy mógł skorzystać z przycisku pomijania.';

  @override
  String get playerSkipStart => 'Zacznij';

  @override
  String get playerSkipEnd => 'Koniec';

  @override
  String get playerSkipUseNow => 'Użyj aktualnej pozycji';

  @override
  String get playerSkipSend => 'Prześlij do AniSkip';

  @override
  String get playerSkipSent =>
      'Czasy pominięcia przesłane do AniSkip, dziękujemy';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip odmówił pominięcia czasów: $error';
  }

  @override
  String get playerUnsupported =>
      'Odtwarzacz wideo nie może działać na tym urządzeniu (jego wersja na Androida jest za stara dla dołączonej biblioteki odtwarzaczy). Kliknij, aby skopiować szczegóły.';

  @override
  String get playerSkipNoMal =>
      'Ten tytuł nie ma identyfikatora MyAnimeList, AniSkip nie może go pobrać';

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
  String get playerPipPlay => 'Zagraj';

  @override
  String get playerPipPause => 'Pauza';

  @override
  String get playerPipBack => 'Przewiń do tyłu';

  @override
  String get playerPipForward => 'Naprzód';

  @override
  String get playerPipRestore => 'Wracając do gracza';

  @override
  String get playerPipActive => 'Gra w małym oknie';

  @override
  String get listDateAdded => 'Dodano do listy';

  @override
  String get listDateLastWatched => 'Ostatnio oglądane';

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
  String get widgetContinue => 'Kontynuuj';

  @override
  String get widgetReleases => 'Wydanie wkrótce';

  @override
  String get widgetMore => 'Również w toku';

  @override
  String get widgetNothing => 'Nie ma jeszcze nic, co można by kontynuować';

  @override
  String get downloadStorageTitle => 'Przechowywanie';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pobrań',
      one: '1 pobranie',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size już obejrzałem lub przeczytałem';
  }

  @override
  String get downloadFreeUp => 'Zwolnij miejsce';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oglądał pliki do pobrania',
      one: '1 obejrzane pobieranie',
    );
    return 'Usuwać $_temp0 i za darmo $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Uwolniony $size';
  }

  @override
  String get downloadDeleteWatched => 'Usuń obejrzane';

  @override
  String get downloadDeleteAll => 'Usuń wszystko';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Usunąć każde pobranie $title?';
  }

  @override
  String get downloadNothingWatched =>
      'Nic, co ukończysz, nie zostanie pobrane';

  @override
  String get downloadStorageEmpty => 'Żadne pobieranie nie zajmuje miejsca';

  @override
  String get downloadsOpenDesc =>
      'Zobacz kolejkę i wszystko zapisane na tym urządzeniu';

  @override
  String get downloadTitle => 'Pobierz';

  @override
  String get downloadMetaOnly => 'Tylko metadane';

  @override
  String get downloadMetaFailed => 'Nie można utworzyć folderu tytułowego';

  @override
  String downloadMetaSaved(String path) {
    return 'Zapisano. Umieść swoje pliki w $path';
  }

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
  String get downloadDashDrm => 'Ten strumień jest chroniony DRM';

  @override
  String get downloadDashNoVideo => 'Manifest DASH nie zawiera wideo';

  @override
  String get downloadWaitingConnection => 'Czekam na połączenie';

  @override
  String get downloadSubtitles => 'Napisy';

  @override
  String get downloadDownloaded => 'Pobrano';

  @override
  String get downloadOffline => 'Nieaktywny';

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
  String get offlineHeader => 'Nieaktywny';

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
  String get offlineModeChip => 'Nieaktywny';

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
      one: 'Odrzucić zmianę, która nigdy nie została wysłana? Tego nie da się cofnąć.',
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
    return 'Dowiesz się, kiedy $source będzie miał coś nowego';
  }

  @override
  String get sourceNotifyOff => 'Wyłącz powiadomienia';

  @override
  String get sourceNotifyNeedsSource =>
      'Najpierw wybierz źródło z dopasowaniem';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Everything ($count) is already out, nothing to wait for';
  }

  @override
  String get sourceNotifyTooltipOn => 'Zatrzymaj powiadomienia o wydaniu';

  @override
  String get sourceNotifyTooltipOff => 'Powiadamiaj mnie o nowościach';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Odcinek $number jest dostępny w $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Odcinki $from–$to są dostępne w $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Rozdział $number jest dostępny na $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Rozdziały $from–$to są dostępne w $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count tytuły mają coś nowego';
  }

  @override
  String get navSources => 'Źródła';

  @override
  String sourceInactiveOpen(String manager) {
    return 'To źródło należy do $manager, która nie jest aktywną usługą rozszerzeń';
  }

  @override
  String get sourceAlertsHeader => 'Powiadomienia o wydaniach';

  @override
  String get sourceAlertsSwitch => 'Sprawdź subskrybowane tytuły';

  @override
  String get sourceAlertsSwitchDesc =>
      'Raz za każdym razem, gdy aplikacja się otwiera, w przypadku tytułów włączyłeś dzwonek';

  @override
  String get sourceSkipUnstarted => 'Pomiń tytuły, których nie zacząłeś';

  @override
  String get sourceSkipUnstartedDesc =>
      'Jeszcze nic nie oglądałem ani nie czytałem, ale odcinki już istnieją';

  @override
  String get sourceSkipUnseen => 'Pomiń, jeśli masz niewidziane odcinki';

  @override
  String get sourceSkipUnseenDesc =>
      'Nadal udostępniłeś odcinki, które możesz nadrobić';

  @override
  String get sourceManage => 'Subskrypcje';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tytuły',
      one: '1 tytuł',
      zero: 'Brak tytułów',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Sprawdź teraz';

  @override
  String get sourceCheckNowDesc => 'Ignoruje harmonogram i zasady pomijania';

  @override
  String get sourceChecking => 'Sprawdzam…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tytuły mają coś nowego',
      one: '1 tytuł ma coś nowego',
      zero: 'Nic nowego',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Nie ma jeszcze subskrypcji';

  @override
  String get sourceEmptyMessage =>
      'Kliknij dzwonek nad odcinkami tytułu, aby otrzymywać informacje o nowych';

  @override
  String get sourceAll => 'Wszystko';

  @override
  String sourceInactive(String manager) {
    return 'Nieaktywny: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source nie jest zainstalowany w tej usłudze rozszerzenia';
  }

  @override
  String get sourceUnreachable => 'Źródło nie odpowiada';

  @override
  String get sourceFinished => 'Skończone';

  @override
  String get sourceSkippedCompleted => 'Pominięte: zakończone';

  @override
  String get sourceSkippedUnstarted => 'Pominięte: nie rozpoczęte';

  @override
  String get sourceSkippedUnseen => 'Pominięte: niewidziane odcinki';

  @override
  String get sourceWaiting => 'Czekam na kolejne wydanie';

  @override
  String sourceNextCheck(String when) {
    return 'Następna kontrola $when';
  }

  @override
  String get sourceSoon => 'wkrótce';

  @override
  String sourceInHours(int count) {
    return 'w ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'w ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Najnowsze: $number';
  }

  @override
  String get sourceMute => 'Wycisz';

  @override
  String get sourceUnmute => 'Wyłącz wyciszenie';

  @override
  String get sourceMuted => 'Wyciszony';

  @override
  String get sourceUnsubscribe => 'Zrezygnuj z subskrypcji';

  @override
  String get sourcePickAnother => 'Wybierz inne źródło';

  @override
  String get sourceOpenExtensions => 'Otwórz rozszerzenia';

  @override
  String get sourceNoticesEmpty =>
      'Nie ma jeszcze żadnych informacji o wydaniu';

  @override
  String get sourceNoticesEmptyMessage =>
      'Tutaj pojawiają się nowe odcinki i rozdziały z subskrybowanych przez Ciebie tytułów';

  @override
  String get sourceOpenTitle => 'Otwórz tytuł';

  @override
  String get extensionsLoading => 'Ładowanie rozszerzeń…';

  @override
  String get updateWhatsNew => 'Co nowego';

  @override
  String get updateLater => 'Później';

  @override
  String get updateSkipVersion => 'Pomiń tę wersję';

  @override
  String get updatePreparing => 'Przygotowanie…';

  @override
  String get updateDownloading => 'Pobieranie';

  @override
  String get updateInstalling => 'Instaluję…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done z $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Wydany $date';
  }

  @override
  String get updateNoAsset =>
      'Ta wersja nie jest dostępna do pobrania na Twoje urządzenie';

  @override
  String get updateUpToDate => 'Korzystasz z najnowszej wersji';

  @override
  String get updateIosHint =>
      'Kompilacje iOS nie są dostępne w App Store. Pobierz plik .ipa ze strony wydania i załaduj go za pomocą AltStore lub SideStore';

  @override
  String get updateOpenedBrowser => 'Sprawdź swoją przeglądarkę';

  @override
  String get updateTryAgain => 'Spróbuj ponownie';

  @override
  String get settingsNotifications => 'Powiadomienia';

  @override
  String get settingsNotificationsDesc =>
      'Alerty dotyczące Twoich list, nowych odcinków i rozdziałów oraz odpowiedzi na komentarze';

  @override
  String get settingsAboutUpdates => 'Informacje i aktualizacje';

  @override
  String get settingsAboutUpdatesDesc =>
      'Aktualizacje aplikacji, wersja, dzienniki, linki i wsparcie';

  @override
  String get settingsGroupAccount => 'Twoje konto';

  @override
  String get settingsGroupContent => 'Treść';

  @override
  String get settingsGroupApp => 'Aplikacja';

  @override
  String get settingsAnimeDesc =>
      'Odtwarzacz, napisy, pomijanie, lista odcinków i szczegóły odcinka';

  @override
  String get settingsMangaDesc =>
      'Tryb czytnika, sterowanie, wyświetlanie i śledzenie rozdziałów';

  @override
  String get settingsNovelDesc =>
      'Tekst, przewracanie stron, tłumaczenie i czytanie na głos';

  @override
  String get settingsLocalPlay => 'Lokalna zabawa';

  @override
  String get settingsLocalPlayDesc =>
      'Odtwarzaj pliki, foldery, strumienie sieciowe i torrenty lub otwórz książkę';

  @override
  String get settingsLocalPlayVideo => 'Wideo';

  @override
  String get settingsLocalPlayBooks => 'Książki';

  @override
  String get settingsWatchSections => 'Sekcje';

  @override
  String get settingsSectionLists => 'Listy odcinków i rozdziałów';

  @override
  String get settingsSectionProgress => 'Śledzenie postępów';

  @override
  String get updateChannelDesc =>
      'Wersja stabilna to testowana wersja. Wersja przedpremierowa i wersja alfa otrzymają nowe funkcje wcześniej, ale mogą się zepsuć';

  @override
  String get checkNowDesc => 'Poszukaj od razu nowszej wersji';

  @override
  String get generalSectionBasics => 'Język i zachowanie';

  @override
  String get generalSectionSecurity => 'Bezpieczeństwo';

  @override
  String get generalSectionPrivacy => 'Prywatność';

  @override
  String notificationsOtherService(String service) {
    return 'Przełącz na $service, aby to otworzyć';
  }

  @override
  String get secPlayerPlayback =>
      'Domyślna prędkość, automatyczne odtwarzanie, dopasowanie wideo, orientacja i obraz w obrazie';

  @override
  String get secPlayerSkip =>
      'Automatycznie pomijaj otwarcia, zakończenia i podsumowania';

  @override
  String get secPlayerControls =>
      'Przesuń, przytrzymaj i dotknij gestów, aby wyświetlić podgląd';

  @override
  String get secPlayerSubtitles => 'Języki, wygląd i renderowanie napisów';

  @override
  String get secPlayerShaders => 'Skalowanie anime i własne shadery';

  @override
  String get secPlayerEngine =>
      'Dekoder, wyjście wideo i audio, buforowanie. Zmieniaj je tylko w przypadku problemów z odtwarzaniem';

  @override
  String get secPlayerMpv => 'mpv.conf, skrypty i zaawansowane strojenie';

  @override
  String get secAnimeList => 'Odcinki wypełniające i nieobejrzane miniatury';

  @override
  String get secProgress =>
      'Gdy postęp oglądania lub czytania zostanie zapisany na Twojej liście';

  @override
  String get secAnimeDetails =>
      'Skąd pochodzą tytuły odcinków, miniatury i streszczenia';

  @override
  String get secReaderReading =>
      'Tryb czytania, przewracanie stron, powiększanie i następny rozdział';

  @override
  String get secReaderControls =>
      'Dotknij stref, klawiszy głośności i automatycznego przewijania';

  @override
  String get secReaderDisplay => 'Tło, jasność, pełny ekran i numer strony';

  @override
  String get secNovelText =>
      'Czcionka, rozmiar, odstępy, marginesy i przewracanie stron';

  @override
  String get secNovelTranslate => 'Tłumacz rozdziały podczas czytania';

  @override
  String get secNovelSpeech =>
      'Głos, szybkość i wysokość dźwięku do czytania na głos';

  @override
  String get secNotifyAbout =>
      'Wybierz, jakie rodzaje aktywności wysyłają alert';

  @override
  String get layoutTitle => 'Układ';

  @override
  String get layoutDesc => 'Wybierz, przesuń i ukryj przyciski na paskach';

  @override
  String get layoutHint =>
      'Przeciągnij przycisk, aby go przesunąć (najpierw przytrzymaj na ekranie dotykowym). Kliknij jeden, aby go wyciąć, przenieść lub ukryć';

  @override
  String layoutDropInto(String zone) {
    return 'Wpadnij: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Przenoszenie $name. Naciśnij przycisk wklejania, aby go umieścić';
  }

  @override
  String get layoutTitleFixed => 'Tytuł';

  @override
  String get layoutZoneTopStart => 'Górny pasek, przed tytułem';

  @override
  String get layoutZoneTopEnd => 'Górny pasek, po tytule';

  @override
  String get layoutZoneBottomStart => 'Dolny pasek, lewy';

  @override
  String get layoutZoneBottomEnd => 'Dolny pasek, prawy';

  @override
  String get layoutZoneSecondRow => 'Ukryty: drugi rząd w normalnym widoku';

  @override
  String get layoutZoneOverflow => 'Ukryty: w menu Więcej';

  @override
  String get layoutEmptyZone => 'Upuść przyciski tutaj';

  @override
  String get layoutCut => 'Cięcie';

  @override
  String get layoutPaste => 'Wklej tutaj';

  @override
  String get layoutHide => 'Ukryj';

  @override
  String layoutMoveTo(String zone) {
    return 'Przejdź do $zone';
  }

  @override
  String get layoutReset => 'Przywróć ustawienia domyślne';

  @override
  String get layoutMore => 'Więcej';

  @override
  String get sourceWhyAction => 'Dlaczego nie ma ostrzeżenia?';

  @override
  String get sourceWhyStatus => 'Stan';

  @override
  String get sourceWhyLastCheck => 'Ostatnio sprawdzane';

  @override
  String get sourceWhyNever => 'Jeszcze nie';

  @override
  String get sourceWhyNextCheck => 'Następna kontrola';

  @override
  String get sourceWhyNewest => 'Najnowsze u źródła';

  @override
  String get sourceWhyProgress => 'Twój postęp';

  @override
  String get sourceWhyListStatus => 'Stan listy';

  @override
  String get sourceWhyFailures => 'Nieudane kontrole z rzędu';

  @override
  String get sourceWhyLastRelease => 'Ostatnio widziana nowa wersja';

  @override
  String get sourceWhyVerdictNew =>
      'Nowa wersja pojawia się tutaj, gdy tylko źródło ją wymieni i zostanie uruchomiona następna kontrola.';

  @override
  String get sourceWhyVerdictAhead =>
      'Źródło już wyprzedza Twoje postępy, więc już raz Ci o tym powiedziano. Przeczytaj lub obejrzyj, aby otrzymać następny alert.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Tytuł ten jest pomijany przez powyższe zasady. Zmień je w ustawieniach powiadomień lub użyj opcji Sprawdź teraz, aby mimo to uruchomić tę funkcję.';

  @override
  String get sourceWhyVerdictBroken =>
      'Źródło jest nieosiągalne lub zostało usunięte, dlatego nic nie jest sprawdzane.';

  @override
  String get sourceWhyVerdictMuted => 'Ta subskrypcja jest wyciszona.';

  @override
  String get externalPlayerTitle => 'Otwórz strumień gdzie indziej';

  @override
  String get externalCopyUrl => 'Skopiuj link do transmisji';

  @override
  String get externalCopied => 'Link do transmisji skopiowany';

  @override
  String get externalChooser => 'Otwórz w innej aplikacji';

  @override
  String get externalVlc => 'Otwórz w VLC';

  @override
  String get externalMpv => 'Otwórz w mpv';

  @override
  String get externalWebVideoCast => 'Internetowa transmisja wideo';

  @override
  String get castViaAppHint => 'Wyślij strumień do aplikacji Web Video Cast';

  @override
  String get externalFailed =>
      'Nie udało się otworzyć strumienia. Czy odtwarzacz jest zainstalowany?';

  @override
  String get addonInstalled => 'Zainstalowany';

  @override
  String get loadFailedActivity => 'Nie udało się wczytać aktywności';

  @override
  String get loadFailedFavourites =>
      'Nie udało się wczytać ulubionych. Spróbuj ponownie';

  @override
  String get loadFailedStats => 'Nie udało się wczytać statystyk';

  @override
  String get loadFailedReplies => 'Nie udało się wczytać odpowiedzi';

  @override
  String get cantBeUndone => 'Tego nie można cofnąć.';

  @override
  String get searchTags => 'Szukaj tagów';

  @override
  String get spoilerTapToView => 'Spoiler. Kliknij, żeby zobaczyć';

  @override
  String get mediaVideo => 'Wideo';

  @override
  String get notificationSomeone => 'Ktoś';

  @override
  String get notificationATitle => 'tytuł';

  @override
  String get notificationAddedDetail => 'Został dodany do AniList';

  @override
  String get updateNoReleases => 'Nie znaleziono żadnych wydań';

  @override
  String get updateInvalidResponse => 'Nieprawidłowa odpowiedź na aktualizację';

  @override
  String get commentsRateLimited => 'Cena ograniczona';

  @override
  String get commentsConnectFailed => 'Nie udało się połączyć';

  @override
  String get dnsNoRecords => 'Nie zwrócono żadnych rekordów A';

  @override
  String get importTokenRejected => 'Token odrzucony';

  @override
  String get developerRoleLead => 'Główny programista';

  @override
  String get developerRoleModerator => 'Moderator Discorda';

  @override
  String extensionManagerTitle(String type) {
    return '$type menedżer';
  }

  @override
  String extensionsOfType(String type) {
    return '$type rozszerzenia';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'Ustawienia $name';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name nie zapewnia żadnych ustawień.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Wyemitowano odcinek $episode z $title';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Wyemitowano odcinek $episode';
  }

  @override
  String notificationAdded(String title) {
    return '$title został dodany do AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Serwer aktualizacji nie mógł znaleźć tej wersji: $message';
  }

  @override
  String get installStepJre => 'Środowisko wykonawcze Java';

  @override
  String get installStepCore => 'Rdzeń wykonawczy';

  @override
  String installStepsProgress(int current, int total) {
    return 'Krok $current z $total';
  }

  @override
  String get stepWaiting => 'Czekam';

  @override
  String get stepChecking => 'Sprawdzam…';

  @override
  String get stepUpToDate => 'Aktualne';

  @override
  String stepUpToDateWith(String detail) {
    return 'Aktualne · $detail';
  }

  @override
  String get stepWillInstall => 'Zostanie zainstalowany';

  @override
  String get stepWillUpdate => 'Zostanie zaktualizowany';

  @override
  String stepWillUpdateTo(String version) {
    return 'Zostanie zaktualizowany do $version';
  }

  @override
  String get stepInstalled => 'Zainstalowany';

  @override
  String get stepNotNeeded => 'Nie potrzebne tutaj';

  @override
  String get stepFailed => 'Nie udało się';

  @override
  String stepFailedWith(String reason) {
    return 'Niepowodzenie: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Działa w środowisku wykonawczym Java i współdzielonym rdzeniu wykonawczym. Są one instalowane jako pierwsze i aktualizowane, jeśli uległy zmianie.';

  @override
  String get installRuntimeNewer =>
      'Środowisko wykonawcze, na którym działa ten menedżer, zostało zaktualizowane.';

  @override
  String get removeJvmTitle => 'Usunąć środowisko wykonawcze Java?';

  @override
  String get removeJvmMessage =>
      'Menedżerowie rozszerzeń pulpitu przestają działać, dopóki nie zostaną ponownie zainstalowani. Jest on pobierany ponownie przy następnej instalacji lub otwarciu.';

  @override
  String get runtimePreparing => 'Przygotowuję środowisko wykonawcze…';

  @override
  String get calendarAll => 'Wszystko';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Manga';

  @override
  String get readerCloudflare =>
      'Otwórz w przeglądarce (sprawdzenie Cloudflare)';

  @override
  String get badgeBoardHint =>
      'Przeciągnij odznakę do rogu pierwszej karty lub przeciągnij odznakę już na niej, aby ją przesunąć. Odznaki zamieniają się miejscami, więc żadna z nich nigdy się nie pokrywa. Kliknij plakietkę poniżej, aby ją włączyć lub wyłączyć.';

  @override
  String get statusAuto => 'Automat';

  @override
  String get unreadCounter => 'Nieprzeczytany licznik';

  @override
  String get unreadCounterDesc =>
      'Pokaż, ile odcinków lub rozdziałów pozostało na plakatach';

  @override
  String get settingsShortcuts => 'Skróty klawiaturowe';

  @override
  String get settingsShortcutsDesc => 'Zobacz, zmień i wyłącz każdy klawisz';

  @override
  String get shortcutGroupApp => 'Aplikacja';

  @override
  String get shortcutGroupPlayer => 'Odtwarzacz wideo';

  @override
  String get shortcutGroupReader => 'Czytelnik';

  @override
  String get shortcutsEnableApp => 'Skróty aplikacji';

  @override
  String get shortcutsEnablePlayer => 'Skróty odtwarzacza';

  @override
  String get shortcutsEnableReader => 'Skróty czytnika';

  @override
  String get shortcutsEnableDesc =>
      'Włącz lub wyłącz każdy klawisz w tej grupie';

  @override
  String get shortcutNotSet => 'Nie ustawiono';

  @override
  String get shortcutAddKey => 'Dodaj klucz';

  @override
  String get shortcutResetOne => 'Przywróć ustawienia domyślne';

  @override
  String get shortcutClearKeys => 'Usuń wszystkie klucze';

  @override
  String get shortcutResetAll => 'Zresetuj wszystkie skróty';

  @override
  String get shortcutResetAllDesc =>
      'Przywróć ustawienia domyślne każdego klawisza';

  @override
  String get shortcutPress => 'Naciśnij żądany klawisz lub kombinację';

  @override
  String get shortcutPressHint =>
      'Każda kombinacja może należeć tylko do jednej akcji, więc wzięcie jednej z nich przesuwa ją.';

  @override
  String get shortcutSeekPercent => 'Przejdź do odpowiedniego miejsca w filmie';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Wróć';

  @override
  String get shortcutAppFullscreen => 'Przełącz tryb pełnoekranowy';

  @override
  String get shortcutAppGlass => 'Przełącz tryb szkła';

  @override
  String get shortcutAppMaterialYou => 'Przełącz Materiał Ty';

  @override
  String get shortcutAppDark => 'Przełącz tryb ciemny';

  @override
  String get shortcutAppOled => 'Przełącz OLED na kolor czarny';

  @override
  String get shortcutAppSearch => 'Otwórz wyszukiwanie';

  @override
  String get shortcutAppSettings => 'Otwórz ustawienia';

  @override
  String get shortcutAppDownloads => 'Otwórz pliki do pobrania';

  @override
  String get shortcutAppNotifications => 'Otwórz powiadomienia';

  @override
  String get shortcutAppIncognito => 'Przełącz tryb incognito';

  @override
  String get shortcutAppShortcuts => 'Pokaż skróty klawiaturowe';

  @override
  String get shortcutPlayerPlayPause => 'Odtwórz lub wstrzymaj';

  @override
  String get shortcutPlayerSeekForward => 'Szukaj do przodu';

  @override
  String get shortcutPlayerSeekBack => 'Szukaj z powrotem';

  @override
  String get shortcutPlayerSeekForwardLong =>
      'Szukaj do przodu przez 30 sekund';

  @override
  String get shortcutPlayerSeekBackLong => 'Cofnij się o 30 sekund';

  @override
  String get shortcutPlayerFrameForward => 'Następna klatka';

  @override
  String get shortcutPlayerFrameBack => 'Poprzednia klatka';

  @override
  String get shortcutPlayerVolumeUp => 'Zwiększ głośność';

  @override
  String get shortcutPlayerVolumeDown => 'Zmniejsz głośność';

  @override
  String get shortcutPlayerMute => 'Wycisz';

  @override
  String get shortcutPlayerFullscreen => 'Pełny ekran';

  @override
  String get shortcutPlayerNext => 'Następny odcinek';

  @override
  String get shortcutPlayerPrevious => 'Poprzedni odcinek';

  @override
  String get shortcutPlayerSkip => 'Pomiń wstęp lub zakończenie';

  @override
  String get shortcutPlayerPanel => 'Lista odcinków';

  @override
  String get shortcutPlayerSpeedUp => 'Szybsze odtwarzanie';

  @override
  String get shortcutPlayerSpeedDown => 'Wolniejsze odtwarzanie';

  @override
  String get shortcutPlayerSpeedReset => 'Normalna prędkość';

  @override
  String get shortcutPlayerSubtitleToggle => 'Napisy włączone lub wyłączone';

  @override
  String get shortcutPlayerSubtitleCycle => 'Następna ścieżka z napisami';

  @override
  String get shortcutPlayerAudioCycle => 'Następna ścieżka dźwiękowa';

  @override
  String get shortcutPlayerStreamCycle => 'Następny strumień';

  @override
  String get shortcutPlayerFit => 'Zmień dopasowanie wideo';

  @override
  String get shortcutReaderRight => 'Strona po prawej stronie';

  @override
  String get shortcutReaderLeft => 'Strona po lewej stronie';

  @override
  String get shortcutReaderNextPage => 'Następna strona';

  @override
  String get shortcutReaderPreviousPage => 'Poprzednia strona';

  @override
  String get shortcutReaderControls => 'Pokaż lub ukryj elementy sterujące';

  @override
  String get shortcutReaderNextChapter => 'Następny rozdział';

  @override
  String get shortcutReaderPreviousChapter => 'Poprzedni rozdział';

  @override
  String shortcutTaken(String action) {
    return 'Zaczerpnięto z $action';
  }

  @override
  String get incognitoTurnedOn => 'Włączony tryb incognito';

  @override
  String get incognitoTurnedOff => 'Tryb incognito wyłączony';

  @override
  String get onHoldAnime => 'Wstrzymane anime';

  @override
  String get onHoldManga => 'Wstrzymana manga';

  @override
  String get droppedAnime => 'Upuszczone anime';

  @override
  String get droppedManga => 'Upuszczona manga';

  @override
  String get generalSectionDesktop => 'Pulpit';

  @override
  String get closeAction => 'Kiedy okno jest zamknięte';

  @override
  String get closeActionQuit => 'Zamknij aplikację';

  @override
  String get closeActionWhenBusy => 'Kontynuuj pracę na tacy, gdy coś działa';

  @override
  String get closeActionAlways => 'Zawsze biegaj na tacy';

  @override
  String get closeActionNoTray =>
      'Zasobnik systemowy nie jest tutaj dostępny, więc aplikacja kończy się po zamknięciu';

  @override
  String get gamepadNav => 'Nawigacja na gamepadzie';

  @override
  String get gamepadNavDesc =>
      'Poruszaj się po aplikacji i steruj odtwarzaczem za pomocą kontrolera gier';

  @override
  String get trayShow => 'Pokaż Dartotsu';

  @override
  String get trayQuit => 'Przestań';

  @override
  String get trayIdle => 'Nic nie działa';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pobieranie $count elementów',
      one: 'Pobieranie elementu $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Synchronizowanie list';

  @override
  String get trayUpdating => 'Aktualizowanie aplikacji';

  @override
  String get trayPlaying => 'Gra w małym oknie';

  @override
  String get traySearch => 'Szukaj';

  @override
  String get trayPauseDownloads => 'Wstrzymaj pobieranie';

  @override
  String get trayResumeDownloads => 'Wznów pobieranie';

  @override
  String get playerDownloadTitle => 'Pobieranie odtwarzacza';

  @override
  String get playerDownloadBody =>
      'Dartotsu raz pobiera swój silnik wideo. Odtwarzanie rozpocznie się, gdy tylko będzie gotowe.';

  @override
  String get playerDownloadStarting => 'Rozpoczynanie pobierania…';

  @override
  String get playerDownloadFailedTitle => 'Nie udało się pobrać odtwarzacza';

  @override
  String get playerDownloadFailedBody =>
      'Sprawdź połączenie i spróbuj ponownie. Pobieranie rozpoczyna się w miejscu, w którym zostało zatrzymane.';

  @override
  String get playerDownloadRetry => 'Spróbuj ponownie';

  @override
  String get playerDownloadCopy => 'Skopiuj szczegóły';

  @override
  String get removePlayerTitle => 'Usunąć odtwarzacz?';

  @override
  String get removePlayerMessage =>
      'Nie można odtwarzać filmów, dopóki odtwarzacz nie zostanie ponownie pobrany.';

  @override
  String get trailerLoading => 'Ładowanie przyczepy…';

  @override
  String get trailerFailed =>
      'Nie można odtworzyć tutaj zwiastuna, otwieram go w przeglądarce';
}

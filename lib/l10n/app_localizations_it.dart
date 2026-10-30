// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'Il NUOVO miglior\napp per tracciare anime e manga';

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
  String get loadMore => 'Carica altro';

  @override
  String get login => 'Accedi';

  @override
  String get continueAsGuest => 'Continua come ospite';

  @override
  String get getStarted => 'Inizia';

  @override
  String get loginWithToken => 'Accedi con token';

  @override
  String get pasteTokenHint => 'Incolla il tuo token di accesso';

  @override
  String loginTo(String service) {
    return 'Accedi a $service';
  }

  @override
  String get settings => 'Impostazioni';

  @override
  String get account => 'Account';

  @override
  String get about => 'Info';

  @override
  String get language => 'Lingua';

  @override
  String get animationSpeed => 'Animazioni';

  @override
  String get animationSpeedDesc =>
      'Velocità di transizioni ed effetti di entrata in tutta l\'app';

  @override
  String get animationSpeedOff => 'Off';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Estensioni',
      one: 'Estensione',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Fonte sconosciuta';

  @override
  String get install => 'Installa';

  @override
  String get update => 'Aggiorna';

  @override
  String get uninstall => 'Disinstalla';

  @override
  String get updateInstallCancelled =>
      'Installazione annullata. Se Android ha detto che l\'app è in conflitto con quella installata, la firma è diversa: disinstalla prima la versione attuale, poi installa l\'aggiornamento';

  @override
  String updateInstallFailed(String error) {
    return 'Aggiornamento fallito: $error';
  }

  @override
  String get appLock => 'Blocco app';

  @override
  String get appLockDesc =>
      'Chiede un codice quando apri l\'app o ci torni dopo un po\'';

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
  String get appLockUnlock => 'Inserisci il tuo codice';

  @override
  String get appLockWrong => 'Codice sbagliato';

  @override
  String appLockWait(String seconds) {
    return 'Troppi tentativi, aspetta ${seconds}s';
  }

  @override
  String get appLockNew => 'Scegli un codice';

  @override
  String get appLockNewHint => 'Da 4 a 8 cifre';

  @override
  String get appLockConfirm => 'Inseriscilo di nuovo';

  @override
  String get appLockMismatch => 'I codici non coincidono';

  @override
  String get appLockOn => 'Codice impostato';

  @override
  String get appLockRemoveTitle =>
      'Inserisci il codice per disattivare il blocco';

  @override
  String get installFailed => 'Installazione non riuscita';

  @override
  String get updateFailed => 'Aggiornamento non riuscito';

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
  String get noSourceSettings => 'La fonte non ha impostazioni';

  @override
  String get addPluginRepository => 'Aggiungi repository di plugin';

  @override
  String get pluginIndexUrlHint => 'URL dell\'indice dei plugin';

  @override
  String get addRepository => 'Aggiungi repository';

  @override
  String get pluginRepoUpdated => 'Repository di plugin aggiornato';

  @override
  String get pluginRepoUpdateFailed =>
      'Impossibile aggiornare il repository di plugin';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Annulla';

  @override
  String get yes => 'Sì';

  @override
  String get no => 'No';

  @override
  String get save => 'Salva';

  @override
  String get reset => 'Reimposta';

  @override
  String get clear => 'Cancella';

  @override
  String get test => 'Prova';

  @override
  String get testing => 'Test in corso…';

  @override
  String get resolving => 'Risoluzione in corso…';

  @override
  String get none => 'Nessuno';

  @override
  String get selectMediaService => 'Scegli il servizio';

  @override
  String get pickColor => 'Scegli un colore';

  @override
  String get colorPickerCustom => 'Personalizzato';

  @override
  String get colorPickerTransparent => 'Trasparente';

  @override
  String get ltr => 'Da sinistra a destra';

  @override
  String get searchSettings => 'Cerca nelle impostazioni';

  @override
  String nothingMatches(String query) {
    return 'Nessun risultato per \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Cerca in $category';
  }

  @override
  String get settingsAppearance => 'Aspetto';

  @override
  String get settingsAppearanceDesc => 'Tema, colori, effetto vetro';

  @override
  String get settingsGeneral => 'Generali';

  @override
  String get settingsGeneralDesc => 'Lingua e comportamento';

  @override
  String get settingsNetwork => 'Rete';

  @override
  String get settingsNetworkDesc => 'User agent, certificati, DNS e proxy';

  @override
  String get settingsAccountDesc => 'Servizio di tracking e accesso';

  @override
  String get settingsUpdates => 'Aggiornamenti';

  @override
  String get amoledBlack => 'Nero AMOLED';

  @override
  String get amoledBlackDesc => 'Superfici nere pure in modalità scura';

  @override
  String get glassMode => 'Effetto vetro';

  @override
  String get glassModeDesc =>
      'Superfici smerigliate sopra le copertine della tua libreria';

  @override
  String get shelfFrame => 'Cornice attorno alle sezioni';

  @override
  String get shelfFrameDesc =>
      'Mostra un riquadro dietro ogni sezione, oppure lascia le righe direttamente sulla pagina';

  @override
  String get settingsExtensionsDesc =>
      'Gestori delle fonti, repository e opzioni delle estensioni';

  @override
  String get settingsAddons => 'Componenti aggiuntivi';

  @override
  String get customPath => 'Percorso di archiviazione personalizzato';

  @override
  String get customPathDesc =>
      'Dove vengono salvati i dati dell\'app. Tieni premuto per ripristinare';

  @override
  String get selectDirectory => 'Scegli cartella';

  @override
  String get differentCacheManager => 'Cache immagini alternativa';

  @override
  String get differentCacheManagerDesc =>
      'Usa un altro gestore di cache per le immagini';

  @override
  String get backupAndRestore => 'Backup e ripristino';

  @override
  String get backupAndRestoreDesc => 'Salva o carica le tue preferenze';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Ripristina';

  @override
  String get loadExtensionsIcon => 'Carica le icone delle estensioni';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Mostra le icone delle fonti negli elenchi delle estensioni';

  @override
  String get sectionStorage => 'Archiviazione';

  @override
  String get sectionManagers => 'Gestori';

  @override
  String get sectionOptions => 'Opzioni';

  @override
  String get backupTabBackup => 'Fai il backup';

  @override
  String get backupTabRestore => 'Ripristina';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys impostazioni in $categories categorie';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Ultimo backup $time';
  }

  @override
  String get backupNever => 'Ancora nessun backup';

  @override
  String get backupSelectAll => 'Seleziona tutto';

  @override
  String get backupClearAll => 'Cancella';

  @override
  String backupKeys(Object count) {
    return '$count impostazioni';
  }

  @override
  String get backupPassword => 'Password (facoltativa)';

  @override
  String get backupPasswordHint => 'Lascia vuoto per usare quella predefinita';

  @override
  String get backupSensitive =>
      'Include i token di accesso. Tieni questo file al sicuro';

  @override
  String get backupCreate => 'Crea backup';

  @override
  String backupSaved(Object name) {
    return 'Backup salvato in $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Backup non riuscito: $error';
  }

  @override
  String get backupPickFile => 'Scegli un file di backup';

  @override
  String get backupPickFileDesc => 'Scegli un file .json creato da Dartotsu';

  @override
  String get backupChooseAnother => 'Scegli un altro file';

  @override
  String get backupCreatedAt => 'Creato';

  @override
  String get backupAppVersion => 'Versione dell\'app';

  @override
  String get backupDevice => 'Dispositivo';

  @override
  String get backupAccounts => 'Account';

  @override
  String get backupSize => 'Dimensione';

  @override
  String get backupEncrypted => 'Protetto da password';

  @override
  String get backupUnlock => 'Sblocca';

  @override
  String get backupWrongPassword =>
      'Impossibile leggere questo file. Controlla la password';

  @override
  String get backupRestoreSelected => 'Ripristina la selezione';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Ripristinare $count impostazioni? I valori esistenti in queste categorie verranno sovrascritti.';
  }

  @override
  String get backupRestored =>
      'Ripristinato. Riavvia l\'app per applicare tutto';

  @override
  String backupRestoreFailed(Object error) {
    return 'Ripristino non riuscito: $error';
  }

  @override
  String get backupSelectOne => 'Seleziona almeno una categoria';

  @override
  String get backupCatTheme => 'Aspetto';

  @override
  String get backupCatThemeDesc =>
      'Tema, colori, vetro, font e stile delle card';

  @override
  String get backupCatCommon => 'Generali';

  @override
  String get backupCatCommonDesc =>
      'Lingua, archiviazione, rete e opzioni delle estensioni';

  @override
  String get backupCatPlayer => 'Player';

  @override
  String get backupCatPlayerDesc => 'Preferenze del player';

  @override
  String get backupCatReader => 'Lettore';

  @override
  String get backupCatReaderDesc => 'Preferenze del lettore';

  @override
  String get backupCatProtected => 'Account';

  @override
  String get backupCatProtectedDesc => 'Token di accesso e dati di login';

  @override
  String get backupCatOther => 'Servizi e feed';

  @override
  String get backupCatOtherDesc =>
      'Layout dei feed, liste e opzioni dei servizi';

  @override
  String get logFile => 'File di log';

  @override
  String get logFileDesc =>
      'Condividi il log dell\'app o copia il suo percorso su Linux';

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
  String get logFileCopied => 'Percorso del log copiato';

  @override
  String get donateSheetTitle => 'Ti piace Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu è creata e mantenuta da una sola persona. Se ti è utile, pensa a sostenere lo sviluppo.';

  @override
  String get donateLater => 'Magari dopo';

  @override
  String get glassBackground => 'Sfondo vetro';

  @override
  String get glassBackgroundDesc =>
      'Il banner del tuo profilo, a meno che tu non imposti un link a un\'immagine';

  @override
  String get glassBackgroundHint =>
      'Link all\'immagine (lascia vuoto per usare il tuo banner)';

  @override
  String get followCover => 'Segui la copertina';

  @override
  String get followCoverDesc =>
      'I colori seguono lo sfondo, e la copertina nelle pagine di dettaglio';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Stile delle card';

  @override
  String get cardStyleDesc =>
      'Posizione del titolo, dimensione, progresso e badge';

  @override
  String get customFont => 'Font';

  @override
  String get customFontDesc =>
      'Predefinito, un file dal tuo dispositivo o Google Fonts';

  @override
  String get customFontError => 'Impossibile caricare quel file font';

  @override
  String get googleFontError => 'Impossibile scaricare quel font';

  @override
  String get yourFonts => 'I tuoi font';

  @override
  String get addFontFile => 'Aggiungi file font…';

  @override
  String get browseGoogleFonts => 'Sfoglia Google Fonts…';

  @override
  String get searchGoogleFonts => 'Cerca in Google Fonts';

  @override
  String get defaultFont => 'Predefinito';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Colori dinamici dal sistema';

  @override
  String get jsonTheme => 'File tema personalizzato';

  @override
  String get jsonThemeDesc =>
      'Colori dal vivo da ~/.config/dartotsu/theme.json (uno script tuo o modifiche manuali)';

  @override
  String get themeMode => 'Modalità tema';

  @override
  String get mode => 'Modalità';

  @override
  String get trackingService => 'Servizio di tracking';

  @override
  String get signOut => 'Esci';

  @override
  String get signIn => 'Accedi';

  @override
  String get notSignedIn => 'Non hai effettuato l\'accesso';

  @override
  String signOutOf(String service) {
    return 'Uscire da $service?';
  }

  @override
  String get checkForUpdates => 'Controlla aggiornamenti';

  @override
  String get checkForUpdatesDesc => 'Avvisami per una nuova release su GitHub';

  @override
  String get updateChannel => 'Canale di aggiornamento';

  @override
  String get channel => 'Canale';

  @override
  String get stable => 'Stabile';

  @override
  String get preRelease => 'Pre-release';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => 'Controlla ora';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Predefinito';

  @override
  String currentlyUsing(String value) {
    return 'Attuale: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Predefinito (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Tipo';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Porta';

  @override
  String get proxyUsername => 'Nome utente';

  @override
  String get proxyPassword => 'Password';

  @override
  String get optional => 'Facoltativo';

  @override
  String get clearCookies => 'Cancella i cookie';

  @override
  String get clearCookiesDesc => 'Rimuovi tutti i cookie salvati';

  @override
  String notImplementedArea(String area) {
    return '$area — in arrivo';
  }

  @override
  String notImplementedService(String service) {
    return '$service non lo supporta ancora.';
  }

  @override
  String get couldNotLoadResults => 'Impossibile caricare i risultati';

  @override
  String get updateCheckFailed => 'Impossibile controllare gli aggiornamenti';

  @override
  String get highRefreshRate => 'Frequenza di aggiornamento alta';

  @override
  String get highRefreshRateDesc =>
      'Usa la frequenza di aggiornamento più alta supportata dal tuo schermo';

  @override
  String get imageSave => 'Salva immagine';

  @override
  String imageSavedTo(String path) {
    return 'Salvato in $path';
  }

  @override
  String get imageActionFailed => 'Impossibile scaricare l\'immagine';

  @override
  String get imageTitleCover => 'Copertina';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Immagine del profilo';

  @override
  String get verifyTls => 'Verifica i certificati';

  @override
  String get verifyTlsDesc =>
      'Rifiuta i server con certificati HTTPS non validi. Disattiva solo per una fonte che usa un certificato autofirmato';

  @override
  String get clearCookiesConfirm =>
      'Rimuovere tutti i cookie salvati? Potresti essere disconnesso da alcune fonti.';

  @override
  String get version => 'Versione';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Codice, issue e release';

  @override
  String get discordDesc => 'Community e supporto';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Sostieni lo sviluppo';

  @override
  String get contributors => 'Collaboratori';

  @override
  String get contributorsDesc => 'Le persone che hanno creato Dartotsu';

  @override
  String get contributorsLoadFailed => 'Impossibile caricare i collaboratori';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Progetti basati su Dartotsu';

  @override
  String get forksEmpty => 'Nessun fork trovato';

  @override
  String get sectionColors => 'Colori';

  @override
  String get sectionDisplay => 'Schermo';

  @override
  String get sectionStyle => 'Stile';

  @override
  String get sectionCommunity => 'Community';

  @override
  String get sectionAppInfo => 'Info sull\'app';

  @override
  String get sectionRequests => 'Richieste';

  @override
  String get sectionDnsProxy => 'DNS e proxy';

  @override
  String get onboardingBack => 'Indietro';

  @override
  String get onboardingNext => 'Avanti';

  @override
  String get onboardingSkip => 'Salta';

  @override
  String get onboardingPaletteTitle => 'Rendila tua';

  @override
  String get onboardingPaletteBody =>
      'Scegli una palette. Ogni colore d\'accento, dalle card al player, la segue.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Chiaro';

  @override
  String get themeModeDark => 'Scuro';

  @override
  String get onboardingSyncTitle => 'Sincronizza la tua libreria';

  @override
  String get onboardingSyncBody =>
      'Accedi con AniList per portare con te liste, progressi e voti. Oppure salta e naviga da ospite.';

  @override
  String get onboardingOpenLinks =>
      'Apri i link di AniList e dei repo in Dartotsu';

  @override
  String get onboardingPermsTitle => 'Permessi';

  @override
  String get onboardingPermsBody =>
      'Concedili ora così download, aggiornamenti e avvisi funzionano senza interruzioni. Potrai cambiarli dopo nelle impostazioni di sistema.';

  @override
  String get permNotifications => 'Notifiche';

  @override
  String get permNotificationsDesc =>
      'Progresso dei download, nuovi episodi e risposte';

  @override
  String get permStorage => 'Accesso a tutti i file';

  @override
  String get permStorageDesc =>
      'Salva i download nella cartella pubblica di Dartotsu';

  @override
  String get permInstall => 'Installa aggiornamenti';

  @override
  String get permInstallDesc =>
      'Permetti a Dartotsu di installare i suoi aggiornamenti';

  @override
  String get permBattery => 'Batteria senza restrizioni';

  @override
  String get permBatteryDesc =>
      'Mantieni attivi in background i download lunghi';

  @override
  String get permGrant => 'Consenti';

  @override
  String get linkOpenInApp => 'Apri i link in Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Fai aprire l\'app dai link di AniList e dei repo';

  @override
  String get reviewsTitle => 'Recensioni';

  @override
  String get reviewsEmpty => 'Ancora nessuna recensione';

  @override
  String get reviewsFailed => 'Impossibile caricare le recensioni';

  @override
  String get reviewHelpfulQuestion => 'Questa recensione ti è stata utile?';

  @override
  String get reviewVoteFailed => 'Impossibile salvare il tuo voto';

  @override
  String reviewHelpful(int n, int total) {
    return 'A $n su $total è sembrata utile';
  }

  @override
  String get calendarTitle => 'Programmazione delle uscite';

  @override
  String get calendarToday => 'Oggi';

  @override
  String get calendarEmpty => 'Oggi non esce niente';

  @override
  String get calendarFailed => 'Impossibile caricare la programmazione';

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
    return 'Episodio $n';
  }

  @override
  String get shareAnalytics => 'Condividi dati d\'uso anonimi';

  @override
  String get shareAnalyticsDesc =>
      'Conteggio anonimo degli utenti e report dei crash. Nessun account o dato personale';

  @override
  String get linkOpenAnilist => 'Apri i link di AniList in Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Attiva la gestione dei link così i link di anilist.co aprono l\'app';

  @override
  String get linkSettingsFailed =>
      'Impossibile aprire le impostazioni di sistema';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Mostra cosa stai facendo sul tuo profilo Discord. Serve il tuo token Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Mostra cosa stai facendo sul tuo profilo Discord. Serve l\'app desktop di Discord aperta.';

  @override
  String get discordBrowsing => 'Mostra l\'attività di navigazione';

  @override
  String get discordBrowsingDesc =>
      'Mostra anche la scheda, la pagina o il profilo che stai guardando, non solo cosa guardi o leggi.';

  @override
  String get discordLookHeader => 'Aspetto della presenza';

  @override
  String get discordActivityType => 'Tipo di attività';

  @override
  String get discordActivityTypeDesc =>
      'Come la scrive Discord: \"Sta guardando …\" o \"Sta giocando a …\". Auto usa Guardando per gli anime e Giocando per tutto il resto.';

  @override
  String get discordWatching => 'Guardando';

  @override
  String get discordPlaying => 'Giocando';

  @override
  String get discordCovers => 'Mostra le copertine';

  @override
  String get discordCoversDesc => 'Copertina e icona di Dartotsu sulla card.';

  @override
  String get discordTimer => 'Mostra il timer';

  @override
  String get discordTimerDesc => 'Tempo trascorso o rimanente sotto il titolo.';

  @override
  String get discordButtons => 'Mostra i pulsanti';

  @override
  String get discordButtonsDesc =>
      'Pulsanti \"Guarda anime / manga\" e \"Apri Dartotsu\".';

  @override
  String get discordHideTitles => 'Nascondi i titoli';

  @override
  String get discordHideTitlesDesc =>
      'Sostituisce i nomi di anime e manga (con copertina e link) con \"Qualcosa di privato\".';

  @override
  String get discordConnectionHeader => 'Connessione';

  @override
  String get listSearchHint => 'Cerca in questa lista';

  @override
  String get listSort => 'Ordina';

  @override
  String get listFilter => 'Filtra';

  @override
  String get listRandom => 'Titolo a caso';

  @override
  String get listReverse => 'Ordine inverso';

  @override
  String get listSortDefault => 'Ordine della lista';

  @override
  String get listSortScore => 'Il tuo voto';

  @override
  String get listSortTitle => 'Titolo';

  @override
  String get listSortUpdated => 'Ultimo aggiornamento';

  @override
  String get listSortProgress => 'Progresso';

  @override
  String get listSortReleased => 'Data di uscita';

  @override
  String get listSortAverage => 'Voto medio';

  @override
  String get listFilterFormat => 'Formato';

  @override
  String get listFilterStatus => 'Stato';

  @override
  String get listFilterGenres => 'Generi';

  @override
  String get listFilterClear => 'Cancella filtri';

  @override
  String get listNoMatches => 'Niente in questa lista corrisponde';

  @override
  String get discordLogin => 'Accedi a Discord';

  @override
  String get discordToken => 'Token Discord';

  @override
  String get discordTokenSaved =>
      'Salvato. Tocca per sostituire, tieni premuto per rimuovere.';

  @override
  String get discordTokenNotSet => 'Non impostato. Tocca per aggiungerlo.';

  @override
  String get discordTokenSavedSnack => 'Token Discord salvato';

  @override
  String get discordTokenRemovedSnack => 'Token Discord rimosso';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Attivo · tocca per cambiare l\'aspetto';

  @override
  String get discordRichPresenceRowOff =>
      'Mostra cosa stai facendo sul tuo profilo Discord';

  @override
  String get loginCancelled => 'Accesso annullato';

  @override
  String get invalidToken => 'Token non valido';

  @override
  String loginFailed(String error) {
    return 'Accesso non riuscito: $error';
  }

  @override
  String get malLoginFailed => 'Accesso a MyAnimeList non riuscito';

  @override
  String get kitsuLoginFailed =>
      'Accesso a Kitsu non riuscito. Controlla email e password.';

  @override
  String get kitsuLoginTitle => 'Accedi a Kitsu';

  @override
  String get emailOrUsername => 'Email o nome utente';

  @override
  String get password => 'Password';

  @override
  String get kitsuProfile => 'Profilo Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Accesso a MangaBaka non riuscito';

  @override
  String get mangaBakaProfile => 'Profilo MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Aggiorna da MangaBaka';

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
  String get artistsLabel => 'Artisti';

  @override
  String get authorsLabel => 'Autori';

  @override
  String get publishersLabel => 'Editori';

  @override
  String get licensedLabel => 'Con licenza';

  @override
  String get contentRatingLabel => 'Classificazione dei contenuti';

  @override
  String get yesLabel => 'Sì';

  @override
  String get noLabel => 'No';

  @override
  String get ratingSteps => 'Scala di valutazione';

  @override
  String get hideNsfw => 'Nascondi NSFW';

  @override
  String get hideNsfwDesc =>
      'Tieni i titoli per adulti fuori da feed e ricerca, e mostra le tue voci per adulti in Media nascosti.';

  @override
  String get kitsuAccountOptions => 'Opzioni dell\'account Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Opzioni account MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Impossibile aggiornare le impostazioni di Kitsu';

  @override
  String get titleCanonical => 'Canonico';

  @override
  String get titleRomanized => 'Romanizzato';

  @override
  String get titleLocalized => 'Localizzato';

  @override
  String get ratingSystem => 'Sistema di valutazione';

  @override
  String get ratingSimple => 'Semplice (3 faccine)';

  @override
  String get ratingRegular => 'Normale (5 stelle)';

  @override
  String get ratingAdvanced => 'Avanzato (10 punti)';

  @override
  String get contentFilter => 'Filtro contenuti';

  @override
  String get contentSfw => 'Solo contenuti sicuri';

  @override
  String get contentSometimes => 'Contenuti per adulti nelle ricerche';

  @override
  String get contentEverywhere => 'Contenuti per adulti ovunque';

  @override
  String get shareToGlobal => 'Condividi nel feed globale';

  @override
  String get shareToGlobalDesc =>
      'Fai comparire la tua attività nel feed globale di Kitsu.';

  @override
  String get memberSince => 'Iscritto dal';

  @override
  String get location => 'Posizione';

  @override
  String get accountType => 'Tipo di account';

  @override
  String get accountSupporter => 'Sostenitore';

  @override
  String get accountFree => 'Gratuito';

  @override
  String get accountDetails => 'Dettagli dell\'account';

  @override
  String get refreshFromKitsu => 'Aggiorna da Kitsu';

  @override
  String get simklReadOnly => 'Simkl ha concesso l\'accesso in sola lettura';

  @override
  String get incognitoEditsBlocked =>
      'Incognito: le modifiche alle liste sono bloccate';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Incognito: progresso non salvato';

  @override
  String progressSet(int progress) {
    return 'Progresso impostato a $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title rimosso dalla tua lista';
  }

  @override
  String get following => 'Seguiti';

  @override
  String get homeSections => 'Sezioni della home';

  @override
  String get homeSectionsHint =>
      'Trascina per riordinare. Le sezioni nascoste non vengono mai caricate.';

  @override
  String get customListDeleteFailed =>
      'Impossibile eliminare la lista personalizzata';

  @override
  String get customListsSaveFailed =>
      'Impossibile salvare le liste personalizzate';

  @override
  String get customListsSaved => 'Liste personalizzate salvate';

  @override
  String get listName => 'Nome della lista';

  @override
  String get addList => 'Aggiungi lista';

  @override
  String voiceActorsIn(String name) {
    return 'Doppiatori · $name';
  }

  @override
  String get animeAppearances => 'Apparizioni negli anime';

  @override
  String get mangaAppearances => 'Apparizioni nei manga';

  @override
  String get voicedCharacters => 'Personaggi doppiati';

  @override
  String get animeCredits => 'Crediti negli anime';

  @override
  String get mangaCredits => 'Crediti nei manga';

  @override
  String get mainProductions => 'Produzioni principali';

  @override
  String get otherWorks => 'Altre opere';

  @override
  String get prequelSequel => 'Prequel e sequel';

  @override
  String get previousSeason => 'Stagione precedente';

  @override
  String get thisSeason => 'Questa stagione';

  @override
  String get nextSeason => 'Stagione successiva';

  @override
  String get voiceRoles => 'Ruoli da doppiatore';

  @override
  String get staffPositions => 'Ruoli nello staff';

  @override
  String get mangaWorks => 'Opere manga';

  @override
  String get malProfile => 'Profilo MyAnimeList';

  @override
  String get refreshFromMal => 'Aggiorna da MyAnimeList';

  @override
  String get repullProfileCounts => 'Ricarica il tuo profilo e i conteggi';

  @override
  String get refreshed => 'Aggiornato';

  @override
  String get simklProfile => 'Profilo Simkl';

  @override
  String get refreshFromSimkl => 'Aggiorna da Simkl';

  @override
  String get repullProfileLibrary =>
      'Ricarica il tuo profilo e la tua libreria';

  @override
  String get simklSignInToSearch => 'Accedi a Simkl per cercare';

  @override
  String get dropRate => 'Tasso di abbandono';

  @override
  String get simklAttribution =>
      'Dati e artwork forniti da Simkl. Vedi su Simkl';

  @override
  String get onHold => 'In pausa';

  @override
  String get scoredBy => 'Votato da';

  @override
  String get planToWatch => 'Da guardare';

  @override
  String get planToRead => 'Da leggere';

  @override
  String get timesRewatched => 'Volte rivisto';

  @override
  String get timesReread => 'Volte riletto';

  @override
  String get comments => 'Commenti';

  @override
  String get moviesAndSeries => 'Film e serie';

  @override
  String get trackingOnly => 'Solo tracking';

  @override
  String get signedIn => 'Accesso effettuato';

  @override
  String get searchLanguage => 'Lingua di ricerca';

  @override
  String get savedToList => 'Salvato nella tua lista';

  @override
  String get removedFromYourList => 'Rimosso dalla tua lista';

  @override
  String get retry => 'Riprova';

  @override
  String get synopsis => 'Trama';

  @override
  String get details => 'Dettagli';

  @override
  String get addToList => 'Aggiungi alla lista';

  @override
  String get trailer => 'Trailer';

  @override
  String get titleCopied => 'Titolo copiato';

  @override
  String get linkCopied => 'Link copiato';

  @override
  String get watchTrailer => 'Guarda il trailer';

  @override
  String get copyTitle => 'Copia titolo';

  @override
  String get copyLink => 'Copia link';

  @override
  String get openInBrowser => 'Apri nel browser';

  @override
  String viewOnSource(String source) {
    return 'Vedi su $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'L\'episodio $ep esce tra $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Prossimo episodio tra $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Capitolo $chapter atteso tra circa $time';
  }

  @override
  String get logPathCopied => 'Percorso del file di log copiato negli appunti';

  @override
  String get animeSource => 'Fonte anime';

  @override
  String get mangaSource => 'Fonte manga';

  @override
  String get popular => 'Popolari';

  @override
  String get latest => 'Ultimi';

  @override
  String get saved => 'Salvati';

  @override
  String get nothingMatched => 'Nessun risultato';

  @override
  String get nothingSavedFromSource =>
      'Ancora niente di salvato da questa fonte';

  @override
  String get sourceReturnedNothing => 'Questa fonte non ha restituito nulla';

  @override
  String get checkConnectionOrSource =>
      'Controlla la connessione o prova un\'altra fonte.';

  @override
  String get tryDifferentSearch => 'Prova con un altro termine di ricerca.';

  @override
  String get savedTitlesAppearHere =>
      'I titoli che aggiungi alla tua lista compaiono qui.';

  @override
  String get tryOtherFeed => 'Prova con l\'altro feed o con la ricerca.';

  @override
  String searchSource(String source) {
    return 'Cerca in $source';
  }

  @override
  String get animeExtensions => 'Estensioni anime';

  @override
  String get mangaExtensions => 'Estensioni manga';

  @override
  String get nothingHereYet => 'Ancora niente qui';

  @override
  String get savedOnDeviceUntilLogin =>
      'Tutto quello che c\'è qui sotto resta salvato su questo dispositivo finché non fai altro.';

  @override
  String get yourProfile => 'Il tuo profilo';

  @override
  String get activity => 'Attività';

  @override
  String get extensions => 'Estensioni';

  @override
  String get logOut => 'Esci';

  @override
  String get logIn => 'Accedi';

  @override
  String get logOutConfirm => 'Sei sicuro di voler uscire?';

  @override
  String get incognitoMode => 'Modalità incognito';

  @override
  String get alsoBlockListEdits => 'Blocca anche le modifiche alle liste';

  @override
  String get offlineMode => 'Modalità offline';

  @override
  String get switchService => 'Cambia servizio';

  @override
  String logOutOf(String name) {
    return 'Esci da $name';
  }

  @override
  String get loggedIn => 'Accesso effettuato';

  @override
  String get notifications => 'Notifiche';

  @override
  String get nothingNew => 'Niente di nuovo';

  @override
  String get thisWeek => 'Questa settimana';

  @override
  String get listOnly => 'Solo lista';

  @override
  String get filter => 'Filtra';

  @override
  String get searchResults => 'Risultati della ricerca';

  @override
  String get recentSearches => 'Ricerche recenti';

  @override
  String get searchOrSetFilter => 'Cerca o imposta un filtro';

  @override
  String get filters => 'Filtri';

  @override
  String get showLess => 'Mostra meno';

  @override
  String get showAll => 'Mostra tutto';

  @override
  String get apply => 'Applica';

  @override
  String get preview => 'Anteprima';

  @override
  String get preset => 'Preset';

  @override
  String get cardNormal => 'Normale';

  @override
  String get cardOnCard => 'Sulla card';

  @override
  String get cardInCard => 'Nella card';

  @override
  String get size => 'Dimensione';

  @override
  String get cardWidth => 'Larghezza della card';

  @override
  String get compact => 'Compatto';

  @override
  String get coverAndTitleOnly => 'Solo copertina e titolo';

  @override
  String get titleLines => 'Righe del titolo';

  @override
  String get shape => 'Forma';

  @override
  String get posterShape => 'Forma del poster';

  @override
  String get cornerRadius => 'Raggio degli angoli';

  @override
  String get off => 'Off';

  @override
  String get topLeft => 'In alto a sinistra';

  @override
  String get topRight => 'In alto a destra';

  @override
  String get bottomLeft => 'In basso a sinistra';

  @override
  String get bottomRight => 'In basso a destra';

  @override
  String get overlays => 'Overlay';

  @override
  String get progressCount => 'Progresso / conteggio';

  @override
  String get pill => 'Pillola';

  @override
  String get bar => 'Barra';

  @override
  String get outside => 'Esterno';

  @override
  String get scoreBadge => 'Badge del voto';

  @override
  String get airingDot => 'Pallino \"in onda\"';

  @override
  String get updateAvailable => 'Aggiornamento disponibile';

  @override
  String get notInstalled => 'Non installato';

  @override
  String get done => 'Fatto';

  @override
  String get searchOrEnterUrl => 'Cerca o inserisci un URL';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get share => 'Condividi';

  @override
  String get characters => 'Personaggi';

  @override
  String get staff => 'Staff';

  @override
  String get readMore => 'Leggi tutto';

  @override
  String get couldNotLoadList => 'Impossibile caricare la lista';

  @override
  String get logInToFavourite => 'Accedi per aggiungere ai preferiti';

  @override
  String get alsoKnownAs => 'Noto anche come';

  @override
  String get hideSpoilerNames => 'Nascondi i nomi spoiler';

  @override
  String get showSpoilerNames => 'Mostra i nomi spoiler';

  @override
  String get favourited => 'Nei preferiti';

  @override
  String get favourite => 'Preferito';

  @override
  String get couldNotOpenTitle => 'Impossibile aprire questo titolo';

  @override
  String get nobodyHereYet => 'Ancora nessuno qui';

  @override
  String get noMatches => 'Nessun risultato';

  @override
  String get gridView => 'Vista a griglia';

  @override
  String get fullWidth => 'Larghezza intera';

  @override
  String get userNotFound => 'Utente non trovato';

  @override
  String get couldNotUpdateFollow => 'Impossibile aggiornare il follow';

  @override
  String followedUser(String name) {
    return 'Ora segui $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Non segui più $name';
  }

  @override
  String get messages => 'Messaggi';

  @override
  String get logInToSeeMessages => 'Accedi per vedere i tuoi messaggi';

  @override
  String get editActivity => 'Modifica attività';

  @override
  String get newActivity => 'Nuova attività';

  @override
  String get editMessage => 'Modifica messaggio';

  @override
  String get writeMessage => 'Scrivi un messaggio';

  @override
  String get editReply => 'Modifica risposta';

  @override
  String get posted => 'Pubblicato';

  @override
  String get couldNotPost => 'Impossibile pubblicare';

  @override
  String get nothingToPreview => 'Niente da mostrare in anteprima';

  @override
  String get writeSomethingHint =>
      'Scrivi qualcosa… qui funziona il markdown di AniList';

  @override
  String get privateMessage => 'Messaggio privato';

  @override
  String get post => 'Pubblica';

  @override
  String get nothingHere => 'Niente qui';

  @override
  String get noAnimeProgress => 'Nessun progresso anime';

  @override
  String get noMangaProgress => 'Nessun progresso manga';

  @override
  String get noMessages => 'Nessun messaggio';

  @override
  String get writeMessageHint => 'Scrivi un messaggio…';

  @override
  String get shareSomethingHint => 'Condividi qualcosa…';

  @override
  String get all => 'Tutti';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Conteggio';

  @override
  String get hoursWatched => 'Ore guardate';

  @override
  String get chaptersRead => 'Capitoli letti';

  @override
  String get meanScore => 'Voto medio';

  @override
  String get noStatsYet => 'Ancora nessuna statistica';

  @override
  String get totalEntries => 'Voci totali';

  @override
  String get episodesWatched => 'Episodi guardati';

  @override
  String get daysWatched => 'Giorni guardati';

  @override
  String get volumesRead => 'Volumi letti';

  @override
  String get standardDeviation => 'Deviazione standard';

  @override
  String get showMore => 'Mostra altro';

  @override
  String get followsYou => 'Ti segue';

  @override
  String get nobodyYet => 'Ancora nessuno';

  @override
  String get logInToLike => 'Accedi per mettere mi piace';

  @override
  String get failedToLikeActivity =>
      'Impossibile mettere mi piace all\'attività';

  @override
  String get deleteActivityConfirm => 'Eliminare l\'attività?';

  @override
  String get deletedActivity => 'Attività eliminata';

  @override
  String get failedToDeleteActivity => 'Impossibile eliminare l\'attività';

  @override
  String get subscribed => 'Iscritto';

  @override
  String get unsubscribed => 'Iscrizione annullata';

  @override
  String get failedToUpdateSubscription =>
      'Impossibile aggiornare l\'iscrizione';

  @override
  String get edit => 'Modifica';

  @override
  String get delete => 'Elimina';

  @override
  String get likedBy => 'Piace a';

  @override
  String get follow => 'Segui';

  @override
  String get nameCopied => 'Nome copiato';

  @override
  String get followsEachOther => 'Vi seguite a vicenda';

  @override
  String get unfollow => 'Smetti di seguire';

  @override
  String get userIdCopied => 'ID utente copiato';

  @override
  String get shareProfile => 'Condividi profilo';

  @override
  String get copyUserId => 'Copia ID utente';

  @override
  String get failedToDelete => 'Impossibile eliminare';

  @override
  String get failedToLike => 'Impossibile mettere mi piace';

  @override
  String get replies => 'Risposte';

  @override
  String get reply => 'Rispondi';

  @override
  String get noRepliesYet => 'Ancora nessuna risposta';

  @override
  String get favouriteAnime => 'Anime preferiti';

  @override
  String get favouriteManga => 'Manga preferiti';

  @override
  String get favouriteCharacters => 'Personaggi preferiti';

  @override
  String get favouriteStaff => 'Staff preferito';

  @override
  String get favouriteStudios => 'Studi preferiti';

  @override
  String get noFavouritesYet => 'Ancora nessun preferito';

  @override
  String get yourStory => 'La tua storia';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get justNow => 'Adesso';

  @override
  String get openImage => 'Apri immagine';

  @override
  String get hideSpoiler => 'Nascondi spoiler';

  @override
  String get showSpoiler => 'Mostra spoiler';

  @override
  String get status => 'Stato';

  @override
  String get score => 'Voto';

  @override
  String get started => 'Iniziato';

  @override
  String get completed => 'Completato';

  @override
  String get private => 'Privato';

  @override
  String get hideFromStatusLists => 'Nascondi dalle liste di stato';

  @override
  String get totalRepeats => 'Ripetizioni totali';

  @override
  String get other => 'Altro';

  @override
  String get customLists => 'Liste personalizzate';

  @override
  String get activeDays => 'Giorni attivi';

  @override
  String get longestStreak => 'Serie più lunga';

  @override
  String get currentStreak => 'Serie attuale';

  @override
  String get tapOrHoverDay => 'Tocca o passa sopra un giorno';

  @override
  String get less => 'Meno';

  @override
  String get more => 'Più';

  @override
  String epIn(int ep, String time) {
    return 'Ep $ep tra $time';
  }

  @override
  String get sectionLoading => 'Caricamento';

  @override
  String get querySize => 'Dimensione delle query';

  @override
  String get querySizeDesc =>
      'Una query unica carica tutte le righe (e un intero profilo) in una sola richiesta. Le query divise inviano una piccola richiesta per riga o per parte di profilo: ognuna è veloce e le parti compaiono man mano che arrivano.';

  @override
  String get oneBig => 'Unica';

  @override
  String get split => 'Divise';

  @override
  String get sectionSocial => 'Social';

  @override
  String get systemNotifications => 'Notifiche di sistema';

  @override
  String get feedLayout => 'Layout del feed';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown di $total mostrate — tocca per scegliere e riordinare';
  }

  @override
  String labelSections(String label) {
    return 'Sezioni $label';
  }

  @override
  String get accountOptions => 'Opzioni dell\'account';

  @override
  String get anilistAccountOptions => 'Opzioni dell\'account AniList';

  @override
  String get sectionPrivacy => 'Privacy';

  @override
  String get hidePrivateEntries => 'Nascondi le voci private';

  @override
  String get hidePrivateEntriesDesc =>
      'Tieni fuori dal feed le voci segnate come private su AniList';

  @override
  String get anilistExcludeList => 'Escludi la tua lista';

  @override
  String get anilistExcludeListDesc =>
      'Nasconde dalle pagine anime e manga i titoli che hai già su AniList';

  @override
  String get anilistProfile => 'Profilo AniList';

  @override
  String get refreshFromAnilist => 'Aggiorna da AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Impossibile aggiornare le impostazioni di AniList';

  @override
  String get sectionNames => 'Nomi';

  @override
  String get titleLanguage => 'Lingua dei titoli';

  @override
  String get titleLanguageDesc =>
      'Come vengono scritti i titoli ovunque, es. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Nomi di staff e personaggi';

  @override
  String get sectionLists => 'Liste';

  @override
  String get scoreFormat => 'Formato dei voti';

  @override
  String get sortListsBy => 'Ordina le liste per';

  @override
  String labelCustomLists(String label) {
    return 'Liste personalizzate di $label';
  }

  @override
  String customListsCount(int count) {
    return '$count liste — tocca per aggiungere o rimuovere';
  }

  @override
  String get mergeActivities => 'Unisci le attività';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Fuso orario';

  @override
  String get notSet => 'Non impostato';

  @override
  String get airingNotifications => 'Notifiche di uscita';

  @override
  String get airingNotificationsDesc =>
      'Ricevi una notifica quando esce un episodio di una serie che segui';

  @override
  String get displayAdultContent => 'Mostra contenuti per adulti';

  @override
  String get displayAdultContentDesc =>
      'Includi titoli 18+ in esplora, ricerca e feed';

  @override
  String get restrictMessages => 'Limita i messaggi a chi segui';

  @override
  String get restrictMessagesDesc =>
      'Solo le persone che segui possono scriverti';

  @override
  String get sectionServices => 'Servizi';

  @override
  String get novel => 'Novel';

  @override
  String labelService(String label) {
    return 'Servizio $label';
  }

  @override
  String nameSettings(String name) {
    return 'Impostazioni di $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Opzioni dal bridge delle estensioni di $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name non è riuscito ad avviarsi: $error';
  }

  @override
  String get importLists => 'Importa liste';

  @override
  String get importListsDesc =>
      'Da backup di Aniyomi, Mihon / Tachiyomi o Kotatsu';

  @override
  String get exportLists => 'Esporta liste';

  @override
  String get exportListsDesc => 'In un backup di Aniyomi, Mihon o Kotatsu';

  @override
  String get sectionBrowse => 'Esplora';

  @override
  String get readingTab => 'Scheda di lettura';

  @override
  String get readingTabDesc => 'Quali estensioni mostra la terza scheda';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Feed predefinito';

  @override
  String get defaultFeedDesc => 'Quale lista apre una fonte all\'inizio';

  @override
  String noServiceSupports(String type) {
    return 'Nessun servizio supporta $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded fonti su $installed in caricamento';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Nessun servizio di estensioni supporta $type qui.';
  }

  @override
  String get loadDataFrom => 'Carica i dati da';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Ancora nessuna fonte $type installata.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'L\'estensione per $name non è installata';
  }

  @override
  String get thisSource => 'questa fonte';

  @override
  String failedToAddRepository(String error) {
    return 'Impossibile aggiungere il repository: $error';
  }

  @override
  String installedType(String type) {
    return '$type installati';
  }

  @override
  String availableType(String type) {
    return '$type disponibili';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Nessuna estensione $type installata';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Nessuna estensione $type disponibile';
  }

  @override
  String get nothingToShowYet => 'Ancora niente da mostrare';

  @override
  String get addTitlesHint =>
      'Aggiungi qualche titolo alla tua lista e comparirà qui.';

  @override
  String get couldntLoad => 'Impossibile caricare';

  @override
  String get progressStyleHint =>
      'Pillola e barra stanno sopra il poster; \"Esterno\" mostra lo stesso conteggio come semplice testo — sceglierne uno.';

  @override
  String get nixManagedUpdate =>
      'Questa build è gestita da Nix — esegui \"nix flake update\" sul tuo flake e ricostruisci invece di aggiornare da qui';

  @override
  String autoUpdateFailed(String error) {
    return 'Aggiornamento automatico non riuscito ($error) — apro invece la pagina di download';
  }

  @override
  String get unknownPreference => 'Preferenza sconosciuta';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Tipo di preferenza non supportato: $type';
  }

  @override
  String get notYetReleased => 'Non ancora uscito';

  @override
  String get notStarted => 'Non iniziato';

  @override
  String get country => 'Paese';

  @override
  String get sort => 'Ordina';

  @override
  String get chooseBackupDialog =>
      'Scegli un backup di Aniyomi, Mihon o Kotatsu';

  @override
  String get importListsHint =>
      'Porta qui una libreria da Aniyomi, Mihon / Tachiyomi o Kotatsu. Titoli, copertine, progressi e categorie vengono mantenuti.';

  @override
  String get chooseBackupFile => 'Scegli file di backup';

  @override
  String importAnimeCount(int count) {
    return 'Importa $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Importa $count manga';
  }

  @override
  String get mergeWithExisting => 'Unisci alle liste esistenti';

  @override
  String get mergeWithExistingDesc =>
      'Mantiene quello che hai già; se disattivato sostituisce i titoli corrispondenti';

  @override
  String get chooseAnother => 'Scegline un altro';

  @override
  String get import => 'Importa';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Scegli dove salvare il backup';

  @override
  String savedPath(String path) {
    return 'Salvato $path';
  }

  @override
  String exportFailed(String error) {
    return 'Esportazione non riuscita: $error';
  }

  @override
  String get nothingInLocalLists => 'Ancora niente nelle tue liste locali.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Esporta $anime anime e $manga manga dalle tue liste locali. Kotatsu supporta solo i manga.';
  }

  @override
  String get saveToFolder => 'Salva nella cartella';

  @override
  String get formatAnimeManga => 'Anime e manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Solo manga · .tachibk';

  @override
  String get formatMangaZip => 'Solo manga · .zip';

  @override
  String get genres => 'Generi';

  @override
  String get relations => 'Correlati';

  @override
  String get recommendations => 'Consigliati';

  @override
  String get openings => 'Sigle di apertura';

  @override
  String get endings => 'Sigle di chiusura';

  @override
  String get background => 'Contesto';

  @override
  String get links => 'Link';

  @override
  String get rank => 'Posizione';

  @override
  String get members => 'Membri';

  @override
  String get favorites => 'Preferiti';

  @override
  String get episodes => 'Episodi';

  @override
  String get chapters => 'Capitoli';

  @override
  String get volumes => 'Volumi';

  @override
  String get format => 'Formato';

  @override
  String get source => 'Fonte';

  @override
  String get duration => 'Durata';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min per ep';
  }

  @override
  String get rating => 'Classificazione';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Serializzazione';

  @override
  String get season => 'Stagione';

  @override
  String get broadcast => 'Trasmissione';

  @override
  String get aired => 'In onda';

  @override
  String get published => 'Pubblicato';

  @override
  String get popularity => 'Popolarità';

  @override
  String get community => 'Community';

  @override
  String get watching => 'In visione';

  @override
  String get reading => 'In lettura';

  @override
  String get dropped => 'Abbandonati';

  @override
  String get planned => 'Pianificati';

  @override
  String get trailers => 'Trailer';

  @override
  String get ratings => 'Valutazioni';

  @override
  String get originalTitle => 'Originale';

  @override
  String get titleLabel => 'Titolo';

  @override
  String get votes => 'Voti';

  @override
  String get watchedStat => 'Guardati';

  @override
  String get runtime => 'Durata';

  @override
  String get director => 'Regista';

  @override
  String get network => 'Rete';

  @override
  String get certification => 'Certificazione';

  @override
  String get airs => 'Va in onda';

  @override
  String get budget => 'Budget';

  @override
  String get revenue => 'Incassi';

  @override
  String get released => 'Uscito';

  @override
  String get tags => 'Tag';

  @override
  String get author => 'Autore';

  @override
  String get born => 'Nato/a';

  @override
  String get website => 'Sito web';

  @override
  String get established => 'Fondato';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novel';

  @override
  String get thisMonth => 'Questo mese';

  @override
  String get movies => 'Film';

  @override
  String get shows => 'Serie';

  @override
  String get rewatching => 'Rivedendo';

  @override
  String get rereading => 'Rileggendo';

  @override
  String get watchedStatus => 'Guardati';

  @override
  String get planning => 'Pianificati';

  @override
  String get paused => 'In pausa';

  @override
  String get watch => 'Guarda';

  @override
  String get read => 'Leggi';

  @override
  String get finished => 'Finito';

  @override
  String get releasing => 'In corso';

  @override
  String get cancelled => 'Cancellato';

  @override
  String get hiatus => 'In pausa';

  @override
  String get remove => 'Rimuovi';

  @override
  String syncToService(String service) {
    return 'Sincronizza con $service';
  }

  @override
  String syncedToService(String service) {
    return 'Sincronizzato con $service';
  }

  @override
  String get latestReleases => 'Ultime uscite';

  @override
  String get topRated => 'Più votati';

  @override
  String localSection(String title) {
    return '$title · Locale';
  }

  @override
  String get localEntryNote =>
      'Questo titolo è solo nella tua lista locale su questo dispositivo. Qui la modifica è disattivata perché potrebbe entrare in conflitto con la lista del tuo account; puoi comunque rimuoverlo.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Card';

  @override
  String get cardPresetCozy => 'Cozy';

  @override
  String get sortTopRated => 'Più votati';

  @override
  String get sortMostPopular => 'Più popolari';

  @override
  String get sortTrending => 'In tendenza';

  @override
  String get sortNewest => 'Più recenti';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Più preferiti';

  @override
  String get anyCountry => 'Qualsiasi paese';

  @override
  String get orderScore => 'Voto';

  @override
  String get orderTitle => 'Titolo';

  @override
  String get orderLastUpdated => 'Ultimo aggiornamento';

  @override
  String get orderLastAdded => 'Ultimo aggiunto';

  @override
  String get never => 'Mai';

  @override
  String get always => 'Sempre';

  @override
  String get scorePoint100 => '100 punti';

  @override
  String get scorePoint10Decimal => '10 punti decimali';

  @override
  String get scorePoint10 => '10 punti';

  @override
  String get scorePoint5 => '5 stelle';

  @override
  String get scorePoint3 => '3 punti smiley';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ore',
      one: '1 ora',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count settimane',
      one: '1 settimana',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Riprendi';

  @override
  String get resumeSourceMissing =>
      'Installa la fonte di questo titolo per riprendere';

  @override
  String get resumeRemove => 'Rimuovi da \"Riprendi\"';

  @override
  String resumeAt(String time) {
    return '$time rimanenti';
  }

  @override
  String resumePage(int page, int total) {
    return 'Pagina $page di $total';
  }

  @override
  String get continueWatching => 'Continua a guardare';

  @override
  String get continueReading => 'Continua a leggere';

  @override
  String get favouriteAnimeSection => 'Anime preferiti';

  @override
  String get favouriteMangaSection => 'Manga preferiti';

  @override
  String get plannedAnime => 'Anime pianificati';

  @override
  String get plannedManga => 'Manga pianificati';

  @override
  String get completedAnime => 'Anime completati';

  @override
  String get completedManga => 'Manga completati';

  @override
  String get hiddenMedia => 'Media nascosti';

  @override
  String get recentUpdates => 'Aggiornamenti recenti';

  @override
  String get trendingNow => 'Di tendenza ora';

  @override
  String get popularThisSeason => 'Popolari in questa stagione';

  @override
  String get trendingMovies => 'Film di tendenza';

  @override
  String get topRatedSeries => 'Serie più votate';

  @override
  String get mostFavouriteSeries => 'Serie più preferite';

  @override
  String get popularAnime => 'Anime popolari';

  @override
  String get trendingManhwa => 'Manhwa di tendenza';

  @override
  String get trendingNovels => 'Novel di tendenza';

  @override
  String get topRatedManga => 'Manga più votati';

  @override
  String get mostFavouriteManga => 'Manga più preferiti';

  @override
  String get popularManga => 'Manga popolari';

  @override
  String get topMovies => 'Film top';

  @override
  String get topOna => 'ONA top';

  @override
  String get topOva => 'OVA top';

  @override
  String get mostPopular => 'Più popolari';

  @override
  String get mostFavourite => 'Più preferiti';

  @override
  String get upcoming => 'In arrivo';

  @override
  String get topManga => 'Manga top';

  @override
  String get topManhwa => 'Manhwa top';

  @override
  String get topManhua => 'Manhua top';

  @override
  String get topNovels => 'Novel top';

  @override
  String get topOneShots => 'One-shot top';

  @override
  String get trendingMoviesToday => 'Film di tendenza oggi';

  @override
  String get trendingShowsToday => 'Serie di tendenza oggi';

  @override
  String get trendingMoviesWeek => 'Film di tendenza questa settimana';

  @override
  String get trendingShowsWeek => 'Serie di tendenza questa settimana';

  @override
  String get mostWatchedMoviesMonth => 'Film più visti questo mese';

  @override
  String get mostWatchedShowsMonth => 'Serie più viste questo mese';

  @override
  String get trendingThisWeek => 'Di tendenza questa settimana';

  @override
  String get mostWatchedThisMonth => 'Più visti questo mese';

  @override
  String get repoLinksAdded => 'Link dei repo aggiunti!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'Errore nel recupero dei dati da AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'COMMENTI';

  @override
  String get playerNotAvailable => 'Il player non è ancora disponibile';

  @override
  String deepLinkInitialError(String error) {
    return 'Errore nel recupero del deep link iniziale: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Errore nell\'apertura del link: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Questo link non si può aprire: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Errore nell\'apertura del link: $error';
  }

  @override
  String get forReleasingTitles => 'per i titoli attualmente in corso';

  @override
  String get progress => 'Progresso';

  @override
  String get notes => 'Note';

  @override
  String serviceNotFound(String id) {
    return 'Servizio \"$id\" non trovato';
  }

  @override
  String get glassEffectEnabled => 'Effetto vetro attivato';

  @override
  String get glassEffectDisabled => 'Effetto vetro disattivato';

  @override
  String get materialYouEnabled => 'Material You attivato';

  @override
  String get materialYouDisabled => 'Material You disattivato';

  @override
  String get darkModeEnabled => 'Modalità scura attivata';

  @override
  String get darkModeDisabled => 'Modalità scura disattivata';

  @override
  String get animeList => 'Lista anime';

  @override
  String get mangaList => 'Lista manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Lista anime di $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Lista manga di $owner';
  }

  @override
  String get loadingList => 'Caricamento della lista';

  @override
  String get earlier => 'Prima';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni fa',
      one: '1 giorno fa',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ore fa',
      one: '1 ora fa',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuti fa',
      one: '1 minuto fa',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count min fa';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count h fa';
  }

  @override
  String daysAgoShort(int count) {
    return '$count g fa';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count sett. fa';
  }

  @override
  String get couldntLoadSource => 'Impossibile caricare questa fonte';

  @override
  String get followers => 'Follower';

  @override
  String couldntLoadTitle(String title) {
    return 'Impossibile caricare $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Impossibile caricare questo profilo';

  @override
  String get profile => 'Profilo';

  @override
  String get feed => 'Feed';

  @override
  String get stats => 'Statistiche';

  @override
  String get received => 'Ricevuti';

  @override
  String get sent => 'Inviati';

  @override
  String get global => 'Globale';

  @override
  String get couldntLoadPage => 'Impossibile caricare questa pagina';

  @override
  String get couldntLoadAllDetails => 'Impossibile caricare tutti i dettagli';

  @override
  String get series => 'Serie';

  @override
  String get studios => 'Studi';

  @override
  String get users => 'Utenti';

  @override
  String repositoriesTitle(String type) {
    return 'Repository $type';
  }

  @override
  String get repositoryUrl => 'URL del repository';

  @override
  String get downloadingRepository => 'Download del repository…';

  @override
  String get noRepositories => 'Nessun repository aggiunto';

  @override
  String repoExtensionsCount(String count) {
    return '$count estensioni';
  }

  @override
  String get searchExtensions => 'Cerca estensioni...';

  @override
  String deletePluginTitle(String name) {
    return 'Eliminare $name?';
  }

  @override
  String get deletePluginMessage => 'Vuoi davvero eliminare questo plugin?';

  @override
  String pluginDeleted(String name) {
    return '$name eliminato';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name non è disponibile nel repo configurato';
  }

  @override
  String get pluginFetchFailed => 'Impossibile recuperare le info del plugin';

  @override
  String installPluginTitle(String name) {
    return 'Installa $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Dimensione: $size';
  }

  @override
  String get installedState => 'Installato';

  @override
  String get errorLabel => 'Errore:';

  @override
  String get stackTraceDetails => 'Dettagli (stack trace)';

  @override
  String get shareLogFile => 'Condividi il file di log';

  @override
  String get copyLogs => 'Copia i log';

  @override
  String noListToEdit(String service) {
    return '$service non ha liste da modificare';
  }

  @override
  String get couldNotReadFile => 'Impossibile leggere quel file';

  @override
  String importedSummary(int anime, int manga) {
    return 'Importati $anime anime e $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count già presenti';
  }

  @override
  String get airingNow => 'In onda ora';

  @override
  String get topRatedMovies => 'Film più votati';

  @override
  String get koreanDramas => 'Drama coreani';

  @override
  String get chineseDramas => 'Drama cinesi';

  @override
  String get japaneseDramas => 'Drama giapponesi';

  @override
  String get thaiDramas => 'Drama thailandesi';

  @override
  String get turkishDramas => 'Serie turche';

  @override
  String get miniSeries => 'Miniserie';

  @override
  String get topRatedShows => 'Serie più votate';

  @override
  String get recommendedSection => 'Consigliati';

  @override
  String get syncRow => 'Sincronizza le liste';

  @override
  String get syncRowDesc =>
      'Copia la lista di un servizio sugli altri tuoi account';

  @override
  String get syncTitle => 'Sincronizza';

  @override
  String get syncMainService => 'Servizio principale';

  @override
  String get syncMainServiceDesc =>
      'La sua lista è la fonte di verità; tutti gli altri servizi con accesso vengono aggiornati per combaciare';

  @override
  String get syncAuto => 'Sincronizzazione automatica';

  @override
  String get syncAutoDesc =>
      'Recupera e sincronizza in background quando si apre l\'app e ogni 30 minuti';

  @override
  String get syncAddMissing => 'Aggiungi le voci mancanti';

  @override
  String get syncAddMissingDesc =>
      'Aggiungi anche le voci che l\'altro servizio non ha ancora';

  @override
  String get syncOnlyForward => 'Mantieni il progresso più avanzato';

  @override
  String get syncOnlyForwardDesc =>
      'Non abbassare il progresso di un servizio che è già più avanti';

  @override
  String get syncFetch => 'Recupera';

  @override
  String get syncFetchAgain => 'Recupera di nuovo';

  @override
  String get syncAll => 'Sincronizza tutto';

  @override
  String get syncStop => 'Stop';

  @override
  String get syncResume => 'Riprendi';

  @override
  String get syncNothingToSync =>
      'Questo servizio non si può sincronizzare per questo tipo';

  @override
  String get syncNoTargets =>
      'Accedi a un altro servizio con cui sincronizzare';

  @override
  String get syncLoadingMap => 'Caricamento della mappatura degli ID';

  @override
  String get syncComparing => 'Confronto delle liste';

  @override
  String get syncIntro =>
      'Scegli un servizio principale e premi Recupera. Ogni servizio viene interrogato una volta per la tua lista, poi confrontato con quello principale.';

  @override
  String get syncStateSynced => 'Sincronizzato';

  @override
  String get syncStateOutdated => 'Non sincronizzato';

  @override
  String get syncStateMissing => 'Non in lista';

  @override
  String get syncStateUnmapped => 'Nessuna corrispondenza';

  @override
  String syncPaused(String time) {
    return 'In attesa del limite di richieste, riprende tra $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count solo su $name, lasciati intatti';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done di $total';
  }

  @override
  String get syncNothingHere => 'Niente da mostrare';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used richieste su $max usate in questo $window';
  }

  @override
  String get syncMinute => 'minuto';

  @override
  String get syncDay => 'giorno';

  @override
  String get syncNotInList => 'Non ancora in lista';

  @override
  String get syncCleared => 'Piano cancellato';

  @override
  String get syncClear => 'Cancella';

  @override
  String get syncOptions => 'Opzioni';

  @override
  String get syncShared => 'Condivide la voce con un altro elemento';

  @override
  String syncNotFound(String service) {
    return 'Non trovato su $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Sincronizza $service ($count)';
  }

  @override
  String get syncOnEdit => 'Sincronizza le modifiche subito';

  @override
  String get syncOnEditDesc =>
      'Invia subito ogni aggiornamento di progresso e modifica alle liste agli altri servizi con accesso';

  @override
  String syncPushed(String services) {
    return 'Sincronizzato con $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Troppe richieste, riprova tra un attimo';

  @override
  String get syncAhead => 'Vince chi è più avanti';

  @override
  String get syncAheadDesc =>
      'Bidirezionale: per ogni titolo vince la voce più avanzata e viene copiata su tutti gli altri tuoi servizi';

  @override
  String syncAheadFrom(String service) {
    return 'Da $service';
  }

  @override
  String get syncConfirm => 'Controlla prima di sincronizzare';

  @override
  String get syncConfirmDesc =>
      'Mostra cosa cambierà \"Sincronizza tutto\" e quante richieste servono';

  @override
  String get syncPreviewTitle => 'Pronto per la sincronizzazione';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates aggiornamenti, $adds da aggiungere';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Circa $count richieste';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID richiedono prima una ricerca';
  }

  @override
  String get syncPreviewNothing => 'Niente da cambiare';

  @override
  String get syncStart => 'Avvia';

  @override
  String get syncRetry => 'Riprova';

  @override
  String get syncSkip => 'Salta questo elemento';

  @override
  String get syncInclude => 'Includi di nuovo questo elemento';

  @override
  String get syncSkippedLabel => 'Saltato';

  @override
  String get syncChanges => 'Differenze';

  @override
  String get syncChangeStatus => 'Stato';

  @override
  String get syncChangeProgress => 'Progresso';

  @override
  String get syncChangeScore => 'Voto';

  @override
  String get syncChangeDates => 'Date';

  @override
  String get syncChangeRepeat => 'Numero di rivisioni';

  @override
  String get syncFailedReason => 'Perché è fallito';

  @override
  String get syncSkippedHint =>
      'Gli elementi saltati restano com\'è, anche dopo un nuovo recupero';

  @override
  String get commentsRules => 'Regole dei commenti';

  @override
  String get commentsRulesBody =>
      'CHI INFRANGE UNA REGOLA VIENE CACCIATO\n\n1. Niente razzismo, discriminazione o incitamento all\'odio\n2. Niente spam o autopromozione\n3. Assolutamente niente contenuti NSFW\n4. Solo inglese, senza eccezioni\n5. Niente impersonificazioni, molestie o abusi\n6. Niente contenuti illegali o mancanze di rispetto estreme verso qualsiasi fandom\n7. Non chiedere né condividere repository o estensioni\n8. Spoiler solo con tag spoiler e un avviso\n9. Niente commenti sessualizzanti o inappropriati sui personaggi minorenni\n10. Se è sbagliato, non postarlo!';

  @override
  String get commentsRulesAccept => 'Ho capito';

  @override
  String get commentsSortNewest => 'Più recenti';

  @override
  String get commentsSortOldest => 'Più vecchi';

  @override
  String get commentsSortHighest => 'Più votati';

  @override
  String get commentsSortLowest => 'Meno votati';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Cap $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filtra per episodio';

  @override
  String get commentsFilterChapterTitle => 'Filtra per capitolo';

  @override
  String get commentsFilterTagTitle =>
      'Inserisci il numero di un episodio o capitolo';

  @override
  String get commentsFilterHint => 'Numero';

  @override
  String get commentsFilterApply => 'Filtra';

  @override
  String get commentsFilterClear => 'Mostra tutti';

  @override
  String get commentsPlaceholder => 'Aggiungi un commento…';

  @override
  String commentsReplyingTo(String name) {
    return 'In risposta a $name';
  }

  @override
  String get commentsSend => 'Invia';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (facoltativo)';
  }

  @override
  String get commentsTagEpisode => 'episodio';

  @override
  String get commentsTagChapter => 'capitolo';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Numero di $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Il tag non può superare il totale ($total)';
  }

  @override
  String get commentsNoTag => 'Nessun tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Cerca GIF';

  @override
  String get commentsGifEmpty => 'Nessuna GIF trovata';

  @override
  String get commentsEmptyText => 'Il commento non può essere vuoto';

  @override
  String get commentsBannedYou => 'Sei stato bannato dai commenti';

  @override
  String get commentsEdited => 'Commento modificato';

  @override
  String get commentsDeleted => 'Commento eliminato';

  @override
  String get commentsDeletedPlaceholder => '[eliminato]';

  @override
  String get commentsReported => 'Commento segnalato';

  @override
  String get commentsUserBanned => 'Utente bannato';

  @override
  String get commentsReport => 'Segnala';

  @override
  String get commentsReportAsk => 'Segnalare questo commento ai moderatori?';

  @override
  String get commentsDelete => 'Elimina';

  @override
  String get commentsDeleteAsk => 'Questo commento verrà rimosso per tutti.';

  @override
  String get commentsBan => 'Banna';

  @override
  String get commentsBanAsk => 'Bannare questo utente dai commenti?';

  @override
  String get commentsCopy => 'Copia';

  @override
  String get commentsViewReply => 'Vedi 1 risposta';

  @override
  String commentsViewReplies(int count) {
    return 'Vedi $count risposte';
  }

  @override
  String get commentsHideReplies => 'Nascondi risposte';

  @override
  String get commentsLoadMore => 'Carica altri commenti';

  @override
  String get commentsEmpty => 'Ancora nessun commento. Sii il primo!';

  @override
  String get commentsEmptyFiltered => 'Nessun commento per questo filtro';

  @override
  String get commentsSignIn =>
      'Accedi ad AniList per leggere e scrivere commenti';

  @override
  String get commentsSignInMessage =>
      'I commenti sono condivisi tra tutti i servizi e usano il tuo account AniList.';

  @override
  String get commentsUnavailable =>
      'I commenti non sono disponibili per questo titolo';

  @override
  String get commentsUnavailableMessage =>
      'Non è stato possibile abbinarlo a una voce di AniList.';

  @override
  String get commentsDisabled => 'I commenti sono disattivati';

  @override
  String get commentsDisabledMessage =>
      'Puoi riattivarli in Impostazioni › Generali.';

  @override
  String get commentsOffline => 'Impossibile caricare i commenti';

  @override
  String get commentsSingleTitle => 'Stai vedendo un commento';

  @override
  String get commentsShowAll => 'Mostra tutti i commenti';

  @override
  String get commentsSettingsHeader => 'Commenti';

  @override
  String get commentsSettingEnabled => 'Commenti';

  @override
  String get commentsSettingEnabledDesc =>
      'Mostra la scheda Commenti nei titoli e accedi al server dei commenti con il tuo account AniList';

  @override
  String get commentsSettingAlerts => 'Notifiche di risposta';

  @override
  String get commentsSettingAlertsDesc =>
      'Avvisami quando qualcuno risponde ai miei commenti';

  @override
  String get commentsNoticeReplyTitle => 'Nuova risposta al commento';

  @override
  String commentsNoticeReply(String name) {
    return '$name ha risposto al tuo commento';
  }

  @override
  String get commentsNoticeWarningTitle => 'Hai ricevuto un avvertimento';

  @override
  String get commentsNoticeWarning => 'Fai più attenzione ai tuoi commenti';

  @override
  String get commentsNoticeUpdateTitle => 'Aggiornamento da Dantotsu';

  @override
  String get barcodeTitle => 'Scansiona un codice a barre';

  @override
  String get barcodeTooltip => 'Trova un manga o una novel dal codice a barre';

  @override
  String get barcodeIntro =>
      'Inquadra il codice a barre sul retro di un volume, oppure scrivi l\'ISBN.';

  @override
  String get barcodeIntroManual =>
      'Scrivi l\'ISBN stampato sopra il codice a barre sul retro di un volume.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Non è un ISBN valido';

  @override
  String barcodeNotFound(String isbn) {
    return 'Nessun libro trovato per $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'La fotocamera non è disponibile. Consenti l\'accesso alla fotocamera o scrivi l\'ISBN.';

  @override
  String get themesTitle => 'Opening ed ending';

  @override
  String get themesPlayVideo => 'Riproduci video';

  @override
  String get themesPlayAudio => 'Riproduci solo audio';

  @override
  String get themesOpenSite => 'Apri su AnimeThemes';

  @override
  String get themesCredit => 'Sigle da AnimeThemes';

  @override
  String get themesVersions => 'Versioni';

  @override
  String get sauceTitle => 'Trova la fonte';

  @override
  String get sauceIntro =>
      'Carica una pagina manga o un\'illustrazione, oppure incolla il suo link, per scoprire da dove viene.';

  @override
  String get sauceKeyTitle => 'Chiave API di SauceNAO';

  @override
  String get sauceKeyHint =>
      'Facoltativa, alza il limite giornaliero di ricerche';

  @override
  String get sauceKeyDesc =>
      'Ottieni una chiave gratuita su saucenao.com/user.php';

  @override
  String get sauceOpen => 'Apri la fonte';

  @override
  String get sauceCredit => 'Ricerca immagini di SauceNAO';

  @override
  String get sauceEmpty => 'Nessuna corrispondenza';

  @override
  String get sauceTooltip =>
      'Trova la fonte di una pagina manga o di un\'illustrazione';

  @override
  String get trendzTitle => 'Classifiche anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Personaggi femminili';

  @override
  String get trendzMale => 'Personaggi maschili';

  @override
  String get trendzCouple => 'Coppie';

  @override
  String get trendzCredit => 'Classifiche settimanali di AniTrendz';

  @override
  String get trendzNew => 'NEW';

  @override
  String get trendzEmpty => 'La classifica è vuota';

  @override
  String get shareCard => 'Condividi card';

  @override
  String get shareCardList => 'Condividi la card della lista';

  @override
  String get shareCardSaved => 'Card salvata';

  @override
  String get shareCardFailed => 'Impossibile creare la card';

  @override
  String get shareCardListEmpty =>
      'La tua lista non ha ancora niente da condividere';

  @override
  String get shareCardTop => 'I miei preferiti';

  @override
  String themesEpisodes(String eps) {
    return 'Episodi $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% di corrispondenza';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Settimana $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count voti';
  }

  @override
  String trendzPeak(String rank) {
    return 'Picco #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count settimane nella top ten';
  }

  @override
  String get imageSearchTitle => 'Cerca con un\'immagine';

  @override
  String get imageSearchTooltip => 'Trova un anime da uno screenshot';

  @override
  String get imageSearchIntro =>
      'Scegli uno screenshot o incolla il link di un\'immagine e trace.moe troverà l\'episodio e il momento da cui viene.';

  @override
  String get imageSearchPick => 'Scegli immagine';

  @override
  String get imageSearchLinkHint => 'Incolla il link di un\'immagine';

  @override
  String get imageSearchGo => 'Cerca';

  @override
  String get imageSearchEmpty => 'Nessuna corrispondenza';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episodio $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'a $time';
  }

  @override
  String get imageSearchPreview => 'Clip di anteprima';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% di corrispondenza';
  }

  @override
  String get imageSearchCredit => 'Con tecnologia trace.moe';

  @override
  String get imageSearchOpenFailed => 'Impossibile aprire questo titolo';

  @override
  String get groups => 'Gruppi';

  @override
  String get groupsYours => 'I tuoi gruppi';

  @override
  String get groupsPopular => 'Popolari';

  @override
  String get groupsNew => 'Nuovi';

  @override
  String get groupsFeatured => 'In evidenza';

  @override
  String get groupsSearch => 'Cerca gruppi';

  @override
  String get groupsAll => 'Tutti';

  @override
  String get groupsEmpty => 'Nessun gruppo trovato';

  @override
  String get groupsEmptyYours => 'Non ti sei ancora iscritto a nessun gruppo';

  @override
  String get groupsSignIn => 'Accedi per vedere i gruppi a cui sei iscritto';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count membri',
      one: '1 membro',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Unisciti';

  @override
  String get groupsJoined => 'Iscritto';

  @override
  String get groupsLeave => 'Lascia il gruppo';

  @override
  String get groupsLeaveAsk =>
      'Non vedrai più i post di questo gruppo nel tuo feed.';

  @override
  String get groupsJoinFailed =>
      'Impossibile unirsi a questo gruppo, forse è solo a inviti';

  @override
  String get groupsLeaveFailed => 'Impossibile lasciare questo gruppo';

  @override
  String get groupsPosts => 'Post';

  @override
  String get groupsMembersTab => 'Membri';

  @override
  String get groupsAbout => 'Info';

  @override
  String get groupsRules => 'Regole';

  @override
  String get groupsPrivacyOpen => 'Aperto';

  @override
  String get groupsPrivacyRestricted => 'Limitato';

  @override
  String get groupsPrivacyClosed => 'Chiuso';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Impossibile caricare questo gruppo';

  @override
  String get groupsNewPost => 'Pubblica nel gruppo';

  @override
  String get groupsPostHint => 'Condividi qualcosa con il gruppo';

  @override
  String get groupsOpenInBrowser => 'Apri nel browser';

  @override
  String get groupsCategory => 'Categoria';

  @override
  String get groupsLanguage => 'Lingua';

  @override
  String get groupsCreated => 'Creato';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count leader',
      one: '1 leader',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privacy';

  @override
  String get notificationsAll => 'Tutte';

  @override
  String get notificationsAiring => 'In onda';

  @override
  String get notificationsMedia => 'Nuovi titoli';

  @override
  String get notificationsReplies => 'Risposte';

  @override
  String get notificationsMentions => 'Menzioni';

  @override
  String get notificationsMessages => 'Messaggi';

  @override
  String get notificationsLikes => 'Mi piace';

  @override
  String get notificationsFollows => 'Nuovi follower';

  @override
  String get notificationsNoServices =>
      'Nessun servizio con accesso ha notifiche';

  @override
  String get notificationsNoServicesMessage =>
      'Accedi a un servizio che invia notifiche e compariranno qui.';

  @override
  String get notificationsEmptyKind => 'Ancora niente in questa categoria';

  @override
  String get notificationsCommentsEmpty => 'Nessuna notifica dei commenti';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Qui compaiono le risposte ai tuoi commenti e gli annunci di Dantotsu.';

  @override
  String get notificationsSettings => 'Impostazioni delle notifiche';

  @override
  String get notificationsPollTitle => 'Controlla le nuove notifiche';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Ogni $minutes minuti mentre l\'app è aperta';
  }

  @override
  String get notificationsNotifyAbout => 'Avvisami per';

  @override
  String get notificationsCommentsHeader => 'Notifiche dei commenti';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Mostra una notifica di sistema per ogni notifica $service non letta mentre l\'app è in esecuzione.';
  }

  @override
  String get notificationsTestSent => 'Notifica di prova inviata';

  @override
  String get notificationsTestDenied =>
      'Le notifiche non sono consentite per Dartotsu. Attivale nelle impostazioni di sistema.';

  @override
  String get notificationsTestHint =>
      'Tieni premuto per inviare una notifica di prova';

  @override
  String get notificationsTestSample => 'Questa è una notifica di prova';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ha risposto al tuo commento in $media';
  }

  @override
  String get imageSearchNotLink => 'Non sembra un link';

  @override
  String get imageSearchQuota => 'Quota di ricerca superata';

  @override
  String get imageSearchBusy => 'Troppe richieste, riprova tra un attimo';

  @override
  String imageSearchFailed(int code) {
    return 'Ricerca non riuscita ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count nuove notifiche';
  }

  @override
  String get reactionsTitle => 'Reazioni';

  @override
  String get reactionsNeedEntry =>
      'Aggiungi questo titolo alla tua lista prima di reagire';

  @override
  String get reactionsAdd => 'Aggiungi una reazione';

  @override
  String get reactionsHint => 'Che ne pensi? (breve e senza spoiler)';

  @override
  String get reactionsPost => 'Pubblica';

  @override
  String get reactionsFailed => 'Impossibile aggiornare la reazione';

  @override
  String get settingsWatch => 'Guarda e leggi';

  @override
  String get settingsWatchDesc =>
      'Elenchi di episodi, abbinamento delle fonti e dettagli degli episodi';

  @override
  String get watchSettingsLayout => 'Elenco episodi';

  @override
  String get watchSettingsSources => 'Fonti';

  @override
  String get watchSettingsMetadata => 'Dettagli degli episodi';

  @override
  String get watchLayout => 'Layout';

  @override
  String get watchListView => 'Lista';

  @override
  String get watchGridView => 'Griglia';

  @override
  String get watchCompactView => 'Compatto';

  @override
  String get watchDefaultLayoutDesc =>
      'Come vengono disposti episodi e capitoli finché non lo cambi per un titolo';

  @override
  String get watchChunkSize => 'Dimensione dell\'intervallo';

  @override
  String get watchChunkSizeDesc =>
      'Quanti episodi o capitoli contiene ogni scheda di intervallo';

  @override
  String get watchShowDescription => 'Mostra le descrizioni';

  @override
  String get watchShowDescriptionDesc =>
      'Mostra il riassunto dell\'episodio sotto ogni titolo nel layout a lista';

  @override
  String get watchShowFiller => 'Mostra gli episodi filler';

  @override
  String get watchShowFillerDesc =>
      'Disattiva per nascondere gli episodi segnati come filler';

  @override
  String get watchBlurUnwatched => 'Nascondi le anteprime con spoiler';

  @override
  String get watchBlurUnwatchedDesc =>
      'Sfoca la miniatura degli episodi che non hai ancora guardato';

  @override
  String get watchResumeShelf => 'Riga \"Riprendi\"';

  @override
  String get watchResumeShelfDesc => 'Mostra la riga \"Riprendi\" nella Home';

  @override
  String get watchMarkOnLongPress => 'Pressione lunga segna il progresso';

  @override
  String get watchMarkOnLongPressDesc =>
      'Tieni premuto su un episodio o capitolo per segnarlo come visto o non visto';

  @override
  String get watchMatching => 'Abbinamento delle fonti';

  @override
  String get watchMatchingDesc =>
      '\"Più vicino\" prende il miglior risultato di ricerca. \"Solo esatto\" accetta solo un titolo quasi identico e il resto lo scegli tu.';

  @override
  String get watchMatchClosest => 'Corrispondenza più vicina';

  @override
  String get watchMatchExact => 'Solo corrispondenza esatta';

  @override
  String get watchMetadataDesc =>
      'Da dove arrivano titoli, riassunti, miniature, date di uscita e flag filler degli episodi. Trascina per impostare la priorità; vince la prima fonte che ha un valore.';

  @override
  String get watchMetaAniZipDesc =>
      'Titoli, riassunti, immagini e date di uscita degli episodi';

  @override
  String get watchMetaKitsuDesc =>
      'Titoli, descrizioni e miniature degli episodi';

  @override
  String get watchMetaSimklDesc =>
      'Titoli, descrizioni, immagini e date di uscita degli episodi';

  @override
  String get watchMetaAniListDesc =>
      'Titoli e miniature degli episodi in streaming e programmazione delle uscite';

  @override
  String get watchMetaTenraiDesc =>
      'Titoli, date di uscita e flag filler e recap degli episodi di MyAnimeList tramite Tenrai';

  @override
  String get watchClearMetadata => 'Aggiorna i dettagli degli episodi';

  @override
  String get watchClearMetadataDesc =>
      'Dimentica i dettagli degli episodi in cache così vengono recuperati di nuovo';

  @override
  String get watchMetadataCleared =>
      'I dettagli degli episodi verranno recuperati di nuovo';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episodi',
      one: '1 episodio',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count capitoli',
      one: '1 capitolo',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Episodio $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Capitolo $number';
  }

  @override
  String get watchSearching => 'Ricerca in corso…';

  @override
  String watchSearchingFor(String term) {
    return 'Ricerca: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Selezionato: $title';
  }

  @override
  String watchFound(String title) {
    return 'Trovato: $title';
  }

  @override
  String get watchNothingFound => 'Niente trovato su questa fonte';

  @override
  String get watchSearchFailed => 'La ricerca nella fonte non è riuscita';

  @override
  String get watchLoadFailed => 'Impossibile caricare la lista';

  @override
  String get watchSignInToTrack => 'Accedi per tracciare i tuoi progressi';

  @override
  String watchInstallSource(String action) {
    return 'Installa un\'estensione per iniziare a $action';
  }

  @override
  String get watchSourceMissing => 'Questa fonte non è installata';

  @override
  String get watchWrongTitle => 'Titolo sbagliato?';

  @override
  String get watchSearchAgain => 'Cerca di nuovo';

  @override
  String watchSearchSource(String source) {
    return 'Cerca in $source';
  }

  @override
  String get watchSource => 'Fonte';

  @override
  String get watchOptions => 'Opzioni';

  @override
  String get watchReverse => 'Ordine inverso';

  @override
  String get watchScanlators => 'Gruppi';

  @override
  String get watchResetOptions => 'Reimposta queste opzioni';

  @override
  String get watchContinue => 'Continua';

  @override
  String get watchStart => 'Inizia';

  @override
  String get watchPlay => 'Riproduci';

  @override
  String get watchRead => 'Leggi';

  @override
  String get watchMarkWatched => 'Segna come visto';

  @override
  String get watchMarkUnwatched => 'Segna come non visto';

  @override
  String get watchMarkRead => 'Segna come letto';

  @override
  String get watchMarkUnread => 'Segna come non letto';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Nessun episodio trovato';

  @override
  String get watchNoChapters => 'Nessun capitolo trovato';

  @override
  String get watchSourceTools => 'Strumenti della fonte';

  @override
  String get watchSourceSettings => 'Impostazioni della fonte';

  @override
  String get watchOpenWebView => 'Apri nella web view';

  @override
  String get watchOpenWebViewDesc =>
      'Risolvi un controllo Cloudflare o accedi; i cookie sono condivisi con le richieste della fonte';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookie salvati per $host',
      one: '1 cookie salvato per $host',
      zero: 'Nessun cookie salvato per $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Autorizzazione Cloudflare attiva, $time';
  }

  @override
  String get watchClearanceMissing =>
      'Nessun cookie di autorizzazione Cloudflare';

  @override
  String get watchClearanceSession => 'dura fino alla chiusura dell\'app';

  @override
  String get watchAgentShared =>
      'Le richieste usano lo user agent della web view, che Cloudflare controlla';

  @override
  String get watchAgentCustom =>
      'È impostato uno user agent personalizzato, quindi l\'autorizzazione Cloudflare dalla web view potrebbe essere rifiutata';

  @override
  String get watchTestConnection => 'Prova la connessione';

  @override
  String get watchSolveChallenge => 'Risolvilo';

  @override
  String watchProbeOk(int code) {
    return 'Raggiungibile (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare richiede ancora un controllo';

  @override
  String watchProbeBlocked(int code) {
    return 'Bloccato dal sito (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Impossibile raggiungere il sito';

  @override
  String get watchClearCookies => 'Cancella i cookie per questo sito';

  @override
  String get watchCookiesCleared => 'Cookie cancellati';

  @override
  String get watchMetaSource => 'Dettagli degli episodi da';

  @override
  String get watchMetaAuto => 'Automatico';

  @override
  String get watchMetaOff => 'Off';

  @override
  String get playerSettingsTitle => 'Impostazioni del player';

  @override
  String get playerSectionPlayback => 'Riproduzione';

  @override
  String get playerSectionSkip => 'Salto';

  @override
  String get playerSectionGestures => 'Controlli';

  @override
  String get playerSectionSubtitles => 'Sottotitoli';

  @override
  String get playerSectionShaders => 'Shader';

  @override
  String get playerSectionEngine => 'Motore';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Velocità di riproduzione';

  @override
  String get playerCursedSpeed => 'Velocità extra';

  @override
  String get playerCursedSpeedDesc => 'Aggiungi alla lista velocità fino a 10x';

  @override
  String get playerResize => 'Modalità di ridimensionamento';

  @override
  String get playerFitFit => 'Adatta';

  @override
  String get playerFitCover => 'Riempi';

  @override
  String get playerFitStretch => 'Allunga';

  @override
  String get playerSkipDuration => 'Durata del pulsante Salta';

  @override
  String get playerSkipDurationDesc =>
      'Secondi di cui salta il pulsante fuori da opening ed ending';

  @override
  String get playerSeekDuration => 'Doppio tap per spostarti';

  @override
  String get playerSeekDurationDesc =>
      'Secondi da saltare con un doppio tap o con la freccia';

  @override
  String get playerAutoPlay => 'Riproduci il prossimo in automatico';

  @override
  String get playerAutoPlayDesc =>
      'Avvia l\'episodio successivo quando questo finisce';

  @override
  String get playerResume => 'Riprendi da dove avevi lasciato';

  @override
  String get playerResumeDesc => 'Continua un episodio dall\'ultima posizione';

  @override
  String get playerOrientation => 'Orientamento';

  @override
  String get playerOrientationAuto => 'Segui il dispositivo';

  @override
  String get playerOrientationLandscape => 'Orizzontale';

  @override
  String get playerOrientationPortrait => 'Verticale';

  @override
  String get playerAutoSkipOpening => 'Salta le opening';

  @override
  String get playerAutoSkipEnding => 'Salta le ending';

  @override
  String get playerAutoSkipRecap => 'Salta i recap';

  @override
  String get playerAutoSkipDesc =>
      'Salta appena inizia, usando AniSkip e i timestamp dello stream';

  @override
  String get playerSkipOnce => 'Salta una sola volta';

  @override
  String get playerSkipOnceDesc =>
      'Non saltare di nuovo la stessa parte se torni indietro';

  @override
  String get playerAdjustBrightness => 'Gesto per la luminosità';

  @override
  String get playerAdjustBrightnessDesc =>
      'Scorri su e giù sulla metà destra dello schermo';

  @override
  String get playerAdjustVolume => 'Gesto per il volume';

  @override
  String get playerAdjustVolumeDesc =>
      'Scorri su e giù sulla metà sinistra dello schermo';

  @override
  String get playerHoldToSpeed => 'Tieni premuto per accelerare';

  @override
  String get playerHoldToSpeedDesc =>
      'Tieni premuto sul video per riprodurre più veloce, trascina di lato per cambiare la velocità';

  @override
  String get playerThumbless => 'Barra di avanzamento più spessa';

  @override
  String get playerThumblessDesc => 'Una barra spessa senza cursore';

  @override
  String get playerShowSubtitles => 'Mostra i sottotitoli';

  @override
  String get playerShowSubtitlesDesc =>
      'Disattiva per nascondere tutte le tracce dei sottotitoli';

  @override
  String get playerSubtitleLanguage => 'Lingua preferita dei sottotitoli';

  @override
  String get playerSubtitleSize => 'Dimensione dei sottotitoli';

  @override
  String get playerSubtitleWeight => 'Spessore dei sottotitoli';

  @override
  String get playerSubtitleBottom => 'Margine inferiore dei sottotitoli';

  @override
  String get playerSubtitleFont => 'Font dei sottotitoli';

  @override
  String get playerSubtitleColor => 'Colore dei sottotitoli';

  @override
  String get playerSubtitleBackground => 'Sfondo dei sottotitoli';

  @override
  String get playerSubtitleOutline => 'Contorno dei sottotitoli';

  @override
  String get playerLibass => 'Usa libass';

  @override
  String get playerLibassDesc =>
      'Mostra i sottotitoli .ass con il loro stile. Dimensione, colore e font qui sopra non si applicano più';

  @override
  String get playerShaders => 'Shader';

  @override
  String get playerShadersEnable => 'Attiva gli shader';

  @override
  String get playerShadersEnableDesc =>
      'Migliora e pulisci l\'immagine con shader GLSL come Anime4K';

  @override
  String get playerShadersOff => 'Shader disattivati';

  @override
  String get playerShadersMissing => 'Anime4K non è installato';

  @override
  String get playerShadersMissingDesc =>
      'Scarica il pacchetto di shader Anime4K (circa 0,8 MB) per usare le modalità integrate.';

  @override
  String get playerShadersDownload => 'Scarica Anime4K';

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
  String get playerShadersPreview => 'Anteprima su questo fotogramma';

  @override
  String get playerShadersUse => 'Usa questo';

  @override
  String get playerPicture => 'Immagine';

  @override
  String get playerColors => 'Colori';

  @override
  String get playerColorDefault => 'Predefinito';

  @override
  String get playerColorVivid => 'Vivido';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Morbido';

  @override
  String get playerColorCinematic => 'Cinematografico';

  @override
  String get playerColorBright => 'Luminoso';

  @override
  String get playerColorNight => 'Notte';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Personalizzato';

  @override
  String get playerColorBrightness => 'Luminosità';

  @override
  String get playerColorContrast => 'Contrasto';

  @override
  String get playerColorSaturation => 'Saturazione';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Tonalità';

  @override
  String get playerColorReset => 'Reimposta';

  @override
  String get playerColorAdjust => 'Regola';

  @override
  String get playerShadersOriginal => 'Originale';

  @override
  String get playerShadersPreviewFailed =>
      'Impossibile prendere un fotogramma per l\'anteprima';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'I tuoi shader';

  @override
  String get playerShadersCustom => 'Shader personalizzati';

  @override
  String get playerShadersImport => 'Importa .glsl';

  @override
  String get playerShadersNone =>
      'Importa i tuoi file .glsl o .hook e spuntali per metterli in catena';

  @override
  String get playerShadersBadFile => 'Scegli un file shader .glsl o .hook';

  @override
  String get playerDecoder => 'Decoder';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (sicuro)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Uscita video';

  @override
  String get playerAudioChannels => 'Canali audio';

  @override
  String get playerBuffer => 'Dimensione del buffer (MB)';

  @override
  String get playerBufferDesc =>
      'Memoria che il player può usare per il buffer di uno stream';

  @override
  String get playerUseMpvConf => 'Usa mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Applica le opzioni del tuo mpv.conf all\'avvio della riproduzione';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Modifica la configurazione di mpv';

  @override
  String get playerMpvConfDesc =>
      'Un\'opzione per riga, come --hwdec=auto in un normale mpv.conf. I profili tra [parentesi] vengono ignorati.';

  @override
  String get playerMpvConfSaved => 'mpv.conf salvato';

  @override
  String get playerUseScripts => 'Usa gli script mpv';

  @override
  String get playerUseScriptsDesc =>
      'Carica i plugin dalla cartella degli script. Serve una build di libmpv con supporto a Lua o JavaScript';

  @override
  String get playerScripts => 'Script mpv';

  @override
  String get playerScriptsManage => 'Aggiungi, rimuovi e attiva i plugin';

  @override
  String get playerScriptsAdd => 'Aggiungi script';

  @override
  String get playerScriptsDesc =>
      'I plugin Lua, JavaScript e nativi messi qui vengono caricati all\'avvio della riproduzione.';

  @override
  String get playerScriptsNone => 'Ancora nessuno script';

  @override
  String get playerScriptsBadFile =>
      'Scegli un file .lua, .js o un plugin nativo';

  @override
  String get playerTuning => 'Regolazione video avanzata';

  @override
  String get playerTuningDesc =>
      'Modifica sincronizzazione, cache, scaling e tone mapping. Valori sbagliati possono rovinare la riproduzione';

  @override
  String get playerVideoSync => 'Sincronizzazione video';

  @override
  String get playerInterpolation => 'Interpolazione dei fotogrammi';

  @override
  String get playerInterpolationDesc =>
      'Movimento fluido, richiede la sincronizzazione display-resample';

  @override
  String get playerPitch => 'Correzione del tono';

  @override
  String get playerPitchDesc => 'Mantiene le voci naturali ad altre velocità';

  @override
  String get playerCacheSeconds => 'Cache (secondi)';

  @override
  String get playerReadahead => 'Lettura anticipata (secondi)';

  @override
  String get playerThreads => 'Thread del decoder';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Riduce le bande di colore nei gradienti';

  @override
  String get playerDebandIterations => 'Iterazioni del deband';

  @override
  String get playerDebandThreshold => 'Soglia del deband';

  @override
  String get playerCorrectDownscaling => 'Downscaling corretto';

  @override
  String get playerSigmoid => 'Upscaling sigmoide';

  @override
  String get playerScale => 'Upscaler';

  @override
  String get playerCscale => 'Upscaler del chroma';

  @override
  String get playerDscale => 'Downscaler';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Picco target';

  @override
  String get playerOpenFiles => 'Apri file video';

  @override
  String get playerOpenFilesDesc => 'Riproduci file da questo dispositivo';

  @override
  String get playerOpenFolder => 'Apri una cartella';

  @override
  String get playerOpenFolderDesc =>
      'Riproduci tutti i video di una cartella come playlist';

  @override
  String get playerNetworkStream => 'Stream di rete';

  @override
  String get playerNetworkStreamDesc => 'Apri un link video diretto o HLS';

  @override
  String get playerStreamUrl => 'URL dello stream';

  @override
  String get playerStreamReferer => 'Referer (facoltativo)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc =>
      'Riproduci in streaming un magnet link o un file .torrent';

  @override
  String get playerMagnetLink => 'Magnet link o URL del torrent';

  @override
  String get playerPickTorrent => 'Scegli un file .torrent';

  @override
  String get playerTorrentMissing =>
      'Prima installa il componente torrent da Impostazioni > Componenti aggiuntivi';

  @override
  String get playerNoVideos => 'Nessun video riproducibile trovato';

  @override
  String get playerReset => 'Reimposta le impostazioni del player';

  @override
  String get playerResetDesc =>
      'Ripristina ogni opzione del player al valore predefinito';

  @override
  String get playerResetConfirm =>
      'Reimpostare tutte le impostazioni del player?';

  @override
  String get playerResetDone => 'Impostazioni del player reimpostate';

  @override
  String get playerQuality => 'Qualità';

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
  String get playerStreams => 'Stream';

  @override
  String get playerAutoSelect => 'Scegli lo stream in automatico';

  @override
  String get playerAutoSelectDesc =>
      'Scegli lo stream più simile alla tua ultima scelta per questo titolo';

  @override
  String get playerLoadingStreams => 'Cerco gli stream…';

  @override
  String get playerNoStreams => 'Questo episodio non ha stream';

  @override
  String get playerNoStreamsTitle => 'Nessuno stream trovato';

  @override
  String get playerFailed => 'Riproduzione non riuscita';

  @override
  String get playerTorrentNeeded => 'Questo stream è un torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Installa il componente torrent per riprodurre magnet link e file .torrent';

  @override
  String get playerOpenAddons => 'Apri i componenti aggiuntivi';

  @override
  String get playerTryAnotherStream => 'Prova un altro stream';

  @override
  String get playerEpisodes => 'Episodi';

  @override
  String get playerLock => 'Blocca i controlli';

  @override
  String get playerFullscreen => 'Schermo intero';

  @override
  String get readerChapters => 'Capitoli';

  @override
  String get readerSettingsTitle => 'Impostazioni del lettore';

  @override
  String get readerPreviousChapter => 'Capitolo precedente';

  @override
  String get readerNextChapter => 'Capitolo successivo';

  @override
  String get readerFirstChapter => 'Questo è il primo capitolo';

  @override
  String get readerLastChapter => 'Sei al passo con tutto';

  @override
  String get readerFailed => 'Impossibile aprire questo capitolo';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Questo capitolo non ha testo';

  @override
  String get readerPerTitle => 'Solo per questo titolo';

  @override
  String get readerPerTitleDesc =>
      'Mantieni queste impostazioni del lettore solo per questo titolo';

  @override
  String get readerSectionReading => 'Lettura';

  @override
  String get readerSectionControls => 'Controlli';

  @override
  String get readerSectionDisplay => 'Schermo';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerMode => 'Modalità di lettura';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Da destra a sinistra';

  @override
  String get readerModeLtr => 'Da sinistra a destra';

  @override
  String get readerModeVertical => 'Pagine verticali';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Scorrimento continuo';

  @override
  String get readerScale => 'Scala dell\'immagine';

  @override
  String get readerScaleFit => 'Adatta allo schermo';

  @override
  String get readerScaleWidth => 'Adatta alla larghezza';

  @override
  String get readerScaleHeight => 'Adatta all\'altezza';

  @override
  String get readerScaleOriginal => 'Dimensione originale';

  @override
  String get readerScaleSmart => 'Adattamento intelligente';

  @override
  String get readerDoublePage => 'Pagine doppie';

  @override
  String get readerDoublePageDesc =>
      'Mostra due pagine affiancate in orizzontale';

  @override
  String get readerDoubleTapZoom => 'Doppio tap per zoomare';

  @override
  String get readerDoubleTapZoomDesc =>
      'Ingrandisci e riduci una pagina con un doppio tap';

  @override
  String get readerAnimate => 'Animazione delle pagine';

  @override
  String get readerAnimateDesc => 'Anima il cambio pagina';

  @override
  String get readerSidePadding => 'Margine laterale';

  @override
  String get readerSidePaddingDesc =>
      'Spazio ai lati delle pagine in percentuale';

  @override
  String get readerPageGap => 'Spazio tra le pagine';

  @override
  String get readerPageGapDesc => 'Spazio tra una pagina e l\'altra';

  @override
  String get readerAutoNext => 'Prosegui nel capitolo successivo';

  @override
  String get readerAutoNextDesc =>
      'Carica il capitolo successivo mentre leggi la fine di questo';

  @override
  String get readerPreload => 'Precarica le pagine';

  @override
  String get readerPreloadDesc => 'Quante pagine scaricare in anticipo';

  @override
  String get readerTapZones => 'Zone di tap';

  @override
  String get readerTapDefault => 'Predefinite';

  @override
  String get readerTapLShaped => 'A forma di L';

  @override
  String get readerTapKindle => 'Stile Kindle';

  @override
  String get readerTapEdge => 'Solo bordi';

  @override
  String get readerTapOff => 'Disattivate';

  @override
  String get readerInvertTaps => 'Inverti le zone di tap';

  @override
  String get readerInvertTapsDesc =>
      'Scambia le aree di precedente e successivo';

  @override
  String get readerBackground => 'Sfondo';

  @override
  String get readerBackgroundBlack => 'Nero';

  @override
  String get readerBackgroundGray => 'Grigio';

  @override
  String get readerBackgroundWhite => 'Bianco';

  @override
  String get readerBackgroundTheme => 'Tema dell\'app';

  @override
  String get readerFilter => 'Filtro colore';

  @override
  String get readerFilterNone => 'Nessuno';

  @override
  String get readerFilterGrayscale => 'Scala di grigi';

  @override
  String get readerFilterInvert => 'Inverti';

  @override
  String get readerFilterSepia => 'Seppia';

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
  String get readerDim => 'Oscura';

  @override
  String get readerDimDesc => 'Scurisci le pagine';

  @override
  String get readerPageNumber => 'Numero di pagina';

  @override
  String get readerPageNumberDesc => 'Mostra il numero di pagina mentre leggi';

  @override
  String get readerFullscreen => 'Schermo intero';

  @override
  String get readerFullscreenDesc => 'Nascondi le barre di sistema';

  @override
  String get readerCropBorders => 'Ritaglia i bordi';

  @override
  String get readerCropBordersDesc =>
      'Elimina i margini bianchi o neri vuoti dalle pagine';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'I tasti del volume girano pagina';

  @override
  String get readerVolumeKeysDesc =>
      'Volume giù va avanti, volume su torna indietro';

  @override
  String get readerBookmarks => 'Segnalibri';

  @override
  String get readerBookmarkAdd => 'Aggiungi segnalibro';

  @override
  String get readerBookmarkRemove => 'Rimuovi segnalibro';

  @override
  String get readerBookmarksEmpty => 'Ancora nessun segnalibro';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Pagina $page di $total';
  }

  @override
  String get readerAutoScroll => 'Scorrimento automatico';

  @override
  String get readerAutoScrollStop => 'Ferma lo scorrimento automatico';

  @override
  String get readerAutoScrollSpeed => 'Velocità di scorrimento automatico';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Quanto velocemente le pagine scorrono o si girano da sole';

  @override
  String get readerKeepOn => 'Tieni lo schermo acceso';

  @override
  String get readerKeepOnDesc =>
      'Impedisce allo schermo di spegnersi mentre leggi';

  @override
  String get readerOrientation => 'Orientamento';

  @override
  String get readerOrientationFree => 'Libero';

  @override
  String get readerOrientationPortrait => 'Verticale';

  @override
  String get readerOrientationLandscape => 'Orizzontale';

  @override
  String get readerSaveProgress => 'Salva il progresso';

  @override
  String get readerSaveProgressDesc =>
      'Ricorda la tua pagina e segna i capitoli come letti';

  @override
  String get readerReset => 'Reimposta le impostazioni del lettore';

  @override
  String get readerResetDesc => 'Torna ai valori predefiniti';

  @override
  String get novelSize => 'Dimensione del testo';

  @override
  String get novelFont => 'Font';

  @override
  String get novelLineHeight => 'Altezza della riga';

  @override
  String get novelParagraph => 'Spaziatura dei paragrafi';

  @override
  String get novelMargin => 'Margini';

  @override
  String get novelTheme => 'Tema del lettore';

  @override
  String get novelThemeApp => 'Tema dell\'app';

  @override
  String get novelThemeLight => 'Chiaro';

  @override
  String get novelThemeSepia => 'Seppia';

  @override
  String get novelThemeDark => 'Scuro';

  @override
  String get novelThemeBlack => 'Nero';

  @override
  String get novelJustify => 'Giustifica il testo';

  @override
  String get novelJustifyDesc => 'Allinea il testo a entrambi i bordi';

  @override
  String get trackProgressTitle => 'Salvare il progresso?';

  @override
  String trackProgressAnime(String name) {
    return 'Tracciare $name sulla tua lista mentre guardi? Scegli \"Solo su questo dispositivo\" per tenerlo in locale, o No per non salvare niente.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Tracciare $name sulla tua lista quando finisci un capitolo? Scegli \"Solo su questo dispositivo\" per tenerlo in locale, o No per non salvare niente.';
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
  String get trackProgressYes => 'Salva';

  @override
  String get trackProgressReset =>
      'Richiesta di salvataggio del progresso reimpostata per questo tipo, verrà chiesto di nuovo';

  @override
  String get trackProgressNo => 'No';

  @override
  String get trackProgressOff => 'Off';

  @override
  String get trackProgressLocal => 'Solo su questo dispositivo';

  @override
  String get trackProgressSettingAnime => 'Traccia il progresso degli anime';

  @override
  String get trackProgressSettingManga =>
      'Traccia il progresso di manga e novel';

  @override
  String get trackProgressSettingDesc =>
      'Cosa fare quando apri un episodio o finisci un capitolo';

  @override
  String get trackProgressAsk => 'Chiedi';

  @override
  String get trackProgressAlways => 'Sempre';

  @override
  String get dantotsuImport => 'Importa da Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Leggi un backup delle impostazioni di Dantotsu (.ani, oppure .sani cifrato)';

  @override
  String get dantotsuPick => 'Scegli un backup di Dantotsu';

  @override
  String get dantotsuNothing => 'Non c\'è niente da importare in questo file';

  @override
  String get dantotsuApply => 'Importa la selezione';

  @override
  String dantotsuDone(int done, int total) {
    return 'Importati $done su $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Account';

  @override
  String get dantotsuGroupAppearance => 'Aspetto';

  @override
  String get dantotsuGroupExtensions => 'Estensioni';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Player';

  @override
  String get dantotsuAnilist => 'Accesso ad AniList';

  @override
  String get dantotsuMal => 'Accesso a MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token di Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get dantotsuReposAnime => 'Repository di estensioni anime';

  @override
  String get dantotsuReposManga => 'Repository di estensioni manga';

  @override
  String get dantotsuReposNovel => 'Repository di estensioni novel';

  @override
  String get dantotsuUpdates => 'Controllo aggiornamenti';

  @override
  String get dantotsuComments => 'Commenti';

  @override
  String get dantotsuActivity => 'Polling delle notifiche di AniList';

  @override
  String get dantotsuDns => 'Provider DNS';

  @override
  String get dantotsuPlayer => 'Velocità del player e colori dei sottotitoli';

  @override
  String get dantotsuWarning =>
      'Questo file contiene token di accesso. Tienilo al sicuro.';

  @override
  String get novelIndent => 'Rientra i paragrafi';

  @override
  String get novelIndentDesc =>
      'Inizia ogni paragrafo con un rientro sulla prima riga';

  @override
  String get novelLetterSpacing => 'Spaziatura delle lettere';

  @override
  String get novelSectionTranslate => 'Traduzione';

  @override
  String get sectionExperimental => 'Sperimentale';

  @override
  String get kitsuGraphqlDetail => 'Pagine di dettaglio più veloci (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Carica un titolo con personaggi, staff e la tua voce in una sola richiesta';

  @override
  String get togetherTitle => 'Guarda insieme';

  @override
  String get togetherIntro =>
      'Incolla il link della stanza che ti ha mandato il tuo amico. Entri subito e il player si apre quando iniziano a guardare.';

  @override
  String get togetherName => 'Il tuo nome';

  @override
  String get togetherConnecting => 'Connessione…';

  @override
  String get togetherLeave => 'Lascia la stanza';

  @override
  String get togetherYou => 'Tu';

  @override
  String get togetherNoChat => 'Ancora nessun messaggio';

  @override
  String get togetherChatHint => 'Messaggio';

  @override
  String get togetherCopyInvite => 'Copia invito';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Server e stanza copiati';

  @override
  String get togetherConnectionLost => 'Connessione persa';

  @override
  String togetherConnectedTo(String room) {
    return 'Connesso a $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Impossibile connettersi: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name è entrato';
  }

  @override
  String togetherLeft(String name) {
    return '$name è uscito';
  }

  @override
  String togetherPaused(String name) {
    return '$name ha messo in pausa';
  }

  @override
  String togetherResumed(String name) {
    return '$name ha ripreso';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name è saltato a $time';
  }

  @override
  String get togetherFollowFailed =>
      'Impossibile aprire l\'episodio dell\'host. Aprilo tu.';

  @override
  String get togetherJoinRole => 'Entra in una stanza';

  @override
  String get togetherOpenHost => 'Apri l\'episodio dell\'host';

  @override
  String get togetherShowChat => 'Mostra la chat dal vivo';

  @override
  String get togetherWaitingHost => 'In attesa che l\'host avvii un episodio';

  @override
  String get togetherRoomLink => 'Link della stanza';

  @override
  String get togetherBadLink => 'Questo non è un link di stanza';

  @override
  String get togetherHostClosed => 'L\'host ha chiuso la stanza';

  @override
  String get togetherNowPlaying => 'In riproduzione';

  @override
  String togetherWatchingCount(int count) {
    return '$count stanno guardando';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user vuole mettere in pausa';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user vuole riprendere';
  }

  @override
  String get togetherChip => 'Insieme';

  @override
  String get togetherSettingsDesc =>
      'Entra nella stanza di un amico con un link';

  @override
  String get novelBilingual => 'Mostra originale e traduzione';

  @override
  String get novelBilingualDesc =>
      'Ogni paragrafo mostra il testo originale con la traduzione sotto';

  @override
  String get novelTranslateTo => 'Traduci in';

  @override
  String get novelTranslateOff => 'Off';

  @override
  String get novelSectionSpeech => 'Sintesi vocale';

  @override
  String get novelSpeechRate => 'Velocità della voce';

  @override
  String get novelSpeechPitch => 'Tono della voce';

  @override
  String get novelSpeak => 'Leggi ad alta voce';

  @override
  String get novelSpeakStop => 'Smetti di leggere ad alta voce';

  @override
  String get novelTranslate => 'Traduci il capitolo';

  @override
  String get novelTranslateShowOriginal => 'Mostra l\'originale';

  @override
  String novelTranslateFailed(String error) {
    return 'Traduzione non riuscita: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'La sintesi vocale non è disponibile su questo dispositivo';

  @override
  String get novelSpeechVoice => 'Voce';

  @override
  String get novelSpeechVoiceDefault => 'Predefinita di sistema';

  @override
  String get novelSpeakPrevious => 'Riga precedente';

  @override
  String get novelSpeakNext => 'Riga successiva';

  @override
  String get novelTapPaging => 'Tocca i bordi per girare pagina';

  @override
  String get novelTapPagingDesc =>
      'Tocca il lato sinistro o destro per scorrere una pagina, al centro compaiono i controlli';

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
    return '$count min rimanenti';
  }

  @override
  String get novelBold => 'Testo in grassetto';

  @override
  String get novelBoldDesc => 'Usa uno spessore maggiore';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Finito $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Prossimo: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Precedente: $chapter';
  }

  @override
  String get readerNoPages => 'Questo capitolo non ha pagine';

  @override
  String get readerLoadingPages => 'Caricamento delle pagine…';

  @override
  String get readerSlowPage => 'Sto ancora caricando questa pagina…';

  @override
  String get readerPageFailed => 'Impossibile caricare questa pagina';

  @override
  String get playerShowComments => 'Mostra i commenti';

  @override
  String get playerHideComments => 'Nascondi i commenti';

  @override
  String get playerSubtitles => 'Sottotitoli';

  @override
  String get playerSubtitlesOff => 'Sottotitoli disattivati';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Aggiungi file di sottotitoli';

  @override
  String get playerAddAudio => 'Aggiungi file audio';

  @override
  String get playerChapters => 'Capitoli';

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
  String get playerNoChapters => 'Nessun capitolo';

  @override
  String get playerTimestamp => 'Timestamp';

  @override
  String get playerAutoPlayDelay => 'Conto alla rovescia del prossimo episodio';

  @override
  String get playerWatchedAt => 'Conta come visto a';

  @override
  String playerNextIn(int seconds) {
    return 'Prossimo episodio tra ${seconds}s';
  }

  @override
  String get playerPlayNow => 'Riproduci ora';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: verrà saltato in automatico per questo titolo';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: non verrà saltato in automatico per questo titolo';
  }

  @override
  String get playerAudioLanguage => 'Lingua audio preferita';

  @override
  String get playerLanguageOrderHint =>
      'Separa le lingue con virgole. Viene usata la prima trovata.';

  @override
  String get playerPip => 'Picture in picture';

  @override
  String get playerAutoPip => 'Picture in picture all\'uscita';

  @override
  String get playerAutoPipDesc =>
      'Continua a riprodurre in una finestra piccola quando esci dall\'app';

  @override
  String playerAutoPlaying(String title) {
    return 'Prossimo: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Impossibile installare gli shader: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Capitolo $number';
  }

  @override
  String get playerPerTitle => 'Solo per questo titolo';

  @override
  String get playerPerTitleDesc =>
      'Mantieni queste opzioni per questo titolo e lascia stare i tuoi valori predefiniti';

  @override
  String get playerSwapGestures => 'Inverti i lati dello swipe';

  @override
  String get playerSwapGesturesDesc =>
      'Luminosità a sinistra e volume a destra';

  @override
  String get playerOpenBig => 'Apri a schermo grande';

  @override
  String get playerOpenBigDesc =>
      'Avvia il player a schermo intero invece che con la lista degli episodi';

  @override
  String get playerPauseOnBlur => 'Pausa quando perde il focus';

  @override
  String get playerPauseOnBlurDesc =>
      'Mette in pausa mentre l\'app è coperta, ad esempio dal pannello delle notifiche, e riprende quando torni';

  @override
  String get playerAudioOutput => 'Uscita audio';

  @override
  String get fontAppDefault => 'Font dell\'app';

  @override
  String get fontImport => 'Importa font';

  @override
  String get fontSample =>
      'Quel veloce volpone marrone salta sopra il cane pigro';

  @override
  String get playerSubtitleDelay => 'Ritardo dei sottotitoli';

  @override
  String get playerAudioDelay => 'Ritardo dell\'audio';

  @override
  String get playerDelayReset => 'Reimposta';

  @override
  String get playerOnlineSubtitles => 'Sottotitoli online';

  @override
  String get playerOnlineSearchHint => 'Titolo ed episodio';

  @override
  String get playerOnlineNone => 'Nessun sottotitolo trovato';

  @override
  String playerOnlineFailed(String error) {
    return 'Ricerca dei sottotitoli non riuscita: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Impossibile scaricare questo sottotitolo: $error';
  }

  @override
  String get playerOnlineMatch => 'Corrisponde a questo file';

  @override
  String get playerOnlineEpisode => 'Episodio corrispondente';

  @override
  String playerOnlineDownloads(int count) {
    return '$count download';
  }

  @override
  String get playerSeekPreview => 'Anteprima della barra di avanzamento';

  @override
  String get playerSeekPreviewDesc =>
      'Mostra una piccola anteprima del fotogramma sopra la barra mentre scorri. Apre un secondo decoder a bassa risoluzione, quindi usa più dati sugli stream.';

  @override
  String get playerSettingsChip => 'Impostazioni';

  @override
  String get playerAudioDevice => 'Dispositivo audio';

  @override
  String get settingsDownloads => 'Download';

  @override
  String get settingsDownloadsDesc =>
      'Episodi offline, coda e modalità offline';

  @override
  String get downloadsTitle => 'Download';

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
      'Guarda la coda e tutto quello che è salvato su questo dispositivo';

  @override
  String get downloadTitle => 'Scarica';

  @override
  String get downloadAlready => 'Già scaricato o in coda';

  @override
  String get downloadPickStream => 'Quale stream scaricare?';

  @override
  String get downloadPickSubtitle => 'Quali sottotitoli scaricare?';

  @override
  String get downloadPickAudio => 'Quale traccia audio scaricare?';

  @override
  String get downloadNoAudio => 'Nessun audio extra';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'Nessun sottotitolo';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Questo stream è una playlist HLS. Per scaricarla serve il componente FFmpeg.';

  @override
  String get downloadSourceMissing =>
      'La fonte di questo episodio non è installata';

  @override
  String get downloadWaitingConnection => 'In attesa di connessione';

  @override
  String get downloadSubtitles => 'Sottotitoli';

  @override
  String get downloadDownloaded => 'Scaricato';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Elimina il download';

  @override
  String get downloadCancel => 'Annulla';

  @override
  String get downloadPause => 'Pausa';

  @override
  String get downloadPaused => 'In pausa';

  @override
  String get downloadResume => 'Riprendi';

  @override
  String get downloadPauseAll => 'Metti tutto in pausa';

  @override
  String get downloadResumeAll => 'Riprendi tutto';

  @override
  String get downloadQueuedState => 'In attesa in coda';

  @override
  String get downloadResolving => 'Recupero lo stream…';

  @override
  String get downloadUsedFallback =>
      'Nessuno stream corrispondente, ho usato il primo';

  @override
  String get downloadTabQueue => 'Coda';

  @override
  String get downloadTabDone => 'Fatto';

  @override
  String get downloadTabFailed => 'Falliti';

  @override
  String get downloadEmptyQueue => 'Non si sta scaricando niente';

  @override
  String get downloadEmptyDone => 'Ancora niente scaricato';

  @override
  String get downloadEmptyFailed => 'Nessun download fallito';

  @override
  String get downloadNext => 'Prossimo episodio';

  @override
  String downloadNextN(int count) {
    return 'Prossimi $count episodi';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Tutti quelli non visti ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Questo intervallo ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Tutti gli episodi ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episodi in coda',
      one: '1 episodio in coda',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name scaricato';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Download di $name non riuscito';
  }

  @override
  String downloadStorage(String size) {
    return '$size usati dai download';
  }

  @override
  String get downloadQueueHeader => 'Coda';

  @override
  String get downloadParallel => 'Download contemporanei';

  @override
  String get downloadParallelDesc => 'Scarica uno alla volta o più insieme';

  @override
  String get downloadOneByOne => 'Uno alla volta';

  @override
  String get downloadNotifications => 'Notifiche dei download';

  @override
  String get downloadNotificationsDesc =>
      'Progresso dal vivo dove il sistema lo supporta, altrimenti un avviso quando un download finisce';

  @override
  String get downloadNotifyLive => 'Dal vivo';

  @override
  String get downloadNotifyDone => 'Alla fine';

  @override
  String get downloadNotifyOff => 'Off';

  @override
  String get downloadInfoFile => 'Scrivi un file info accanto a ogni download';

  @override
  String get downloadInfoFileDesc =>
      'Salva stream, qualità, sottotitoli e tempi di salto in un piccolo file .json';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Auto va offline solo se l\'app parte senza connessione. Sempre resta offline finché non lo cambi.';

  @override
  String get offlineModeOff => 'Off';

  @override
  String get offlineModeAlways => 'Sempre';

  @override
  String get offlineModeOn =>
      'La modalità offline è attiva. Le modifiche vengono salvate qui e inviate quando torni online.';

  @override
  String get offlineSaved =>
      'Salvato su questo dispositivo, verrà sincronizzato quando sarai online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count modifiche sincronizzate',
      one: '1 modifica sincronizzata',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count modifiche in attesa di sincronizzazione',
      one: '1 modifica in attesa di sincronizzazione',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Modifiche in attesa di sincronizzazione';

  @override
  String get offlinePendingNone => 'Niente in attesa';

  @override
  String get offlineSyncNow => 'Sincronizza ora';

  @override
  String get offlineDiscard => 'Scarta';

  @override
  String get downloadNotOffline =>
      'Questo episodio non è scaricato, quindi non è disponibile offline';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Capitolo successivo';

  @override
  String downloadNextChapters(int count) {
    return 'Prossimi $count capitoli';
  }

  @override
  String downloadUnread(int count) {
    return 'Tutti quelli non letti ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Tutti i capitoli ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total pagine';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count pagine';
  }

  @override
  String get downloadFfmpegTitle => 'Serve il componente FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'Questo stream è una playlist HLS. Il componente FFmpeg unisce i pezzi in un unico file mp4. Senza, i pezzi restano in una cartella dell\'episodio e vengono riprodotti da lì.';

  @override
  String get downloadFfmpegInstall => 'Installa';

  @override
  String get downloadFfmpegInstalling =>
      'Installazione di FFmpeg in corso, può volerci un po\'…';

  @override
  String get downloadFinishing => 'Unisco i pezzi in un unico file…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total parti';
  }

  @override
  String get downloadTorrentNoFile =>
      'Il torrent non ha nessun file video da scaricare';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Download di $count elementi',
      one: 'Download di 1 elemento',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Elimina i download già guardati';

  @override
  String get downloadAutoDeleteDesc =>
      'Rimuove un download quando il tuo progresso raggiunge quell\'episodio o capitolo';

  @override
  String get downloadConnections => 'Connessioni per download';

  @override
  String get downloadConnectionsDesc =>
      'Divide un file grande in parti scaricate in contemporanea. Alcuni server lo limitano.';

  @override
  String get downloadPlayChoice => 'Riproduci da';

  @override
  String get downloadPlayLocalDesc => 'Il file salvato su questo dispositivo';

  @override
  String get downloadPlayStream => 'Streaming online';

  @override
  String get downloadPlayStreamDesc => 'Carica l\'episodio dalla fonte';

  @override
  String get offlineFeedTitle => 'Scaricato su questo dispositivo';

  @override
  String get offlineFeedEmpty =>
      'Scarica qualcosa mentre sei online e comparirà qui';

  @override
  String get offlineEnabled => 'La modalità offline è attiva';

  @override
  String get offlineDisabled => 'La modalità offline è disattivata';

  @override
  String get downloadReadChoice => 'Leggi da';

  @override
  String get downloadReadLocalDesc => 'Le pagine salvate su questo dispositivo';

  @override
  String get downloadReadOnline => 'Leggi online';

  @override
  String get downloadReadOnlineDesc => 'Carica il capitolo dalla fonte';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Eliminare $name da questo dispositivo?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Annullare il download di $name? Quello già scaricato viene eliminato.';
  }

  @override
  String get downloadFfmpegFolder => 'Tieni come cartella';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Buttare via $count modifiche mai inviate? Non si può annullare.',
      one: 'Buttare via la modifica mai inviata? Non si può annullare.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'In attesa del Wi-Fi';

  @override
  String get downloadWaitingMetered => 'In pausa su connessione a consumo';

  @override
  String get downloadWifiOnly => 'Solo Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'I download aspettano finché usi i dati mobili';

  @override
  String get downloadMetered => 'Pausa sulle connessioni a consumo';

  @override
  String get downloadMeteredDesc =>
      'Aspetta anche sul Wi-Fi che il dispositivo segna come a consumo';

  @override
  String get downloadSpeedLimit => 'Limite di velocità';

  @override
  String get downloadSpeedLimitDesc => 'Limita la velocità totale di download';

  @override
  String get downloadUnlimited => 'Illimitata';

  @override
  String get downloadMoveToTop => 'Sposta in cima';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seed · $peers peer';
  }

  @override
  String get downloadTorrentFile => 'Quale file?';

  @override
  String get downloadTorrentAuto => 'Abbina l\'episodio automaticamente';

  @override
  String get downloadTorrentLoading => 'Lettura del torrent…';

  @override
  String get watchAutoSource => 'Passa alla fonte successiva in automatico';

  @override
  String get watchAutoSourceDesc =>
      'Se la fonte non trova il titolo o non si carica, prova la fonte installata successiva';

  @override
  String get extensionTest => 'Prova le estensioni';

  @override
  String get extensionTestCopy => 'Copia gli errori e i relativi log';

  @override
  String get extensionTestQuery => 'Termine di ricerca';

  @override
  String get extensionTestRun => 'Avvia';

  @override
  String get extensionTestStop => 'Stop';

  @override
  String get extensionTestNone =>
      'Nessuna estensione installata di questo tipo';

  @override
  String get extensionTestNotRun => 'Non ancora provata';

  @override
  String get extensionTestSearch => 'Ricerca';

  @override
  String get extensionTestDetail => 'Dettagli';

  @override
  String get extensionTestUnits => 'Episodi / capitoli';

  @override
  String get extensionTestLinks => 'Stream / pagine';

  @override
  String extensionTestFailedAt(String step) {
    return 'Fallito al passaggio $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done di $total provate · $passed riuscite · $failed fallite';
  }

  @override
  String get extensionTestCopyLogs => 'Copia tutto con i log completi';

  @override
  String get onboardingFeaturesTitle => 'Tutto in un unico posto';

  @override
  String get onboardingFeaturesBody =>
      'Tutto quello che tracci, guardi e leggi, senza saltare da un\'app all\'altra.';

  @override
  String get onboardingFeatureTrack => 'Traccia tutto';

  @override
  String get onboardingFeatureTrackDesc =>
      'Liste, progressi e voti su AniList, MyAnimeList, Simkl, Kitsu e MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Guarda e leggi';

  @override
  String get onboardingFeatureWatchDesc =>
      'Installa estensioni e guarda anime in streaming o leggi manga e novel direttamente nell\'app.';

  @override
  String get onboardingFeatureOffline => 'Portalo offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Scarica episodi e capitoli e vai avanti anche senza connessione.';

  @override
  String get onboardingFeatureSync => 'Liste sempre allineate';

  @override
  String get onboardingFeatureSyncDesc =>
      'Specchia la tua lista tra i servizi, oppure lascia vincere quello più avanti.';

  @override
  String get onboardingServices => 'Funziona con';

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
      'Hold and drag a button to move it. Tap one to cut it, move it or hide it';

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

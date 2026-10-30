// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Η ΝΕΑ καλύτερη εφαρμογή για\nπαρακολούθηση anime & manga';

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
  String get loadMore => 'Φόρτωση περισσότερων';

  @override
  String get login => 'Σύνδεση';

  @override
  String get continueAsGuest => 'Συνέχεια ως επισκέπτης';

  @override
  String get getStarted => 'Ας ξεκινήσουμε';

  @override
  String get loginWithToken => 'Σύνδεση με token';

  @override
  String get pasteTokenHint => 'Επικόλλησε το token πρόσβασης';

  @override
  String loginTo(String service) {
    return 'Σύνδεση στο $service';
  }

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get account => 'Λογαριασμός';

  @override
  String get about => 'Σχετικά';

  @override
  String get language => 'Γλώσσα';

  @override
  String get animationSpeed => 'Κινούμενα εφέ';

  @override
  String get animationSpeedDesc =>
      'Ταχύτητα μεταβάσεων και εφέ εισόδου σε όλη την εφαρμογή';

  @override
  String get animationSpeedOff => 'Ανενεργό';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Επεκτάσεις',
      one: 'Επέκταση',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Άγνωστη πηγή';

  @override
  String get install => 'Εγκατάσταση';

  @override
  String get update => 'Ενημέρωση';

  @override
  String get uninstall => 'Απεγκατάσταση';

  @override
  String get updateInstallCancelled =>
      'Η εγκατάσταση ακυρώθηκε. Αν το Android είπε ότι η εφαρμογή συγκρούεται με την εγκατεστημένη, η υπογραφή είναι διαφορετική: πρώτα απεγκατάστησε την τρέχουσα έκδοση και μετά εγκατέστησε την ενημέρωση';

  @override
  String updateInstallFailed(String error) {
    return 'Η ενημέρωση απέτυχε: $error';
  }

  @override
  String get appLock => 'Κλείδωμα εφαρμογής';

  @override
  String get appLockDesc =>
      'Ζήτα κωδικό όταν ανοίγει η εφαρμογή ή επιστρέφεις σε αυτήν μετά από λίγο';

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
  String get appLockUnlock => 'Βάλε τον κωδικό σου';

  @override
  String get appLockWrong => 'Λάθος κωδικός';

  @override
  String appLockWait(String seconds) {
    return 'Πολλές προσπάθειες, περίμενε $seconds δ';
  }

  @override
  String get appLockNew => 'Διάλεξε έναν κωδικό';

  @override
  String get appLockNewHint => '4 έως 8 ψηφία';

  @override
  String get appLockConfirm => 'Βάλ\' τον ξανά';

  @override
  String get appLockMismatch => 'Οι κωδικοί δεν ταιριάζουν';

  @override
  String get appLockOn => 'Ο κωδικός ορίστηκε';

  @override
  String get appLockRemoveTitle =>
      'Βάλε τον κωδικό σου για να απενεργοποιήσεις το κλείδωμα';

  @override
  String get installFailed => 'Η εγκατάσταση απέτυχε';

  @override
  String get updateFailed => 'Η ενημέρωση απέτυχε';

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
  String get noSourceSettings => 'Η πηγή δεν έχει ρυθμίσεις';

  @override
  String get addPluginRepository => 'Προσθήκη αποθετηρίου plugin';

  @override
  String get pluginIndexUrlHint => 'URL ευρετηρίου plugin';

  @override
  String get addRepository => 'Προσθήκη αποθετηρίου';

  @override
  String get pluginRepoUpdated => 'Το αποθετήριο plugin ενημερώθηκε';

  @override
  String get pluginRepoUpdateFailed =>
      'Αποτυχία ανανέωσης του αποθετηρίου plugin';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get yes => 'Ναι';

  @override
  String get no => 'Όχι';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get reset => 'Επαναφορά';

  @override
  String get clear => 'Καθαρισμός';

  @override
  String get test => 'Δοκιμή';

  @override
  String get testing => 'Δοκιμή…';

  @override
  String get resolving => 'Επίλυση…';

  @override
  String get none => 'Κανένα';

  @override
  String get selectMediaService => 'Επιλογή υπηρεσίας μέσων';

  @override
  String get pickColor => 'Διάλεξε χρώμα';

  @override
  String get colorPickerCustom => 'Προσαρμοσμένο';

  @override
  String get colorPickerTransparent => 'Διαφανές';

  @override
  String get ltr => 'Αριστερά προς δεξιά';

  @override
  String get searchSettings => 'Αναζήτηση ρυθμίσεων';

  @override
  String nothingMatches(String query) {
    return 'Τίποτα δεν ταιριάζει με \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Αναζήτηση σε $category';
  }

  @override
  String get settingsAppearance => 'Εμφάνιση';

  @override
  String get settingsAppearanceDesc => 'Θέμα, χρώματα, λειτουργία γυαλιού';

  @override
  String get settingsGeneral => 'Γενικά';

  @override
  String get settingsGeneralDesc => 'Γλώσσα και συμπεριφορά';

  @override
  String get settingsNetwork => 'Δίκτυο';

  @override
  String get settingsNetworkDesc => 'User agent, πιστοποιητικά, DNS και proxy';

  @override
  String get settingsAccountDesc => 'Υπηρεσία παρακολούθησης και σύνδεση';

  @override
  String get settingsUpdates => 'Ενημερώσεις';

  @override
  String get amoledBlack => 'Μαύρο AMOLED';

  @override
  String get amoledBlackDesc =>
      'Καθαρά μαύρες επιφάνειες στη σκοτεινή λειτουργία';

  @override
  String get glassMode => 'Λειτουργία γυαλιού';

  @override
  String get glassModeDesc => 'Παγωμένες επιφάνειες πάνω από τα εξώφυλλά σου';

  @override
  String get shelfFrame => 'Πλαίσιο γύρω από τις ενότητες';

  @override
  String get shelfFrameDesc =>
      'Εμφάνιση κάρτας πίσω από κάθε ράφι ή οι σειρές να κάθονται απευθείας στη σελίδα';

  @override
  String get settingsExtensionsDesc =>
      'Διαχειριστές πηγών, αποθετήρια και επιλογές επεκτάσεων';

  @override
  String get settingsAddons => 'Πρόσθετα';

  @override
  String get customPath => 'Προσαρμοσμένη διαδρομή αποθήκευσης';

  @override
  String get customPathDesc =>
      'Πού αποθηκεύονται τα δεδομένα της εφαρμογής. Πάτα παρατεταμένα για επαναφορά';

  @override
  String get selectDirectory => 'Επιλογή φακέλου';

  @override
  String get differentCacheManager => 'Εναλλακτική κρυφή μνήμη εικόνων';

  @override
  String get differentCacheManagerDesc =>
      'Χρήση διαφορετικού διαχειριστή κρυφής μνήμης για τις εικόνες';

  @override
  String get backupAndRestore => 'Αντίγραφο ασφαλείας και επαναφορά';

  @override
  String get backupAndRestoreDesc => 'Αποθήκευσε ή φόρτωσε τις προτιμήσεις σου';

  @override
  String get backup => 'Αντίγραφο ασφαλείας';

  @override
  String get restore => 'Επαναφορά';

  @override
  String get loadExtensionsIcon => 'Φόρτωση εικονιδίων επεκτάσεων';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Εμφάνιση εικονιδίων πηγών στις λίστες επεκτάσεων';

  @override
  String get sectionStorage => 'Αποθήκευση';

  @override
  String get sectionManagers => 'Διαχειριστές';

  @override
  String get sectionOptions => 'Επιλογές';

  @override
  String get backupTabBackup => 'Δημιουργία αντιγράφου';

  @override
  String get backupTabRestore => 'Επαναφορά';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys ρυθμίσεις σε $categories κατηγορίες';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Τελευταίο αντίγραφο $time';
  }

  @override
  String get backupNever => 'Κανένα αντίγραφο ακόμα';

  @override
  String get backupSelectAll => 'Επιλογή όλων';

  @override
  String get backupClearAll => 'Καθαρισμός';

  @override
  String backupKeys(Object count) {
    return '$count ρυθμίσεις';
  }

  @override
  String get backupPassword => 'Κωδικός (προαιρετικά)';

  @override
  String get backupPasswordHint => 'Άφησέ το κενό για τον προεπιλεγμένο';

  @override
  String get backupSensitive =>
      'Περιλαμβάνει tokens σύνδεσης. Κράτα το αρχείο ιδιωτικό';

  @override
  String get backupCreate => 'Δημιουργία αντιγράφου';

  @override
  String backupSaved(Object name) {
    return 'Το αντίγραφο αποθηκεύτηκε ως $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Το αντίγραφο απέτυχε: $error';
  }

  @override
  String get backupPickFile => 'Επίλεξε αρχείο αντιγράφου';

  @override
  String get backupPickFileDesc =>
      'Διάλεξε ένα αρχείο .json που δημιουργήθηκε από το Dartotsu';

  @override
  String get backupChooseAnother => 'Επιλογή άλλου αρχείου';

  @override
  String get backupCreatedAt => 'Δημιουργήθηκε';

  @override
  String get backupAppVersion => 'Έκδοση εφαρμογής';

  @override
  String get backupDevice => 'Συσκευή';

  @override
  String get backupAccounts => 'Λογαριασμοί';

  @override
  String get backupSize => 'Μέγεθος';

  @override
  String get backupEncrypted => 'Προστατευμένο με κωδικό';

  @override
  String get backupUnlock => 'Ξεκλείδωμα';

  @override
  String get backupWrongPassword =>
      'Το αρχείο δεν μπόρεσε να διαβαστεί. Έλεγξε τον κωδικό';

  @override
  String get backupRestoreSelected => 'Επαναφορά επιλεγμένων';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Επαναφορά $count ρυθμίσεων; Οι υπάρχουσες τιμές σε αυτές τις κατηγορίες θα αντικατασταθούν.';
  }

  @override
  String get backupRestored =>
      'Έγινε επαναφορά. Επανεκκίνησε την εφαρμογή για να εφαρμοστούν όλα';

  @override
  String backupRestoreFailed(Object error) {
    return 'Η επαναφορά απέτυχε: $error';
  }

  @override
  String get backupSelectOne => 'Επίλεξε τουλάχιστον μία κατηγορία';

  @override
  String get backupCatTheme => 'Εμφάνιση';

  @override
  String get backupCatThemeDesc =>
      'Θέμα, χρώματα, γυαλί, γραμματοσειρές και στυλ καρτών';

  @override
  String get backupCatCommon => 'Γενικά';

  @override
  String get backupCatCommonDesc =>
      'Γλώσσα, αποθήκευση, δίκτυο και επιλογές επεκτάσεων';

  @override
  String get backupCatPlayer => 'Πρόγραμμα αναπαραγωγής';

  @override
  String get backupCatPlayerDesc => 'Προτιμήσεις αναπαραγωγής';

  @override
  String get backupCatReader => 'Αναγνώστης';

  @override
  String get backupCatReaderDesc => 'Προτιμήσεις αναγνώστη';

  @override
  String get backupCatProtected => 'Λογαριασμοί';

  @override
  String get backupCatProtectedDesc => 'Tokens σύνδεσης και δεδομένα εισόδου';

  @override
  String get backupCatOther => 'Υπηρεσίες και ροές';

  @override
  String get backupCatOtherDesc =>
      'Διατάξεις ροών, λίστες και επιλογές υπηρεσιών';

  @override
  String get logFile => 'Αρχείο καταγραφής';

  @override
  String get logFileDesc =>
      'Μοιράσου το log της εφαρμογής ή αντίγραψε τη διαδρομή του στο Linux';

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
  String get logFileCopied => 'Η διαδρομή του log αντιγράφηκε';

  @override
  String get donateSheetTitle => 'Σου αρέσει το Dartotsu;';

  @override
  String get donateSheetMessage =>
      'Το Dartotsu φτιάχνεται και συντηρείται από ένα άτομο. Αν σου είναι χρήσιμο, σκέψου να στηρίξεις την ανάπτυξη.';

  @override
  String get donateLater => 'Ίσως αργότερα';

  @override
  String get glassBackground => 'Φόντο γυαλιού';

  @override
  String get glassBackgroundDesc =>
      'Το banner του προφίλ σου, εκτός αν βάλεις σύνδεσμο εικόνας';

  @override
  String get glassBackgroundHint =>
      'Σύνδεσμος εικόνας (άφησέ τον κενό για το banner σου)';

  @override
  String get followCover => 'Ακολούθηση εξωφύλλου';

  @override
  String get followCoverDesc =>
      'Τα χρώματα ακολουθούν το φόντο και, στις σελίδες λεπτομερειών, το εξώφυλλο';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Στυλ κάρτας';

  @override
  String get cardStyleDesc => 'Θέση τίτλου, μέγεθος, πρόοδος και σήματα';

  @override
  String get customFont => 'Γραμματοσειρά';

  @override
  String get customFontDesc =>
      'Προεπιλογή, αρχείο από τη συσκευή σου ή Google Fonts';

  @override
  String get customFontError => 'Δεν φορτώθηκε το αρχείο γραμματοσειράς';

  @override
  String get googleFontError => 'Δεν κατέβηκε η γραμματοσειρά';

  @override
  String get yourFonts => 'Οι γραμματοσειρές σου';

  @override
  String get addFontFile => 'Προσθήκη αρχείου γραμματοσειράς…';

  @override
  String get browseGoogleFonts => 'Περιήγηση στα Google Fonts…';

  @override
  String get searchGoogleFonts => 'Αναζήτηση στα Google Fonts';

  @override
  String get defaultFont => 'Προεπιλογή';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Δυναμικό χρώμα από το σύστημα';

  @override
  String get jsonTheme => 'Προσαρμοσμένο αρχείο θέματος';

  @override
  String get jsonThemeDesc =>
      'Ζωντανά χρώματα από το ~/.config/dartotsu/theme.json (δικό σου script ή δικές σου αλλαγές)';

  @override
  String get themeMode => 'Λειτουργία θέματος';

  @override
  String get mode => 'Λειτουργία';

  @override
  String get trackingService => 'Υπηρεσία παρακολούθησης';

  @override
  String get signOut => 'Αποσύνδεση';

  @override
  String get signIn => 'Σύνδεση';

  @override
  String get notSignedIn => 'Δεν έχεις συνδεθεί';

  @override
  String signOutOf(String service) {
    return 'Αποσύνδεση από το $service;';
  }

  @override
  String get checkForUpdates => 'Έλεγχος για ενημερώσεις';

  @override
  String get checkForUpdatesDesc => 'Ειδοποίηση για νέα έκδοση στο GitHub';

  @override
  String get updateChannel => 'Κανάλι ενημερώσεων';

  @override
  String get channel => 'Κανάλι';

  @override
  String get stable => 'Σταθερό';

  @override
  String get preRelease => 'Προέκδοση';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => 'Έλεγχος τώρα';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Προεπιλογή';

  @override
  String currentlyUsing(String value) {
    return 'Τώρα: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Προεπιλογή (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Τύπος';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Θύρα';

  @override
  String get proxyUsername => 'Όνομα χρήστη';

  @override
  String get proxyPassword => 'Κωδικός';

  @override
  String get optional => 'Προαιρετικό';

  @override
  String get clearCookies => 'Εκκαθάριση cookies';

  @override
  String get clearCookiesDesc => 'Αφαίρεση όλων των αποθηκευμένων cookies';

  @override
  String notImplementedArea(String area) {
    return '$area — έρχεται σύντομα';
  }

  @override
  String notImplementedService(String service) {
    return 'Το $service δεν το υποστηρίζει ακόμα.';
  }

  @override
  String get couldNotLoadResults => 'Δεν φορτώθηκαν τα αποτελέσματα';

  @override
  String get updateCheckFailed => 'Δεν έγινε έλεγχος για ενημερώσεις';

  @override
  String get highRefreshRate => 'Υψηλός ρυθμός ανανέωσης';

  @override
  String get highRefreshRateDesc =>
      'Χρήση του υψηλότερου ρυθμού ανανέωσης που υποστηρίζει η οθόνη σου';

  @override
  String get imageSave => 'Αποθήκευση εικόνας';

  @override
  String imageSavedTo(String path) {
    return 'Αποθηκεύτηκε στο $path';
  }

  @override
  String get imageActionFailed => 'Δεν κατέβηκε η εικόνα';

  @override
  String get imageTitleCover => 'Εξώφυλλο';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Εικόνα προφίλ';

  @override
  String get verifyTls => 'Επαλήθευση πιστοποιητικών';

  @override
  String get verifyTlsDesc =>
      'Απόρριψη διακομιστών με μη έγκυρα πιστοποιητικά HTTPS. Απενεργοποίησέ το μόνο για πηγή που χρησιμοποιεί αυτο-υπογεγραμμένο';

  @override
  String get clearCookiesConfirm =>
      'Να αφαιρεθούν όλα τα αποθηκευμένα cookies; Ίσως αποσυνδεθείς από κάποιες πηγές.';

  @override
  String get version => 'Έκδοση';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Πηγαίος κώδικας, issues και εκδόσεις';

  @override
  String get discordDesc => 'Κοινότητα και υποστήριξη';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Στήριξη της ανάπτυξης';

  @override
  String get contributors => 'Συνεισφέροντες';

  @override
  String get contributorsDesc => 'Οι άνθρωποι που έφτιαξαν το Dartotsu';

  @override
  String get contributorsLoadFailed => 'Δεν φορτώθηκαν οι συνεισφέροντες';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Έργα που βασίζονται στο Dartotsu';

  @override
  String get forksEmpty => 'Δεν βρέθηκαν forks';

  @override
  String get sectionColors => 'Χρώματα';

  @override
  String get sectionDisplay => 'Οθόνη';

  @override
  String get sectionStyle => 'Στυλ';

  @override
  String get sectionCommunity => 'Κοινότητα';

  @override
  String get sectionAppInfo => 'Πληροφορίες εφαρμογής';

  @override
  String get sectionRequests => 'Αιτήματα';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';

  @override
  String get onboardingBack => 'Πίσω';

  @override
  String get onboardingNext => 'Επόμενο';

  @override
  String get onboardingSkip => 'Παράλειψη';

  @override
  String get onboardingPaletteTitle => 'Κάν\' το δικό σου';

  @override
  String get onboardingPaletteBody =>
      'Διάλεξε παλέτα. Όλα τα χρώματα έμφασης, από τις κάρτες ως το πρόγραμμα αναπαραγωγής, την ακολουθούν.';

  @override
  String get themeModeAuto => 'Αυτόματο';

  @override
  String get themeModeLight => 'Φωτεινό';

  @override
  String get themeModeDark => 'Σκοτεινό';

  @override
  String get onboardingSyncTitle => 'Συγχρόνισε τη βιβλιοθήκη σου';

  @override
  String get onboardingSyncBody =>
      'Συνδέσου με το AniList για να φέρεις τις λίστες, την πρόοδο και τις βαθμολογίες σου. Ή παράλειψέ το και περιηγήσου ως επισκέπτης.';

  @override
  String get onboardingOpenLinks =>
      'Άνοιγμα συνδέσμων AniList και αποθετηρίων στο Dartotsu';

  @override
  String get onboardingPermsTitle => 'Άδειες';

  @override
  String get onboardingPermsBody =>
      'Δώσε τες τώρα για να δουλεύουν χωρίς διακοπές οι λήψεις, οι ενημερώσεις και οι ειδοποιήσεις. Μπορείς να τις αλλάξεις αργότερα στις ρυθμίσεις συστήματος.';

  @override
  String get permNotifications => 'Ειδοποιήσεις';

  @override
  String get permNotificationsDesc =>
      'Πρόοδος λήψεων, νέα επεισόδια και απαντήσεις';

  @override
  String get permStorage => 'Πρόσβαση σε όλα τα αρχεία';

  @override
  String get permStorageDesc =>
      'Αποθήκευση λήψεων στον δημόσιο φάκελο Dartotsu';

  @override
  String get permInstall => 'Εγκατάσταση ενημερώσεων';

  @override
  String get permInstallDesc =>
      'Άσε το Dartotsu να εγκαθιστά τις δικές του ενημερώσεις';

  @override
  String get permBattery => 'Χωρίς περιορισμό μπαταρίας';

  @override
  String get permBatteryDesc => 'Οι μεγάλες λήψεις συνεχίζονται στο παρασκήνιο';

  @override
  String get permGrant => 'Να επιτρέπεται';

  @override
  String get linkOpenInApp => 'Άνοιγμα συνδέσμων στο Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Οι σύνδεσμοι AniList και αποθετηρίων ανοίγουν την εφαρμογή';

  @override
  String get reviewsTitle => 'Κριτικές';

  @override
  String get reviewsEmpty => 'Καμία κριτική ακόμα';

  @override
  String get reviewsFailed => 'Δεν φορτώθηκαν οι κριτικές';

  @override
  String get reviewHelpfulQuestion => 'Σου φάνηκε χρήσιμη η κριτική;';

  @override
  String get reviewVoteFailed => 'Δεν αποθηκεύτηκε η ψήφος σου';

  @override
  String reviewHelpful(int n, int total) {
    return '$n από $total τη βρήκαν χρήσιμη';
  }

  @override
  String get calendarTitle => 'Πρόγραμμα προβολής';

  @override
  String get calendarToday => 'Σήμερα';

  @override
  String get calendarEmpty => 'Τίποτα δεν προβάλλεται αυτή τη μέρα';

  @override
  String get calendarFailed => 'Δεν φορτώθηκε το πρόγραμμα';

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
    return 'Επεισόδιο $n';
  }

  @override
  String get shareAnalytics => 'Κοινοποίηση ανώνυμων δεδομένων χρήσης';

  @override
  String get shareAnalyticsDesc =>
      'Ανώνυμοι αριθμοί χρηστών και αναφορές κρασαρισμάτων. Χωρίς λογαριασμό ή προσωπικά δεδομένα';

  @override
  String get linkOpenAnilist => 'Άνοιγμα συνδέσμων AniList στο Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Ενεργοποίησε τη διαχείριση συνδέσμων ώστε οι σύνδεσμοι anilist.co να ανοίγουν την εφαρμογή';

  @override
  String get linkSettingsFailed => 'Δεν άνοιξαν οι ρυθμίσεις συστήματος';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Δείξε στο προφίλ σου στο Discord τι κάνεις. Χρειάζεται το token του Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Δείξε στο προφίλ σου στο Discord τι κάνεις. Χρειάζεται να τρέχει η εφαρμογή Discord για υπολογιστή.';

  @override
  String get discordBrowsing => 'Εμφάνιση δραστηριότητας περιήγησης';

  @override
  String get discordBrowsingDesc =>
      'Δείξε και την καρτέλα, τη σελίδα ή το προφίλ που βλέπεις, όχι μόνο ό,τι παρακολουθείς ή διαβάζεις.';

  @override
  String get discordLookHeader => 'Εμφάνιση του presence';

  @override
  String get discordActivityType => 'Τύπος δραστηριότητας';

  @override
  String get discordActivityTypeDesc =>
      'Πώς το διατυπώνει το Discord: \"Παρακολουθεί …\" ή \"Παίζει …\". Το Αυτόματο χρησιμοποιεί Παρακολουθεί για anime και Παίζει για όλα τα υπόλοιπα.';

  @override
  String get discordWatching => 'Παρακολουθεί';

  @override
  String get discordPlaying => 'Παίζει';

  @override
  String get discordCovers => 'Εμφάνιση εξωφύλλων';

  @override
  String get discordCoversDesc => 'Εξώφυλλο και εικονίδιο Dartotsu στην κάρτα.';

  @override
  String get discordTimer => 'Εμφάνιση χρονομέτρου';

  @override
  String get discordTimerDesc =>
      'Χρόνος που πέρασε ή απομένει κάτω από τον τίτλο.';

  @override
  String get discordButtons => 'Εμφάνιση κουμπιών';

  @override
  String get discordButtonsDesc =>
      'Κουμπιά \"Προβολή anime / manga\" και \"Άνοιγμα Dartotsu\".';

  @override
  String get discordHideTitles => 'Απόκρυψη τίτλων';

  @override
  String get discordHideTitlesDesc =>
      'Αντικατάσταση ονομάτων anime και manga (και του εξωφύλλου και συνδέσμου τους) με \"Κάτι ιδιωτικό\".';

  @override
  String get discordConnectionHeader => 'Σύνδεση';

  @override
  String get listSearchHint => 'Αναζήτηση σε αυτή τη λίστα';

  @override
  String get listSort => 'Ταξινόμηση';

  @override
  String get listFilter => 'Φίλτρο';

  @override
  String get listRandom => 'Τυχαίος τίτλος';

  @override
  String get listReverse => 'Αντίστροφη σειρά';

  @override
  String get listSortDefault => 'Σειρά λίστας';

  @override
  String get listSortScore => 'Η βαθμολογία σου';

  @override
  String get listSortTitle => 'Τίτλος';

  @override
  String get listSortUpdated => 'Τελευταία ενημέρωση';

  @override
  String get listSortProgress => 'Πρόοδος';

  @override
  String get listSortReleased => 'Ημερομηνία κυκλοφορίας';

  @override
  String get listSortAverage => 'Μέση βαθμολογία';

  @override
  String get listFilterFormat => 'Μορφή';

  @override
  String get listFilterStatus => 'Κατάσταση';

  @override
  String get listFilterGenres => 'Είδη';

  @override
  String get listFilterClear => 'Καθαρισμός φίλτρων';

  @override
  String get listNoMatches => 'Τίποτα σε αυτή τη λίστα δεν ταιριάζει';

  @override
  String get discordLogin => 'Σύνδεση στο Discord';

  @override
  String get discordToken => 'Token Discord';

  @override
  String get discordTokenSaved =>
      'Αποθηκεύτηκε. Πάτα για αντικατάσταση, παρατεταμένα για αφαίρεση.';

  @override
  String get discordTokenNotSet => 'Δεν έχει οριστεί. Πάτα για προσθήκη.';

  @override
  String get discordTokenSavedSnack => 'Το token Discord αποθηκεύτηκε';

  @override
  String get discordTokenRemovedSnack => 'Το token Discord αφαιρέθηκε';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Ενεργό · πάτα για να αλλάξεις την εμφάνιση';

  @override
  String get discordRichPresenceRowOff =>
      'Δείξε στο προφίλ σου στο Discord τι κάνεις';

  @override
  String get loginCancelled => 'Η σύνδεση ακυρώθηκε';

  @override
  String get invalidToken => 'Μη έγκυρο token';

  @override
  String loginFailed(String error) {
    return 'Η σύνδεση απέτυχε: $error';
  }

  @override
  String get malLoginFailed => 'Η σύνδεση στο MyAnimeList απέτυχε';

  @override
  String get kitsuLoginFailed =>
      'Η σύνδεση στο Kitsu απέτυχε. Έλεγξε το email και τον κωδικό σου.';

  @override
  String get kitsuLoginTitle => 'Σύνδεση στο Kitsu';

  @override
  String get emailOrUsername => 'Email ή όνομα χρήστη';

  @override
  String get password => 'Κωδικός';

  @override
  String get kitsuProfile => 'Προφίλ Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Η σύνδεση στο MangaBaka απέτυχε';

  @override
  String get mangaBakaProfile => 'Προφίλ MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Ανανέωση από το MangaBaka';

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
  String get artistsLabel => 'Σχεδιαστές';

  @override
  String get authorsLabel => 'Συγγραφείς';

  @override
  String get publishersLabel => 'Εκδότες';

  @override
  String get licensedLabel => 'Με άδεια';

  @override
  String get contentRatingLabel => 'Ηλικιακή διαβάθμιση';

  @override
  String get yesLabel => 'Ναι';

  @override
  String get noLabel => 'Όχι';

  @override
  String get ratingSteps => 'Βήματα βαθμολογίας';

  @override
  String get hideNsfw => 'Απόκρυψη NSFW';

  @override
  String get hideNsfwDesc =>
      'Κράτα τους τίτλους ενηλίκων εκτός ροών και αναζήτησης και δες τις δικές σου εγγραφές ενηλίκων στα Κρυμμένα μέσα.';

  @override
  String get kitsuAccountOptions => 'Επιλογές λογαριασμού Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Επιλογές λογαριασμού MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Δεν ενημερώθηκαν οι ρυθμίσεις σου στο Kitsu';

  @override
  String get titleCanonical => 'Κανονικό';

  @override
  String get titleRomanized => 'Λατινικοποιημένο';

  @override
  String get titleLocalized => 'Τοπικοποιημένο';

  @override
  String get ratingSystem => 'Σύστημα βαθμολόγησης';

  @override
  String get ratingSimple => 'Απλό (3 πρόσωπα)';

  @override
  String get ratingRegular => 'Κανονικό (5 αστέρια)';

  @override
  String get ratingAdvanced => 'Προχωρημένο (10 πόντοι)';

  @override
  String get contentFilter => 'Φίλτρο περιεχομένου';

  @override
  String get contentSfw => 'Μόνο ασφαλές για δουλειά';

  @override
  String get contentSometimes => 'Περιεχόμενο ενηλίκων στις αναζητήσεις';

  @override
  String get contentEverywhere => 'Περιεχόμενο ενηλίκων παντού';

  @override
  String get shareToGlobal => 'Κοινοποίηση στην καθολική ροή';

  @override
  String get shareToGlobalDesc =>
      'Άσε τη δραστηριότητά σου να εμφανίζεται στην καθολική ροή του Kitsu.';

  @override
  String get memberSince => 'Μέλος από';

  @override
  String get location => 'Τοποθεσία';

  @override
  String get accountType => 'Τύπος λογαριασμού';

  @override
  String get accountSupporter => 'Υποστηρικτής';

  @override
  String get accountFree => 'Δωρεάν';

  @override
  String get accountDetails => 'Στοιχεία λογαριασμού';

  @override
  String get refreshFromKitsu => 'Ανανέωση από το Kitsu';

  @override
  String get simklReadOnly => 'Το Simkl έδωσε πρόσβαση μόνο για ανάγνωση';

  @override
  String get incognitoEditsBlocked =>
      'Ινκόγκνιτο: οι αλλαγές στις λίστες είναι μπλοκαρισμένες';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'Ινκόγκνιτο: η πρόοδος δεν αποθηκεύτηκε';

  @override
  String progressSet(int progress) {
    return 'Η πρόοδος ορίστηκε σε $progress';
  }

  @override
  String removedFromList(String title) {
    return 'Το $title αφαιρέθηκε από τη λίστα σου';
  }

  @override
  String get following => 'Ακολουθείς';

  @override
  String get homeSections => 'Ενότητες αρχικής';

  @override
  String get homeSectionsHint =>
      'Σύρε για αλλαγή σειράς. Οι κρυμμένες ενότητες δεν φορτώνονται ποτέ.';

  @override
  String get customListDeleteFailed =>
      'Αποτυχία διαγραφής προσαρμοσμένης λίστας';

  @override
  String get customListsSaveFailed =>
      'Αποτυχία αποθήκευσης προσαρμοσμένων λιστών';

  @override
  String get customListsSaved => 'Οι προσαρμοσμένες λίστες αποθηκεύτηκαν';

  @override
  String get listName => 'Όνομα λίστας';

  @override
  String get addList => 'Προσθήκη λίστας';

  @override
  String voiceActorsIn(String name) {
    return 'Ηθοποιοί φωνής · $name';
  }

  @override
  String get animeAppearances => 'Εμφανίσεις σε anime';

  @override
  String get mangaAppearances => 'Εμφανίσεις σε manga';

  @override
  String get voicedCharacters => 'Χαρακτήρες που δάνεισε τη φωνή του';

  @override
  String get animeCredits => 'Συμμετοχές σε anime';

  @override
  String get mangaCredits => 'Συμμετοχές σε manga';

  @override
  String get mainProductions => 'Βασικές παραγωγές';

  @override
  String get otherWorks => 'Άλλα έργα';

  @override
  String get prequelSequel => 'Prequel & Sequel';

  @override
  String get previousSeason => 'Προηγούμενη σεζόν';

  @override
  String get thisSeason => 'Αυτή η σεζόν';

  @override
  String get nextSeason => 'Επόμενη σεζόν';

  @override
  String get voiceRoles => 'Φωνητικοί ρόλοι';

  @override
  String get staffPositions => 'Θέσεις προσωπικού';

  @override
  String get mangaWorks => 'Έργα manga';

  @override
  String get malProfile => 'Προφίλ MyAnimeList';

  @override
  String get refreshFromMal => 'Ανανέωση από το MyAnimeList';

  @override
  String get repullProfileCounts =>
      'Ξαναφόρτωση του προφίλ και των αριθμών σου';

  @override
  String get refreshed => 'Ανανεώθηκε';

  @override
  String get simklProfile => 'Προφίλ Simkl';

  @override
  String get refreshFromSimkl => 'Ανανέωση από το Simkl';

  @override
  String get repullProfileLibrary =>
      'Ξαναφόρτωση του προφίλ και της βιβλιοθήκης σου';

  @override
  String get simklSignInToSearch => 'Συνδέσου στο Simkl για αναζήτηση';

  @override
  String get dropRate => 'Ποσοστό εγκατάλειψης';

  @override
  String get simklAttribution =>
      'Δεδομένα και εικόνες από το Simkl. Προβολή στο Simkl';

  @override
  String get onHold => 'Σε αναμονή';

  @override
  String get scoredBy => 'Βαθμολογήθηκε από';

  @override
  String get planToWatch => 'Θα το δω';

  @override
  String get planToRead => 'Θα το διαβάσω';

  @override
  String get timesRewatched => 'Φορές που ξαναείδα';

  @override
  String get timesReread => 'Φορές που ξαναδιάβασα';

  @override
  String get comments => 'Σχόλια';

  @override
  String get moviesAndSeries => 'Ταινίες & σειρές';

  @override
  String get trackingOnly => 'Μόνο παρακολούθηση';

  @override
  String get signedIn => 'Συνδεδεμένος';

  @override
  String get searchLanguage => 'Γλώσσα αναζήτησης';

  @override
  String get savedToList => 'Αποθηκεύτηκε στη λίστα σου';

  @override
  String get removedFromYourList => 'Αφαιρέθηκε από τη λίστα σου';

  @override
  String get retry => 'Επανάληψη';

  @override
  String get synopsis => 'Σύνοψη';

  @override
  String get details => 'Λεπτομέρειες';

  @override
  String get addToList => 'Προσθήκη στη λίστα';

  @override
  String get trailer => 'Trailer';

  @override
  String get titleCopied => 'Ο τίτλος αντιγράφηκε';

  @override
  String get linkCopied => 'Ο σύνδεσμος αντιγράφηκε';

  @override
  String get watchTrailer => 'Προβολή trailer';

  @override
  String get copyTitle => 'Αντιγραφή τίτλου';

  @override
  String get copyLink => 'Αντιγραφή συνδέσμου';

  @override
  String get openInBrowser => 'Άνοιγμα στο πρόγραμμα περιήγησης';

  @override
  String viewOnSource(String source) {
    return 'Προβολή στο $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Το επεισόδιο $ep προβάλλεται σε $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Επόμενο επεισόδιο σε $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Το κεφάλαιο $chapter έρχεται σε περίπου $time';
  }

  @override
  String get logPathCopied =>
      'Η διαδρομή του αρχείου log αντιγράφηκε στο πρόχειρο';

  @override
  String get animeSource => 'Πηγή anime';

  @override
  String get mangaSource => 'Πηγή manga';

  @override
  String get popular => 'Δημοφιλή';

  @override
  String get latest => 'Τελευταία';

  @override
  String get saved => 'Αποθηκευμένα';

  @override
  String get nothingMatched => 'Δεν βρέθηκε τίποτα';

  @override
  String get nothingSavedFromSource =>
      'Τίποτα αποθηκευμένο από αυτή την πηγή ακόμα';

  @override
  String get sourceReturnedNothing => 'Αυτή η πηγή δεν επέστρεψε τίποτα';

  @override
  String get checkConnectionOrSource =>
      'Έλεγξε τη σύνδεσή σου ή δοκίμασε άλλη πηγή.';

  @override
  String get tryDifferentSearch => 'Δοκίμασε διαφορετικό όρο αναζήτησης.';

  @override
  String get savedTitlesAppearHere =>
      'Οι τίτλοι που προσθέτεις στη λίστα σου εμφανίζονται εδώ.';

  @override
  String get tryOtherFeed => 'Δοκίμασε την άλλη ροή ή την αναζήτηση.';

  @override
  String searchSource(String source) {
    return 'Αναζήτηση στο $source';
  }

  @override
  String get animeExtensions => 'Επεκτάσεις anime';

  @override
  String get mangaExtensions => 'Επεκτάσεις manga';

  @override
  String get nothingHereYet => 'Τίποτα εδώ ακόμα';

  @override
  String get savedOnDeviceUntilLogin =>
      'Ό,τι βλέπεις παρακάτω είναι αποθηκευμένο σε αυτή τη συσκευή μέχρι να κάνεις κάτι άλλο.';

  @override
  String get yourProfile => 'Το προφίλ σου';

  @override
  String get activity => 'Δραστηριότητα';

  @override
  String get extensions => 'Επεκτάσεις';

  @override
  String get logOut => 'Αποσύνδεση';

  @override
  String get logIn => 'Σύνδεση';

  @override
  String get logOutConfirm => 'Σίγουρα θες να αποσυνδεθείς;';

  @override
  String get incognitoMode => 'Λειτουργία ινκόγκνιτο';

  @override
  String get alsoBlockListEdits => 'Μπλόκαρε και τις αλλαγές στις λίστες';

  @override
  String get offlineMode => 'Λειτουργία εκτός σύνδεσης';

  @override
  String get switchService => 'Αλλαγή υπηρεσίας';

  @override
  String logOutOf(String name) {
    return 'Αποσύνδεση από το $name';
  }

  @override
  String get loggedIn => 'Συνδεδεμένος';

  @override
  String get notifications => 'Ειδοποιήσεις';

  @override
  String get nothingNew => 'Τίποτα καινούργιο';

  @override
  String get thisWeek => 'Αυτή την εβδομάδα';

  @override
  String get listOnly => 'Μόνο η λίστα';

  @override
  String get filter => 'Φίλτρο';

  @override
  String get searchResults => 'Αποτελέσματα αναζήτησης';

  @override
  String get recentSearches => 'Πρόσφατες αναζητήσεις';

  @override
  String get searchOrSetFilter => 'Αναζήτηση ή ορισμός φίλτρου';

  @override
  String get filters => 'Φίλτρα';

  @override
  String get showLess => 'Λιγότερα';

  @override
  String get showAll => 'Εμφάνιση όλων';

  @override
  String get apply => 'Εφαρμογή';

  @override
  String get preview => 'Προεπισκόπηση';

  @override
  String get preset => 'Προεπιλογή';

  @override
  String get cardNormal => 'Κανονικό';

  @override
  String get cardOnCard => 'Πάνω στην κάρτα';

  @override
  String get cardInCard => 'Μέσα στην κάρτα';

  @override
  String get size => 'Μέγεθος';

  @override
  String get cardWidth => 'Πλάτος κάρτας';

  @override
  String get compact => 'Συμπαγές';

  @override
  String get coverAndTitleOnly => 'Μόνο εξώφυλλο και τίτλος';

  @override
  String get titleLines => 'Γραμμές τίτλου';

  @override
  String get shape => 'Σχήμα';

  @override
  String get posterShape => 'Σχήμα αφίσας';

  @override
  String get cornerRadius => 'Ακτίνα γωνιών';

  @override
  String get off => 'Ανενεργό';

  @override
  String get topLeft => 'Πάνω αριστερά';

  @override
  String get topRight => 'Πάνω δεξιά';

  @override
  String get bottomLeft => 'Κάτω αριστερά';

  @override
  String get bottomRight => 'Κάτω δεξιά';

  @override
  String get overlays => 'Επικαλύψεις';

  @override
  String get progressCount => 'Πρόοδος / πλήθος';

  @override
  String get pill => 'Κάψουλα';

  @override
  String get bar => 'Μπάρα';

  @override
  String get outside => 'Εξωτερικά';

  @override
  String get scoreBadge => 'Σήμα βαθμολογίας';

  @override
  String get airingDot => 'Τελεία προβολής';

  @override
  String get updateAvailable => 'Διαθέσιμη ενημέρωση';

  @override
  String get notInstalled => 'Δεν είναι εγκατεστημένο';

  @override
  String get done => 'Τέλος';

  @override
  String get searchOrEnterUrl => 'Αναζήτηση ή εισαγωγή URL';

  @override
  String get refresh => 'Ανανέωση';

  @override
  String get share => 'Κοινοποίηση';

  @override
  String get characters => 'Χαρακτήρες';

  @override
  String get staff => 'Προσωπικό';

  @override
  String get readMore => 'Διάβασε περισσότερα';

  @override
  String get couldNotLoadList => 'Δεν φορτώθηκε η λίστα';

  @override
  String get logInToFavourite => 'Συνδέσου για να προσθέσεις αγαπημένα';

  @override
  String get alsoKnownAs => 'Επίσης γνωστό ως';

  @override
  String get hideSpoilerNames => 'Απόκρυψη ονομάτων με spoilers';

  @override
  String get showSpoilerNames => 'Εμφάνιση ονομάτων με spoilers';

  @override
  String get favourited => 'Στα αγαπημένα';

  @override
  String get favourite => 'Αγαπημένο';

  @override
  String get couldNotOpenTitle => 'Δεν άνοιξε αυτός ο τίτλος';

  @override
  String get nobodyHereYet => 'Κανείς ακόμα';

  @override
  String get noMatches => 'Δεν υπάρχουν αποτελέσματα';

  @override
  String get gridView => 'Προβολή πλέγματος';

  @override
  String get fullWidth => 'Πλήρες πλάτος';

  @override
  String get userNotFound => 'Ο χρήστης δεν βρέθηκε';

  @override
  String get couldNotUpdateFollow => 'Δεν ενημερώθηκε η ακολούθηση';

  @override
  String followedUser(String name) {
    return 'Ακολουθείς τον/την $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Σταμάτησες να ακολουθείς τον/την $name';
  }

  @override
  String get messages => 'Μηνύματα';

  @override
  String get logInToSeeMessages => 'Συνδέσου για να δεις τα μηνύματά σου';

  @override
  String get editActivity => 'Επεξεργασία δραστηριότητας';

  @override
  String get newActivity => 'Νέα δραστηριότητα';

  @override
  String get editMessage => 'Επεξεργασία μηνύματος';

  @override
  String get writeMessage => 'Γράψε ένα μήνυμα';

  @override
  String get editReply => 'Επεξεργασία απάντησης';

  @override
  String get posted => 'Δημοσιεύτηκε';

  @override
  String get couldNotPost => 'Δεν έγινε η δημοσίευση';

  @override
  String get nothingToPreview => 'Δεν υπάρχει τίποτα για προεπισκόπηση';

  @override
  String get writeSomethingHint =>
      'Γράψε κάτι… Το markdown του AniList δουλεύει εδώ';

  @override
  String get privateMessage => 'Ιδιωτικό μήνυμα';

  @override
  String get post => 'Δημοσίευση';

  @override
  String get nothingHere => 'Τίποτα εδώ';

  @override
  String get noAnimeProgress => 'Καμία πρόοδος anime';

  @override
  String get noMangaProgress => 'Καμία πρόοδος manga';

  @override
  String get noMessages => 'Κανένα μήνυμα';

  @override
  String get writeMessageHint => 'Γράψε ένα μήνυμα…';

  @override
  String get shareSomethingHint => 'Μοιράσου κάτι…';

  @override
  String get all => 'Όλα';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Πλήθος';

  @override
  String get hoursWatched => 'Ώρες παρακολούθησης';

  @override
  String get chaptersRead => 'Κεφάλαια που διάβασες';

  @override
  String get meanScore => 'Μέση βαθμολογία';

  @override
  String get noStatsYet => 'Δεν υπάρχουν στατιστικά ακόμα';

  @override
  String get totalEntries => 'Σύνολο εγγραφών';

  @override
  String get episodesWatched => 'Επεισόδια που είδες';

  @override
  String get daysWatched => 'Ημέρες παρακολούθησης';

  @override
  String get volumesRead => 'Τόμοι που διάβασες';

  @override
  String get standardDeviation => 'Τυπική απόκλιση';

  @override
  String get showMore => 'Εμφάνιση περισσότερων';

  @override
  String get followsYou => 'Σε ακολουθεί';

  @override
  String get nobodyYet => 'Κανείς ακόμα';

  @override
  String get logInToLike => 'Συνδέσου για να κάνεις like';

  @override
  String get failedToLikeActivity => 'Το like στη δραστηριότητα απέτυχε';

  @override
  String get deleteActivityConfirm => 'Διαγραφή δραστηριότητας;';

  @override
  String get deletedActivity => 'Η δραστηριότητα διαγράφηκε';

  @override
  String get failedToDeleteActivity => 'Η διαγραφή της δραστηριότητας απέτυχε';

  @override
  String get subscribed => 'Έγινε εγγραφή';

  @override
  String get unsubscribed => 'Έγινε διαγραφή εγγραφής';

  @override
  String get failedToUpdateSubscription => 'Αποτυχία ενημέρωσης συνδρομής';

  @override
  String get edit => 'Επεξεργασία';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get likedBy => 'Like από';

  @override
  String get follow => 'Ακολούθηση';

  @override
  String get nameCopied => 'Το όνομα αντιγράφηκε';

  @override
  String get followsEachOther => 'Ακολουθείτε ο ένας τον άλλον';

  @override
  String get unfollow => 'Διακοπή ακολούθησης';

  @override
  String get userIdCopied => 'Το id χρήστη αντιγράφηκε';

  @override
  String get shareProfile => 'Κοινοποίηση προφίλ';

  @override
  String get copyUserId => 'Αντιγραφή id χρήστη';

  @override
  String get failedToDelete => 'Η διαγραφή απέτυχε';

  @override
  String get failedToLike => 'Το like απέτυχε';

  @override
  String get replies => 'Απαντήσεις';

  @override
  String get reply => 'Απάντηση';

  @override
  String get noRepliesYet => 'Καμία απάντηση ακόμα';

  @override
  String get favouriteAnime => 'Αγαπημένα anime';

  @override
  String get favouriteManga => 'Αγαπημένα manga';

  @override
  String get favouriteCharacters => 'Αγαπημένοι χαρακτήρες';

  @override
  String get favouriteStaff => 'Αγαπημένο προσωπικό';

  @override
  String get favouriteStudios => 'Αγαπημένα στούντιο';

  @override
  String get noFavouritesYet => 'Κανένα αγαπημένο ακόμα';

  @override
  String get yourStory => 'Η ιστορία σου';

  @override
  String get copiedToClipboard => 'Αντιγράφηκε στο πρόχειρο';

  @override
  String get justNow => 'Μόλις τώρα';

  @override
  String get openImage => 'Άνοιγμα εικόνας';

  @override
  String get hideSpoiler => 'Απόκρυψη spoiler';

  @override
  String get showSpoiler => 'Εμφάνιση spoiler';

  @override
  String get status => 'Κατάσταση';

  @override
  String get score => 'Βαθμολογία';

  @override
  String get started => 'Ξεκίνησε';

  @override
  String get completed => 'Ολοκληρώθηκε';

  @override
  String get private => 'Ιδιωτικό';

  @override
  String get hideFromStatusLists => 'Απόκρυψη από τις λίστες κατάστασης';

  @override
  String get totalRepeats => 'Σύνολο επαναλήψεων';

  @override
  String get other => 'Άλλο';

  @override
  String get customLists => 'Προσαρμοσμένες λίστες';

  @override
  String get activeDays => 'Ενεργές μέρες';

  @override
  String get longestStreak => 'Μεγαλύτερο σερί';

  @override
  String get currentStreak => 'Τρέχον σερί';

  @override
  String get tapOrHoverDay => 'Πάτα ή πέρασε το ποντίκι πάνω από μια μέρα';

  @override
  String get less => 'Λιγότερο';

  @override
  String get more => 'Περισσότερο';

  @override
  String epIn(int ep, String time) {
    return 'Επ. $ep σε $time';
  }

  @override
  String get sectionLoading => 'Φόρτωση';

  @override
  String get querySize => 'Μέγεθος ερωτήματος';

  @override
  String get querySizeDesc =>
      'Ένα μεγάλο ερώτημα φορτώνει όλες τις σειρές (και ολόκληρο προφίλ) με ένα αίτημα. Τα χωρισμένα ερωτήματα στέλνουν ένα μικρό αίτημα ανά σειρά ή τμήμα προφίλ: το καθένα είναι γρήγορο και τα τμήματα εμφανίζονται όπως φτάνουν.';

  @override
  String get oneBig => 'Ένα μεγάλο';

  @override
  String get split => 'Χωρισμένα';

  @override
  String get sectionSocial => 'Κοινωνικά';

  @override
  String get systemNotifications => 'Ειδοποιήσεις συστήματος';

  @override
  String get feedLayout => 'Διάταξη ροής';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown από $total εμφανίζονται — πάτα για επιλογή και αναδιάταξη';
  }

  @override
  String labelSections(String label) {
    return 'Ενότητες $label';
  }

  @override
  String get accountOptions => 'Επιλογές λογαριασμού';

  @override
  String get anilistAccountOptions => 'Επιλογές λογαριασμού AniList';

  @override
  String get sectionPrivacy => 'Απόρρητο';

  @override
  String get hidePrivateEntries => 'Απόκρυψη ιδιωτικών εγγραφών';

  @override
  String get hidePrivateEntriesDesc =>
      'Κράτα εκτός ροής τις εγγραφές που είναι ιδιωτικές στο AniList';

  @override
  String get anilistExcludeList => 'Εξαίρεση της λίστας σου';

  @override
  String get anilistExcludeListDesc =>
      'Κρύψε από τις σελίδες anime και manga τους τίτλους που έχεις ήδη στο AniList';

  @override
  String get anilistProfile => 'Προφίλ AniList';

  @override
  String get refreshFromAnilist => 'Ανανέωση από το AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Δεν ενημερώθηκαν οι ρυθμίσεις του AniList';

  @override
  String get sectionNames => 'Ονόματα';

  @override
  String get titleLanguage => 'Γλώσσα τίτλων';

  @override
  String get titleLanguageDesc =>
      'Πώς γράφονται οι τίτλοι παντού, π.χ. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Ονόματα προσωπικού και χαρακτήρων';

  @override
  String get sectionLists => 'Λίστες';

  @override
  String get scoreFormat => 'Μορφή βαθμολογίας';

  @override
  String get sortListsBy => 'Ταξινόμηση λιστών κατά';

  @override
  String labelCustomLists(String label) {
    return 'Προσαρμοσμένες λίστες $label';
  }

  @override
  String customListsCount(int count) {
    return '$count λίστες — πάτα για προσθήκη ή αφαίρεση';
  }

  @override
  String get mergeActivities => 'Συγχώνευση δραστηριοτήτων';

  @override
  String minutesCount(int count) {
    return '$count λεπτά';
  }

  @override
  String get timezone => 'Ζώνη ώρας';

  @override
  String get notSet => 'Δεν έχει οριστεί';

  @override
  String get airingNotifications => 'Ειδοποιήσεις προβολής';

  @override
  String get airingNotificationsDesc =>
      'Ειδοποίηση όταν προβάλλεται επεισόδιο σειράς που ακολουθείς';

  @override
  String get displayAdultContent => 'Εμφάνιση περιεχομένου ενηλίκων';

  @override
  String get displayAdultContentDesc =>
      'Συμπερίληψη τίτλων 18+ στην περιήγηση, την αναζήτηση και τις ροές';

  @override
  String get restrictMessages => 'Μηνύματα μόνο από όσους ακολουθείς';

  @override
  String get restrictMessagesDesc =>
      'Μόνο όσους ακολουθείς μπορούν να σου στείλουν μήνυμα';

  @override
  String get sectionServices => 'Υπηρεσίες';

  @override
  String get novel => 'Novel';

  @override
  String labelService(String label) {
    return 'Υπηρεσία $label';
  }

  @override
  String nameSettings(String name) {
    return 'Ρυθμίσεις $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Επιλογές από τη γέφυρα επεκτάσεων $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return 'Το $name δεν μπόρεσε να ξεκινήσει: $error';
  }

  @override
  String get importLists => 'Εισαγωγή λιστών';

  @override
  String get importListsDesc =>
      'Από αντίγραφα Aniyomi, Mihon / Tachiyomi ή Kotatsu';

  @override
  String get exportLists => 'Εξαγωγή λιστών';

  @override
  String get exportListsDesc => 'Σε αντίγραφο Aniyomi, Mihon ή Kotatsu';

  @override
  String get sectionBrowse => 'Περιήγηση';

  @override
  String get readingTab => 'Καρτέλα ανάγνωσης';

  @override
  String get readingTabDesc => 'Ποιες επεκτάσεις δείχνει η τρίτη καρτέλα';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Προεπιλεγμένη ροή';

  @override
  String get defaultFeedDesc => 'Με ποια λίστα ανοίγει μια πηγή';

  @override
  String noServiceSupports(String type) {
    return 'Καμία υπηρεσία δεν υποστηρίζει $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · φορτώνονται $loaded από $installed πηγές';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Καμία υπηρεσία επεκτάσεων δεν υποστηρίζει εδώ $type.';
  }

  @override
  String get loadDataFrom => 'Φόρτωση δεδομένων από';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Δεν υπάρχουν εγκατεστημένες πηγές $type ακόμα.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Η επέκταση για το $name δεν είναι εγκατεστημένη';
  }

  @override
  String get thisSource => 'αυτή η πηγή';

  @override
  String failedToAddRepository(String error) {
    return 'Αποτυχία προσθήκης αποθετηρίου: $error';
  }

  @override
  String installedType(String type) {
    return 'Εγκατεστημένα $type';
  }

  @override
  String availableType(String type) {
    return 'Διαθέσιμα $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Δεν υπάρχουν εγκατεστημένες επεκτάσεις $type';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Δεν υπάρχουν διαθέσιμες επεκτάσεις $type';
  }

  @override
  String get nothingToShowYet => 'Δεν υπάρχει τίποτα να δείξουμε ακόμα';

  @override
  String get addTitlesHint =>
      'Πρόσθεσε μερικούς τίτλους στη λίστα σου και θα εμφανιστούν εδώ.';

  @override
  String get couldntLoad => 'Δεν φορτώθηκε';

  @override
  String get progressStyleHint =>
      'Η κάψουλα και η μπάρα μπαίνουν πάνω στην αφίσα· το εξωτερικό δείχνει τον ίδιο αριθμό ως απλό κείμενο — διάλεξε ένα.';

  @override
  String get nixManagedUpdate =>
      'Αυτή η έκδοση διαχειρίζεται από το Nix — τρέξε \"nix flake update\" στο flake σου και κάνε νέο build αντί να ενημερώνεις από εδώ';

  @override
  String autoUpdateFailed(String error) {
    return 'Η αυτόματη ενημέρωση απέτυχε ($error) — ανοίγει η σελίδα λήψης';
  }

  @override
  String get unknownPreference => 'Άγνωστη προτίμηση';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Μη υποστηριζόμενος τύπος προτίμησης $type';
  }

  @override
  String get notYetReleased => 'Δεν έχει κυκλοφορήσει ακόμα';

  @override
  String get notStarted => 'Δεν έχει ξεκινήσει';

  @override
  String get country => 'Χώρα';

  @override
  String get sort => 'Ταξινόμηση';

  @override
  String get chooseBackupDialog => 'Επίλεξε αντίγραφο Aniyomi, Mihon ή Kotatsu';

  @override
  String get importListsHint =>
      'Φέρε μια βιβλιοθήκη από Aniyomi, Mihon / Tachiyomi ή Kotatsu. Οι τίτλοι, τα εξώφυλλα, η πρόοδος και οι κατηγορίες διατηρούνται.';

  @override
  String get chooseBackupFile => 'Επιλογή αρχείου αντιγράφου';

  @override
  String importAnimeCount(int count) {
    return 'Εισαγωγή $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Εισαγωγή $count manga';
  }

  @override
  String get mergeWithExisting => 'Συγχώνευση με τις υπάρχουσες λίστες';

  @override
  String get mergeWithExistingDesc =>
      'Κρατά ό,τι έχεις ήδη· αν είναι κλειστό, αντικαθιστά τους τίτλους που ταιριάζουν';

  @override
  String get chooseAnother => 'Επιλογή άλλου';

  @override
  String get import => 'Εισαγωγή';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Διάλεξε πού θα αποθηκευτεί το αντίγραφο';

  @override
  String savedPath(String path) {
    return 'Αποθηκεύτηκε $path';
  }

  @override
  String exportFailed(String error) {
    return 'Η εξαγωγή απέτυχε: $error';
  }

  @override
  String get nothingInLocalLists =>
      'Δεν υπάρχει τίποτα στις τοπικές λίστες σου ακόμα.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Εξάγει $anime anime και $manga manga από τις τοπικές λίστες σου. Το Kotatsu υποστηρίζει μόνο manga.';
  }

  @override
  String get saveToFolder => 'Αποθήκευση στον φάκελο';

  @override
  String get formatAnimeManga => 'Anime και manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Μόνο manga · .tachibk';

  @override
  String get formatMangaZip => 'Μόνο manga · .zip';

  @override
  String get genres => 'Είδη';

  @override
  String get relations => 'Σχετικά';

  @override
  String get recommendations => 'Προτάσεις';

  @override
  String get openings => 'Openings';

  @override
  String get endings => 'Endings';

  @override
  String get background => 'Υπόβαθρο';

  @override
  String get links => 'Σύνδεσμοι';

  @override
  String get rank => 'Κατάταξη';

  @override
  String get members => 'Μέλη';

  @override
  String get favorites => 'Αγαπημένα';

  @override
  String get episodes => 'Επεισόδια';

  @override
  String get chapters => 'Κεφάλαια';

  @override
  String get volumes => 'Τόμοι';

  @override
  String get format => 'Μορφή';

  @override
  String get source => 'Πηγή';

  @override
  String get duration => 'Διάρκεια';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes λ. ανά επεισόδιο';
  }

  @override
  String get rating => 'Διαβάθμιση';

  @override
  String get studio => 'Στούντιο';

  @override
  String get serialization => 'Σειριακή δημοσίευση';

  @override
  String get season => 'Σεζόν';

  @override
  String get broadcast => 'Μετάδοση';

  @override
  String get aired => 'Προβλήθηκε';

  @override
  String get published => 'Δημοσιεύτηκε';

  @override
  String get popularity => 'Δημοφιλία';

  @override
  String get community => 'Κοινότητα';

  @override
  String get watching => 'Παρακολουθώ';

  @override
  String get reading => 'Διαβάζω';

  @override
  String get dropped => 'Εγκαταλείφθηκε';

  @override
  String get planned => 'Σχεδιασμένο';

  @override
  String get trailers => 'Trailers';

  @override
  String get ratings => 'Βαθμολογίες';

  @override
  String get originalTitle => 'Πρωτότυπο';

  @override
  String get titleLabel => 'Τίτλος';

  @override
  String get votes => 'Ψήφοι';

  @override
  String get watchedStat => 'Το είδα';

  @override
  String get runtime => 'Διάρκεια';

  @override
  String get director => 'Σκηνοθέτης';

  @override
  String get network => 'Δίκτυο';

  @override
  String get certification => 'Πιστοποίηση';

  @override
  String get airs => 'Προβάλλεται';

  @override
  String get budget => 'Προϋπολογισμός';

  @override
  String get revenue => 'Έσοδα';

  @override
  String get released => 'Κυκλοφόρησε';

  @override
  String get tags => 'Tags';

  @override
  String get author => 'Συγγραφέας';

  @override
  String get born => 'Γεννήθηκε';

  @override
  String get website => 'Ιστότοπος';

  @override
  String get established => 'Ιδρύθηκε';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novels';

  @override
  String get thisMonth => 'Αυτόν τον μήνα';

  @override
  String get movies => 'Ταινίες';

  @override
  String get shows => 'Σειρές';

  @override
  String get rewatching => 'Το ξαναβλέπω';

  @override
  String get rereading => 'Το ξαναδιαβάζω';

  @override
  String get watchedStatus => 'Το είδα';

  @override
  String get planning => 'Σχεδιάζω';

  @override
  String get paused => 'Σε παύση';

  @override
  String get watch => 'Παρακολούθηση';

  @override
  String get read => 'Ανάγνωση';

  @override
  String get finished => 'Ολοκληρώθηκε';

  @override
  String get releasing => 'Σε προβολή';

  @override
  String get cancelled => 'Ακυρώθηκε';

  @override
  String get hiatus => 'Διακοπή';

  @override
  String get remove => 'Αφαίρεση';

  @override
  String syncToService(String service) {
    return 'Συγχρονισμός με $service';
  }

  @override
  String syncedToService(String service) {
    return 'Συγχρονίστηκε με $service';
  }

  @override
  String get latestReleases => 'Τελευταίες κυκλοφορίες';

  @override
  String get topRated => 'Κορυφαία βαθμολογία';

  @override
  String localSection(String title) {
    return '$title · Τοπικό';
  }

  @override
  String get localEntryNote =>
      'Αυτός ο τίτλος υπάρχει μόνο στην τοπική λίστα αυτής της συσκευής. Η επεξεργασία είναι απενεργοποιημένη εδώ γιατί μπορεί να συγκρουστεί με τη λίστα του λογαριασμού σου· μπορείς πάντως να τον αφαιρέσεις.';

  @override
  String get cardPresetPoster => 'Αφίσα';

  @override
  String get cardPresetCard => 'Κάρτα';

  @override
  String get cardPresetCozy => 'Άνετο';

  @override
  String get sortTopRated => 'Κορυφαία βαθμολογία';

  @override
  String get sortMostPopular => 'Πιο δημοφιλή';

  @override
  String get sortTrending => 'Τάσεις';

  @override
  String get sortNewest => 'Νεότερα';

  @override
  String get sortAz => 'Α–Ω';

  @override
  String get sortMostFavourited => 'Πιο αγαπημένα';

  @override
  String get anyCountry => 'Οποιαδήποτε χώρα';

  @override
  String get orderScore => 'Βαθμολογία';

  @override
  String get orderTitle => 'Τίτλος';

  @override
  String get orderLastUpdated => 'Τελευταία ενημέρωση';

  @override
  String get orderLastAdded => 'Τελευταία προσθήκη';

  @override
  String get never => 'Ποτέ';

  @override
  String get always => 'Πάντα';

  @override
  String get scorePoint100 => '100 βαθμοί';

  @override
  String get scorePoint10Decimal => '10 βαθμοί με δεκαδικό';

  @override
  String get scorePoint10 => '10 βαθμοί';

  @override
  String get scorePoint5 => '5 αστέρια';

  @override
  String get scorePoint3 => '3 φατσούλες';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ώρες',
      one: '1 ώρα',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ημέρες',
      one: '1 ημέρα',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count εβδομάδες',
      one: '1 εβδομάδα',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Συνέχεια';

  @override
  String get resumeSourceMissing =>
      'Εγκατάστησε την πηγή αυτού του τίτλου για να συνεχίσεις';

  @override
  String get resumeRemove => 'Αφαίρεση από τη συνέχεια';

  @override
  String resumeAt(String time) {
    return 'απομένουν $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Σελίδα $page από $total';
  }

  @override
  String get continueWatching => 'Συνέχισε να βλέπεις';

  @override
  String get continueReading => 'Συνέχισε να διαβάζεις';

  @override
  String get favouriteAnimeSection => 'Αγαπημένα anime';

  @override
  String get favouriteMangaSection => 'Αγαπημένα manga';

  @override
  String get plannedAnime => 'Anime που σχεδιάζεις';

  @override
  String get plannedManga => 'Manga που σχεδιάζεις';

  @override
  String get completedAnime => 'Ολοκληρωμένα anime';

  @override
  String get completedManga => 'Ολοκληρωμένα manga';

  @override
  String get hiddenMedia => 'Κρυμμένα μέσα';

  @override
  String get recentUpdates => 'Πρόσφατες ενημερώσεις';

  @override
  String get trendingNow => 'Τάσεις τώρα';

  @override
  String get popularThisSeason => 'Δημοφιλή αυτή τη σεζόν';

  @override
  String get trendingMovies => 'Ταινίες σε τάση';

  @override
  String get topRatedSeries => 'Σειρές με κορυφαία βαθμολογία';

  @override
  String get mostFavouriteSeries => 'Πιο αγαπημένες σειρές';

  @override
  String get popularAnime => 'Δημοφιλή anime';

  @override
  String get trendingManhwa => 'Manhwa σε τάση';

  @override
  String get trendingNovels => 'Novels σε τάση';

  @override
  String get topRatedManga => 'Manga με κορυφαία βαθμολογία';

  @override
  String get mostFavouriteManga => 'Πιο αγαπημένα manga';

  @override
  String get popularManga => 'Δημοφιλή manga';

  @override
  String get topMovies => 'Κορυφαίες ταινίες';

  @override
  String get topOna => 'Κορυφαία ONA';

  @override
  String get topOva => 'Κορυφαία OVA';

  @override
  String get mostPopular => 'Πιο δημοφιλή';

  @override
  String get mostFavourite => 'Πιο αγαπημένα';

  @override
  String get upcoming => 'Προσεχώς';

  @override
  String get topManga => 'Κορυφαία manga';

  @override
  String get topManhwa => 'Κορυφαία manhwa';

  @override
  String get topManhua => 'Κορυφαία manhua';

  @override
  String get topNovels => 'Κορυφαία novels';

  @override
  String get topOneShots => 'Κορυφαία one-shots';

  @override
  String get trendingMoviesToday => 'Ταινίες σε τάση σήμερα';

  @override
  String get trendingShowsToday => 'Σειρές σε τάση σήμερα';

  @override
  String get trendingMoviesWeek => 'Ταινίες σε τάση αυτή την εβδομάδα';

  @override
  String get trendingShowsWeek => 'Σειρές σε τάση αυτή την εβδομάδα';

  @override
  String get mostWatchedMoviesMonth =>
      'Οι πιο πολυπαρακολουθημένες ταινίες του μήνα';

  @override
  String get mostWatchedShowsMonth =>
      'Οι πιο πολυπαρακολουθημένες σειρές του μήνα';

  @override
  String get trendingThisWeek => 'Τάσεις αυτής της εβδομάδας';

  @override
  String get mostWatchedThisMonth => 'Τα πιο πολυπαρακολουθημένα του μήνα';

  @override
  String get repoLinksAdded => 'Οι σύνδεσμοι αποθετηρίου προστέθηκαν!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'Σφάλμα λήψης δεδομένων από το AniList.';

  @override
  String get navInfo => 'ΠΛΗΡΟΦΟΡΙΕΣ';

  @override
  String get navComments => 'ΣΧΟΛΙΑ';

  @override
  String get playerNotAvailable =>
      'Το πρόγραμμα αναπαραγωγής δεν είναι διαθέσιμο ακόμα';

  @override
  String deepLinkInitialError(String error) {
    return 'Σφάλμα λήψης του αρχικού deep link: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Σφάλμα ανοίγματος συνδέσμου: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Αυτός ο σύνδεσμος δεν ανοίγει: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Σφάλμα ανοίγματος συνδέσμου: $error';
  }

  @override
  String get forReleasingTitles => 'για τίτλους που προβάλλονται τώρα';

  @override
  String get progress => 'Πρόοδος';

  @override
  String get notes => 'Σημειώσεις';

  @override
  String serviceNotFound(String id) {
    return 'Η υπηρεσία \"$id\" δεν βρέθηκε';
  }

  @override
  String get glassEffectEnabled => 'Το εφέ γυαλιού ενεργοποιήθηκε';

  @override
  String get glassEffectDisabled => 'Το εφέ γυαλιού απενεργοποιήθηκε';

  @override
  String get materialYouEnabled => 'Το Material You ενεργοποιήθηκε';

  @override
  String get materialYouDisabled => 'Το Material You απενεργοποιήθηκε';

  @override
  String get darkModeEnabled => 'Η σκοτεινή λειτουργία ενεργοποιήθηκε';

  @override
  String get darkModeDisabled => 'Η σκοτεινή λειτουργία απενεργοποιήθηκε';

  @override
  String get animeList => 'Λίστα anime';

  @override
  String get mangaList => 'Λίστα manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Λίστα anime του/της $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Λίστα manga του/της $owner';
  }

  @override
  String get loadingList => 'Φόρτωση λίστας';

  @override
  String get earlier => 'Νωρίτερα';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'πριν από $count ημέρες',
      one: 'πριν από 1 ημέρα',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'πριν από $count ώρες',
      one: 'πριν από 1 ώρα',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'πριν από $count λεπτά',
      one: 'πριν από 1 λεπτό',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'πριν $count λ.';
  }

  @override
  String hoursAgoShort(int count) {
    return 'πριν $count ω.';
  }

  @override
  String daysAgoShort(int count) {
    return 'πριν $count ημ.';
  }

  @override
  String weeksAgoShort(int count) {
    return 'πριν $count εβδ.';
  }

  @override
  String get couldntLoadSource => 'Δεν φορτώθηκε αυτή η πηγή';

  @override
  String get followers => 'Ακόλουθοι';

  @override
  String couldntLoadTitle(String title) {
    return 'Δεν φορτώθηκε το $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Δεν φορτώθηκε αυτό το προφίλ';

  @override
  String get profile => 'Προφίλ';

  @override
  String get feed => 'Ροή';

  @override
  String get stats => 'Στατιστικά';

  @override
  String get received => 'Ληφθέντα';

  @override
  String get sent => 'Απεσταλμένα';

  @override
  String get global => 'Καθολικά';

  @override
  String get couldntLoadPage => 'Δεν φορτώθηκε αυτή η σελίδα';

  @override
  String get couldntLoadAllDetails => 'Δεν φορτώθηκαν όλες οι λεπτομέρειες';

  @override
  String get series => 'Σειρές';

  @override
  String get studios => 'Στούντιο';

  @override
  String get users => 'Χρήστες';

  @override
  String repositoriesTitle(String type) {
    return 'Αποθετήρια $type';
  }

  @override
  String get repositoryUrl => 'URL αποθετηρίου';

  @override
  String get downloadingRepository => 'Λήψη αποθετηρίου…';

  @override
  String get noRepositories => 'Δεν έχουν προστεθεί αποθετήρια';

  @override
  String repoExtensionsCount(String count) {
    return '$count επεκτάσεις';
  }

  @override
  String get searchExtensions => 'Αναζήτηση επεκτάσεων...';

  @override
  String deletePluginTitle(String name) {
    return 'Διαγραφή του $name;';
  }

  @override
  String get deletePluginMessage => 'Σίγουρα θες να διαγράψεις αυτό το plugin;';

  @override
  String pluginDeleted(String name) {
    return 'Το $name διαγράφηκε';
  }

  @override
  String pluginNotInRepo(String name) {
    return 'Το $name δεν είναι διαθέσιμο στο ρυθμισμένο αποθετήριο';
  }

  @override
  String get pluginFetchFailed => 'Αποτυχία λήψης πληροφοριών plugin';

  @override
  String installPluginTitle(String name) {
    return 'Εγκατάσταση $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Μέγεθος: $size';
  }

  @override
  String get installedState => 'Εγκατεστημένο';

  @override
  String get errorLabel => 'Σφάλμα:';

  @override
  String get stackTraceDetails => 'Λεπτομέρειες (Stack Trace)';

  @override
  String get shareLogFile => 'Κοινοποίηση αρχείου log';

  @override
  String get copyLogs => 'Αντιγραφή logs';

  @override
  String noListToEdit(String service) {
    return 'Το $service δεν έχει λίστα για επεξεργασία';
  }

  @override
  String get couldNotReadFile => 'Δεν διαβάστηκε αυτό το αρχείο';

  @override
  String importedSummary(int anime, int manga) {
    return 'Εισήχθησαν $anime anime και $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count υπήρχαν ήδη';
  }

  @override
  String get airingNow => 'Σε προβολή τώρα';

  @override
  String get topRatedMovies => 'Ταινίες με κορυφαία βαθμολογία';

  @override
  String get koreanDramas => 'Κορεάτικα ντράμα';

  @override
  String get chineseDramas => 'Κινεζικά ντράμα';

  @override
  String get japaneseDramas => 'Ιαπωνικά ντράμα';

  @override
  String get thaiDramas => 'Ταϊλανδέζικα ντράμα';

  @override
  String get turkishDramas => 'Τουρκικά ντράμα';

  @override
  String get miniSeries => 'Μίνι σειρές';

  @override
  String get topRatedShows => 'Σειρές με κορυφαία βαθμολογία';

  @override
  String get recommendedSection => 'Προτεινόμενα';

  @override
  String get syncRow => 'Συγχρονισμός λιστών';

  @override
  String get syncRowDesc =>
      'Αντέγραψε τη λίστα μιας υπηρεσίας στους άλλους λογαριασμούς σου';

  @override
  String get syncTitle => 'Συγχρονισμός';

  @override
  String get syncMainService => 'Κύρια υπηρεσία';

  @override
  String get syncMainServiceDesc =>
      'Η λίστα της είναι η πηγή αλήθειας· όλες οι άλλες συνδεδεμένες υπηρεσίες ενημερώνονται ώστε να ταιριάζουν';

  @override
  String get syncAuto => 'Αυτόματος συγχρονισμός';

  @override
  String get syncAutoDesc =>
      'Λήψη και συγχρονισμός στο παρασκήνιο όταν ανοίγει η εφαρμογή και κάθε 30 λεπτά';

  @override
  String get syncAddMissing => 'Προσθήκη εγγραφών που λείπουν';

  @override
  String get syncAddMissingDesc =>
      'Πρόσθεσε και εγγραφές που η άλλη υπηρεσία δεν έχει ακόμα';

  @override
  String get syncOnlyForward => 'Διατήρηση μεγαλύτερης προόδου';

  @override
  String get syncOnlyForwardDesc =>
      'Μην μειώνεις την πρόοδο υπηρεσίας που είναι ήδη μπροστά';

  @override
  String get syncFetch => 'Λήψη';

  @override
  String get syncFetchAgain => 'Νέα λήψη';

  @override
  String get syncAll => 'Συγχρονισμός όλων';

  @override
  String get syncStop => 'Διακοπή';

  @override
  String get syncResume => 'Συνέχεια';

  @override
  String get syncNothingToSync =>
      'Αυτή η υπηρεσία δεν μπορεί να συγχρονιστεί για αυτόν τον τύπο';

  @override
  String get syncNoTargets => 'Συνδέσου σε άλλη υπηρεσία για να συγχρονίσεις';

  @override
  String get syncLoadingMap => 'Φόρτωση αντιστοίχισης ID';

  @override
  String get syncComparing => 'Σύγκριση λιστών';

  @override
  String get syncIntro =>
      'Διάλεξε μια κύρια υπηρεσία και πάτα Λήψη. Κάθε υπηρεσία ερωτάται μία φορά για τη λίστα σου και μετά συγκρίνεται με την κύρια.';

  @override
  String get syncStateSynced => 'Συγχρονισμένο';

  @override
  String get syncStateOutdated => 'Μη συγχρονισμένο';

  @override
  String get syncStateMissing => 'Δεν είναι στη λίστα';

  @override
  String get syncStateUnmapped => 'Καμία αντιστοιχία';

  @override
  String syncPaused(String time) {
    return 'Αναμονή για το όριο αιτημάτων, συνεχίζει σε $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count μόνο στο $name, δεν θίγονται';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done από $total';
  }

  @override
  String get syncNothingHere => 'Δεν υπάρχει τίποτα να δείξουμε';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used από $max αιτήματα χρησιμοποιήθηκαν ανά $window';
  }

  @override
  String get syncMinute => 'λεπτό';

  @override
  String get syncDay => 'ημέρα';

  @override
  String get syncNotInList => 'Δεν είναι ακόμα στη λίστα';

  @override
  String get syncCleared => 'Το πλάνο καθαρίστηκε';

  @override
  String get syncClear => 'Καθαρισμός';

  @override
  String get syncOptions => 'Επιλογές';

  @override
  String get syncShared => 'Μοιράζεται την εγγραφή του με άλλο στοιχείο';

  @override
  String syncNotFound(String service) {
    return 'Δεν βρέθηκε στο $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Συγχρονισμός $service ($count)';
  }

  @override
  String get syncOnEdit => 'Άμεσος συγχρονισμός αλλαγών';

  @override
  String get syncOnEditDesc =>
      'Στείλε κάθε ενημέρωση προόδου και αλλαγή λίστας στις άλλες συνδεδεμένες υπηρεσίες αμέσως';

  @override
  String syncPushed(String services) {
    return 'Συγχρονίστηκε με $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Όριο αιτημάτων, δοκίμασε ξανά σε λίγο';

  @override
  String get syncAhead => 'Όποιο είναι μπροστά';

  @override
  String get syncAheadDesc =>
      'Αμφίδρομα: για κάθε τίτλο κερδίζει η εγγραφή που έχει προχωρήσει περισσότερο και αντιγράφεται σε όλες τις άλλες υπηρεσίες σου';

  @override
  String syncAheadFrom(String service) {
    return 'Από το $service';
  }

  @override
  String get syncConfirm => 'Έλεγχος πριν τον συγχρονισμό';

  @override
  String get syncConfirmDesc =>
      'Δείξε τι θα αλλάξει ο Συγχρονισμός όλων και πόσα αιτήματα χρειάζεται';

  @override
  String get syncPreviewTitle => 'Έτοιμο για συγχρονισμό';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates ενημερώσεις, $adds προς προσθήκη';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Περίπου $count αιτήματα';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count id χρειάζονται πρώτα αναζήτηση';
  }

  @override
  String get syncPreviewNothing => 'Δεν υπάρχει τίποτα προς αλλαγή';

  @override
  String get syncStart => 'Έναρξη';

  @override
  String get syncRetry => 'Επανάληψη';

  @override
  String get syncSkip => 'Παράλειψη αυτού του στοιχείου';

  @override
  String get syncInclude => 'Συμπερίληψη ξανά αυτού του στοιχείου';

  @override
  String get syncSkippedLabel => 'Παραλείφθηκε';

  @override
  String get syncChanges => 'Διαφορές';

  @override
  String get syncChangeStatus => 'Κατάσταση';

  @override
  String get syncChangeProgress => 'Πρόοδος';

  @override
  String get syncChangeScore => 'Βαθμολογία';

  @override
  String get syncChangeDates => 'Ημερομηνίες';

  @override
  String get syncChangeRepeat => 'Πλήθος επαναλήψεων';

  @override
  String get syncFailedReason => 'Γιατί απέτυχε';

  @override
  String get syncSkippedHint =>
      'Τα στοιχεία που παραλείπονται μένουν ανέγγιχτα, ακόμα και μετά από νέα λήψη';

  @override
  String get commentsRules => 'Κανόνες σχολίων';

  @override
  String get commentsRulesBody =>
      'ΠΑΡΑΒΙΑΣΗ ΚΑΝΟΝΑ = ΕΞΟΔΟΣ\n\n1. Όχι ρατσισμός, διακρίσεις ή ρητορική μίσους\n2. Όχι spam ή αυτοδιαφήμιση\n3. Απολύτως κανένα περιεχόμενο NSFW\n4. Μόνο αγγλικά, χωρίς εξαιρέσεις\n5. Όχι πλαστοπροσωπία, παρενόχληση ή κακοποίηση\n6. Όχι παράνομο περιεχόμενο ή ακραία έλλειψη σεβασμού προς οποιοδήποτε fandom\n7. Μη ζητάς και μη μοιράζεσαι αποθετήρια ή επεκτάσεις\n8. Spoilers μόνο με spoiler tags και προειδοποίηση\n9. Όχι σεξουαλικοποίηση ή ακατάλληλα σχόλια για ανήλικους χαρακτήρες\n10. Αν είναι λάθος, μην το δημοσιεύεις!';

  @override
  String get commentsRulesAccept => 'Κατάλαβα';

  @override
  String get commentsSortNewest => 'Νεότερα';

  @override
  String get commentsSortOldest => 'Παλαιότερα';

  @override
  String get commentsSortHighest => 'Υψηλότερη βαθμολογία';

  @override
  String get commentsSortLowest => 'Χαμηλότερη βαθμολογία';

  @override
  String commentsEpisodeShort(int number) {
    return 'Επ. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Κεφ. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Φιλτράρισμα ανά επεισόδιο';

  @override
  String get commentsFilterChapterTitle => 'Φιλτράρισμα ανά κεφάλαιο';

  @override
  String get commentsFilterTagTitle => 'Γράψε αριθμό επεισοδίου ή κεφαλαίου';

  @override
  String get commentsFilterHint => 'Αριθμός';

  @override
  String get commentsFilterApply => 'Φίλτρο';

  @override
  String get commentsFilterClear => 'Εμφάνιση όλων';

  @override
  String get commentsPlaceholder => 'Πρόσθεσε ένα σχόλιο…';

  @override
  String commentsReplyingTo(String name) {
    return 'Απάντηση στον/στην $name';
  }

  @override
  String get commentsSend => 'Αποστολή';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (προαιρετικό)';
  }

  @override
  String get commentsTagEpisode => 'επεισόδιο';

  @override
  String get commentsTagChapter => 'κεφάλαιο';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Αριθμός ($label)';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Το tag δεν μπορεί να ξεπερνά το σύνολο ($total)';
  }

  @override
  String get commentsNoTag => 'Χωρίς tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Αναζήτηση GIF';

  @override
  String get commentsGifEmpty => 'Δεν βρέθηκαν GIF';

  @override
  String get commentsEmptyText => 'Το σχόλιο δεν μπορεί να είναι κενό';

  @override
  String get commentsBannedYou => 'Έχεις αποκλειστεί από τα σχόλια';

  @override
  String get commentsEdited => 'Το σχόλιο επεξεργάστηκε';

  @override
  String get commentsDeleted => 'Το σχόλιο διαγράφηκε';

  @override
  String get commentsDeletedPlaceholder => '[διαγράφηκε]';

  @override
  String get commentsReported => 'Το σχόλιο αναφέρθηκε';

  @override
  String get commentsUserBanned => 'Ο χρήστης αποκλείστηκε';

  @override
  String get commentsReport => 'Αναφορά';

  @override
  String get commentsReportAsk =>
      'Να αναφερθεί αυτό το σχόλιο στους συντονιστές;';

  @override
  String get commentsDelete => 'Διαγραφή';

  @override
  String get commentsDeleteAsk => 'Αυτό το σχόλιο θα αφαιρεθεί για όλους.';

  @override
  String get commentsBan => 'Αποκλεισμός';

  @override
  String get commentsBanAsk => 'Να αποκλειστεί αυτός ο χρήστης από τα σχόλια;';

  @override
  String get commentsCopy => 'Αντιγραφή';

  @override
  String get commentsViewReply => 'Προβολή 1 απάντησης';

  @override
  String commentsViewReplies(int count) {
    return 'Προβολή $count απαντήσεων';
  }

  @override
  String get commentsHideReplies => 'Απόκρυψη απαντήσεων';

  @override
  String get commentsLoadMore => 'Φόρτωση περισσότερων σχολίων';

  @override
  String get commentsEmpty => 'Κανένα σχόλιο ακόμα. Γίνε ο πρώτος!';

  @override
  String get commentsEmptyFiltered => 'Κανένα σχόλιο για αυτό το φίλτρο';

  @override
  String get commentsSignIn =>
      'Συνδέσου στο AniList για να διαβάσεις και να γράψεις σχόλια';

  @override
  String get commentsSignInMessage =>
      'Τα σχόλια μοιράζονται σε όλες τις υπηρεσίες και χρησιμοποιούν τον λογαριασμό σου στο AniList.';

  @override
  String get commentsUnavailable =>
      'Τα σχόλια δεν είναι διαθέσιμα για αυτόν τον τίτλο';

  @override
  String get commentsUnavailableMessage =>
      'Δεν αντιστοιχίστηκε με εγγραφή του AniList.';

  @override
  String get commentsDisabled => 'Τα σχόλια είναι απενεργοποιημένα';

  @override
  String get commentsDisabledMessage =>
      'Μπορείς να τα ενεργοποιήσεις ξανά στις Ρυθμίσεις › Γενικά.';

  @override
  String get commentsOffline => 'Δεν φορτώθηκαν τα σχόλια';

  @override
  String get commentsSingleTitle => 'Εμφανίζεται ένα σχόλιο';

  @override
  String get commentsShowAll => 'Εμφάνιση όλων των σχολίων';

  @override
  String get commentsSettingsHeader => 'Σχόλια';

  @override
  String get commentsSettingEnabled => 'Σχόλια';

  @override
  String get commentsSettingEnabledDesc =>
      'Εμφάνιση της καρτέλας Σχόλια στους τίτλους και σύνδεση στον διακομιστή σχολίων με τον λογαριασμό σου στο AniList';

  @override
  String get commentsSettingAlerts => 'Ειδοποιήσεις απαντήσεων';

  @override
  String get commentsSettingAlertsDesc =>
      'Ειδοποίησέ με όταν κάποιος απαντά στα σχόλιά μου';

  @override
  String get commentsNoticeReplyTitle => 'Νέα απάντηση σε σχόλιο';

  @override
  String commentsNoticeReply(String name) {
    return 'Ο/Η $name απάντησε στο σχόλιό σου';
  }

  @override
  String get commentsNoticeWarningTitle => 'Έλαβες προειδοποίηση';

  @override
  String get commentsNoticeWarning =>
      'Να είσαι πιο προσεκτικός με τα σχόλιά σου';

  @override
  String get commentsNoticeUpdateTitle => 'Ενημέρωση από το Dantotsu';

  @override
  String get barcodeTitle => 'Σάρωση barcode';

  @override
  String get barcodeTooltip => 'Βρες ένα manga ή novel από το barcode του';

  @override
  String get barcodeIntro =>
      'Στόχευσε την κάμερα στο barcode στο πίσω μέρος ενός τόμου ή γράψε το ISBN.';

  @override
  String get barcodeIntroManual =>
      'Γράψε το ISBN που είναι τυπωμένο πάνω από το barcode στο πίσω μέρος ενός τόμου.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Αυτό δεν είναι έγκυρο ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'Δεν βρέθηκε βιβλίο για το $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Η κάμερα δεν είναι διαθέσιμη. Επίτρεψε την πρόσβαση στην κάμερα ή γράψε το ISBN.';

  @override
  String get themesTitle => 'Openings & endings';

  @override
  String get themesPlayVideo => 'Αναπαραγωγή βίντεο';

  @override
  String get themesPlayAudio => 'Αναπαραγωγή μόνο ήχου';

  @override
  String get themesOpenSite => 'Άνοιγμα στο AnimeThemes';

  @override
  String get themesCredit => 'Θέματα από το AnimeThemes';

  @override
  String get themesVersions => 'Εκδόσεις';

  @override
  String get sauceTitle => 'Βρες την πηγή';

  @override
  String get sauceIntro =>
      'Ανέβασε μια σελίδα manga ή ένα έργο τέχνης, ή επικόλλησε τον σύνδεσμό του, για να βρεις από πού προέρχεται.';

  @override
  String get sauceKeyTitle => 'Κλειδί API SauceNAO';

  @override
  String get sauceKeyHint =>
      'Προαιρετικό, αυξάνει το ημερήσιο όριο αναζητήσεων';

  @override
  String get sauceKeyDesc => 'Πάρε δωρεάν κλειδί στο saucenao.com/user.php';

  @override
  String get sauceOpen => 'Άνοιγμα πηγής';

  @override
  String get sauceCredit => 'Αναζήτηση εικόνας από το SauceNAO';

  @override
  String get sauceEmpty => 'Δεν βρέθηκε αντιστοιχία';

  @override
  String get sauceTooltip =>
      'Βρες την πηγή μιας σελίδας manga ή ενός έργου τέχνης';

  @override
  String get trendzTitle => 'Charts anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Γυναικείοι χαρακτήρες';

  @override
  String get trendzMale => 'Ανδρικοί χαρακτήρες';

  @override
  String get trendzCouple => 'Ζευγάρια';

  @override
  String get trendzCredit => 'Εβδομαδιαία charts από το AniTrendz';

  @override
  String get trendzNew => 'ΝΕΟ';

  @override
  String get trendzEmpty => 'Το chart είναι άδειο';

  @override
  String get shareCard => 'Κοινοποίηση κάρτας';

  @override
  String get shareCardList => 'Κοινοποίηση κάρτας λίστας';

  @override
  String get shareCardSaved => 'Η κάρτα αποθηκεύτηκε';

  @override
  String get shareCardFailed => 'Δεν δημιουργήθηκε η κάρτα';

  @override
  String get shareCardListEmpty =>
      'Η λίστα σου δεν έχει ακόμα κάτι για κοινοποίηση';

  @override
  String get shareCardTop => 'Οι αγαπημένες μου επιλογές';

  @override
  String themesEpisodes(String eps) {
    return 'Επεισόδια $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% αντιστοιχία';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Εβδομάδα $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count ψήφοι';
  }

  @override
  String trendzPeak(String rank) {
    return 'Κορυφή #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count εβδομάδες στο top ten';
  }

  @override
  String get imageSearchTitle => 'Αναζήτηση με εικόνα';

  @override
  String get imageSearchTooltip => 'Βρες ένα anime από στιγμιότυπο';

  @override
  String get imageSearchIntro =>
      'Διάλεξε ένα στιγμιότυπο ή επικόλλησε σύνδεσμο εικόνας και το trace.moe θα βρει το επεισόδιο και τη στιγμή από την οποία προέρχεται.';

  @override
  String get imageSearchPick => 'Επιλογή εικόνας';

  @override
  String get imageSearchLinkHint => 'Επικόλληση συνδέσμου εικόνας';

  @override
  String get imageSearchGo => 'Αναζήτηση';

  @override
  String get imageSearchEmpty => 'Δεν βρέθηκε αντιστοιχία';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Επεισόδιο $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'στο $time';
  }

  @override
  String get imageSearchPreview => 'Προεπισκόπηση κλιπ';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% αντιστοιχία';
  }

  @override
  String get imageSearchCredit => 'Με τη δύναμη του trace.moe';

  @override
  String get imageSearchOpenFailed => 'Δεν άνοιξε αυτός ο τίτλος';

  @override
  String get groups => 'Ομάδες';

  @override
  String get groupsYours => 'Οι ομάδες σου';

  @override
  String get groupsPopular => 'Δημοφιλείς';

  @override
  String get groupsNew => 'Νέες';

  @override
  String get groupsFeatured => 'Προτεινόμενες';

  @override
  String get groupsSearch => 'Αναζήτηση ομάδων';

  @override
  String get groupsAll => 'Όλες';

  @override
  String get groupsEmpty => 'Δεν βρέθηκαν ομάδες';

  @override
  String get groupsEmptyYours => 'Δεν έχεις μπει ακόμα σε καμία ομάδα';

  @override
  String get groupsSignIn => 'Συνδέσου για να δεις τις ομάδες που έχεις μπει';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count μέλη',
      one: '1 μέλος',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Συμμετοχή';

  @override
  String get groupsJoined => 'Μέλος';

  @override
  String get groupsLeave => 'Αποχώρηση από την ομάδα';

  @override
  String get groupsLeaveAsk =>
      'Δεν θα βλέπεις πια τις αναρτήσεις αυτής της ομάδας στη ροή σου.';

  @override
  String get groupsJoinFailed =>
      'Δεν έγινε η συμμετοχή στην ομάδα, ίσως είναι μόνο με πρόσκληση';

  @override
  String get groupsLeaveFailed => 'Δεν έγινε η αποχώρηση από την ομάδα';

  @override
  String get groupsPosts => 'Αναρτήσεις';

  @override
  String get groupsMembersTab => 'Μέλη';

  @override
  String get groupsAbout => 'Σχετικά';

  @override
  String get groupsRules => 'Κανόνες';

  @override
  String get groupsPrivacyOpen => 'Ανοιχτή';

  @override
  String get groupsPrivacyRestricted => 'Περιορισμένη';

  @override
  String get groupsPrivacyClosed => 'Κλειστή';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Δεν φορτώθηκε αυτή η ομάδα';

  @override
  String get groupsNewPost => 'Ανάρτηση στην ομάδα';

  @override
  String get groupsPostHint => 'Μοιράσου κάτι με την ομάδα';

  @override
  String get groupsOpenInBrowser => 'Άνοιγμα στο πρόγραμμα περιήγησης';

  @override
  String get groupsCategory => 'Κατηγορία';

  @override
  String get groupsLanguage => 'Γλώσσα';

  @override
  String get groupsCreated => 'Δημιουργήθηκε';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count υπεύθυνοι',
      one: '1 υπεύθυνος',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Απόρρητο';

  @override
  String get notificationsAll => 'Όλα';

  @override
  String get notificationsAiring => 'Σε προβολή';

  @override
  String get notificationsMedia => 'Νέοι τίτλοι';

  @override
  String get notificationsReplies => 'Απαντήσεις';

  @override
  String get notificationsMentions => 'Αναφορές';

  @override
  String get notificationsMessages => 'Μηνύματα';

  @override
  String get notificationsLikes => 'Likes';

  @override
  String get notificationsFollows => 'Ακολουθήσεις';

  @override
  String get notificationsNoServices =>
      'Καμία συνδεδεμένη υπηρεσία δεν έχει ειδοποιήσεις';

  @override
  String get notificationsNoServicesMessage =>
      'Συνδέσου σε μια υπηρεσία που στέλνει ειδοποιήσεις και θα εμφανίζονται εδώ.';

  @override
  String get notificationsEmptyKind => 'Τίποτα σε αυτή την κατηγορία ακόμα';

  @override
  String get notificationsCommentsEmpty => 'Καμία ειδοποίηση σχολίων';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Οι απαντήσεις στα σχόλιά σου και οι ανακοινώσεις του Dantotsu εμφανίζονται εδώ.';

  @override
  String get notificationsSettings => 'Ρυθμίσεις ειδοποιήσεων';

  @override
  String get notificationsPollTitle => 'Έλεγχος για νέες ειδοποιήσεις';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Κάθε $minutes λεπτά όσο είναι ανοιχτή η εφαρμογή';
  }

  @override
  String get notificationsNotifyAbout => 'Ειδοποίησέ με για';

  @override
  String get notificationsCommentsHeader => 'Ειδοποιήσεις σχολίων';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Εμφάνιση ειδοποίησης συστήματος για κάθε μη αναγνωσμένη ειδοποίηση του $service όσο τρέχει η εφαρμογή.';
  }

  @override
  String get notificationsTestSent => 'Η δοκιμαστική ειδοποίηση στάλθηκε';

  @override
  String get notificationsTestDenied =>
      'Οι ειδοποιήσεις δεν επιτρέπονται για το Dartotsu. Ενεργοποίησέ τες στις ρυθμίσεις συστήματος.';

  @override
  String get notificationsTestHint =>
      'Πάτα παρατεταμένα για δοκιμαστική ειδοποίηση';

  @override
  String get notificationsTestSample => 'Αυτή είναι μια δοκιμαστική ειδοποίηση';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return 'Ο/Η $name απάντησε στο σχόλιό σου στο $media';
  }

  @override
  String get imageSearchNotLink => 'Αυτό δεν μοιάζει με σύνδεσμο';

  @override
  String get imageSearchQuota => 'Το όριο αναζητήσεων ξεπεράστηκε';

  @override
  String get imageSearchBusy => 'Πολλά αιτήματα, δοκίμασε ξανά σε λίγο';

  @override
  String imageSearchFailed(int code) {
    return 'Η αναζήτηση απέτυχε ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count νέες ειδοποιήσεις';
  }

  @override
  String get reactionsTitle => 'Αντιδράσεις';

  @override
  String get reactionsNeedEntry =>
      'Πρόσθεσε αυτόν τον τίτλο στη λίστα σου πριν αντιδράσεις';

  @override
  String get reactionsAdd => 'Προσθήκη αντίδρασης';

  @override
  String get reactionsHint => 'Τι σου φάνηκε; (σύντομα και χωρίς spoilers)';

  @override
  String get reactionsPost => 'Δημοσίευση';

  @override
  String get reactionsFailed => 'Δεν ενημερώθηκε η αντίδραση';

  @override
  String get settingsWatch => 'Παρακολούθηση & ανάγνωση';

  @override
  String get settingsWatchDesc =>
      'Λίστες επεισοδίων, αντιστοίχιση πηγών και λεπτομέρειες επεισοδίων';

  @override
  String get watchSettingsLayout => 'Λίστα επεισοδίων';

  @override
  String get watchSettingsSources => 'Πηγές';

  @override
  String get watchSettingsMetadata => 'Λεπτομέρειες επεισοδίων';

  @override
  String get watchLayout => 'Διάταξη';

  @override
  String get watchListView => 'Λίστα';

  @override
  String get watchGridView => 'Πλέγμα';

  @override
  String get watchCompactView => 'Συμπαγές';

  @override
  String get watchDefaultLayoutDesc =>
      'Πώς εμφανίζονται τα επεισόδια και τα κεφάλαια μέχρι να το αλλάξεις για κάποιον τίτλο';

  @override
  String get watchChunkSize => 'Μέγεθος εύρους';

  @override
  String get watchChunkSizeDesc =>
      'Πόσα επεισόδια ή κεφάλαια χωράει κάθε καρτέλα εύρους';

  @override
  String get watchShowDescription => 'Εμφάνιση περιγραφών';

  @override
  String get watchShowDescriptionDesc =>
      'Εμφάνιση της σύνοψης επεισοδίου κάτω από κάθε τίτλο στη διάταξη λίστας';

  @override
  String get watchShowFiller => 'Εμφάνιση filler επεισοδίων';

  @override
  String get watchShowFillerDesc =>
      'Απενεργοποίησέ το για να κρύψεις τα επεισόδια που είναι filler';

  @override
  String get watchBlurUnwatched => 'Απόκρυψη μικρογραφιών με spoilers';

  @override
  String get watchBlurUnwatchedDesc =>
      'Θόλωμα της μικρογραφίας των επεισοδίων που δεν έχεις δει ακόμα';

  @override
  String get watchResumeShelf => 'Ράφι συνέχειας';

  @override
  String get watchResumeShelfDesc => 'Εμφάνιση της σειράς Συνέχεια στην Αρχική';

  @override
  String get watchMarkOnLongPress => 'Παρατεταμένο πάτημα για σήμανση προόδου';

  @override
  String get watchMarkOnLongPressDesc =>
      'Πάτα παρατεταμένα ένα επεισόδιο ή κεφάλαιο για να το σημειώσεις ως δει/μη δει';

  @override
  String get watchMatching => 'Αντιστοίχιση πηγών';

  @override
  String get watchMatchingDesc =>
      'Το «Πλησιέστερο» παίρνει το καλύτερο αποτέλεσμα αναζήτησης. Το «Μόνο ακριβές» δέχεται μόνο σχεδόν πανομοιότυπο τίτλο και αφήνει τα υπόλοιπα σε σένα.';

  @override
  String get watchMatchClosest => 'Πλησιέστερη αντιστοιχία';

  @override
  String get watchMatchExact => 'Μόνο ακριβής αντιστοιχία';

  @override
  String get watchMetadataDesc =>
      'Από πού έρχονται οι τίτλοι επεισοδίων, οι συνόψεις, οι μικρογραφίες, οι ημερομηνίες προβολής και οι σημάνσεις filler. Σύρε για να ορίσεις προτεραιότητα· κερδίζει η πρώτη πηγή με τιμή.';

  @override
  String get watchMetaAniZipDesc =>
      'Τίτλοι επεισοδίων, συνόψεις, στιγμιότυπα και ημερομηνίες προβολής';

  @override
  String get watchMetaKitsuDesc =>
      'Τίτλοι επεισοδίων, περιγραφές και μικρογραφίες';

  @override
  String get watchMetaSimklDesc =>
      'Τίτλοι επεισοδίων, περιγραφές, στιγμιότυπα και ημερομηνίες προβολής';

  @override
  String get watchMetaAniListDesc =>
      'Τίτλοι επεισοδίων streaming, μικρογραφίες και πρόγραμμα προβολής';

  @override
  String get watchMetaTenraiDesc =>
      'Τίτλοι επεισοδίων του MyAnimeList, ημερομηνίες προβολής, σημάνσεις filler και recap μέσω Tenrai';

  @override
  String get watchClearMetadata => 'Ανανέωση λεπτομερειών επεισοδίων';

  @override
  String get watchClearMetadataDesc =>
      'Διαγραφή των αποθηκευμένων λεπτομερειών επεισοδίων ώστε να ξαναφορτωθούν';

  @override
  String get watchMetadataCleared =>
      'Οι λεπτομέρειες επεισοδίων θα ξαναφορτωθούν';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count επεισόδια',
      one: '1 επεισόδιο',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count κεφάλαια',
      one: '1 κεφάλαιο',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Επεισόδιο $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Κεφάλαιο $number';
  }

  @override
  String get watchSearching => 'Αναζήτηση…';

  @override
  String watchSearchingFor(String term) {
    return 'Αναζήτηση: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Επιλέχθηκε: $title';
  }

  @override
  String watchFound(String title) {
    return 'Βρέθηκε: $title';
  }

  @override
  String get watchNothingFound => 'Δεν βρέθηκε τίποτα σε αυτή την πηγή';

  @override
  String get watchSearchFailed => 'Η αναζήτηση στην πηγή απέτυχε';

  @override
  String get watchLoadFailed => 'Δεν φορτώθηκε η λίστα';

  @override
  String get watchSignInToTrack =>
      'Συνδέσου για να παρακολουθείς την πρόοδό σου';

  @override
  String watchInstallSource(String action) {
    return 'Εγκατάστησε μια επέκταση για να ξεκινήσεις $action';
  }

  @override
  String get watchSourceMissing => 'Αυτή η πηγή δεν είναι εγκατεστημένη';

  @override
  String get watchWrongTitle => 'Λάθος τίτλος;';

  @override
  String get watchSearchAgain => 'Νέα αναζήτηση';

  @override
  String watchSearchSource(String source) {
    return 'Αναζήτηση στο $source';
  }

  @override
  String get watchSource => 'Πηγή';

  @override
  String get watchOptions => 'Επιλογές';

  @override
  String get watchReverse => 'Αντίστροφη σειρά';

  @override
  String get watchScanlators => 'Ομάδες';

  @override
  String get watchResetOptions => 'Επαναφορά αυτών των επιλογών';

  @override
  String get watchContinue => 'Συνέχεια';

  @override
  String get watchStart => 'Έναρξη';

  @override
  String get watchPlay => 'Αναπαραγωγή';

  @override
  String get watchRead => 'Ανάγνωση';

  @override
  String get watchMarkWatched => 'Σήμανση ως είδα';

  @override
  String get watchMarkUnwatched => 'Σήμανση ως μη είδα';

  @override
  String get watchMarkRead => 'Σήμανση ως διάβασα';

  @override
  String get watchMarkUnread => 'Σήμανση ως μη διάβασα';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Δεν βρέθηκαν επεισόδια';

  @override
  String get watchNoChapters => 'Δεν βρέθηκαν κεφάλαια';

  @override
  String get watchSourceTools => 'Εργαλεία πηγής';

  @override
  String get watchSourceSettings => 'Ρυθμίσεις πηγής';

  @override
  String get watchOpenWebView => 'Άνοιγμα σε web view';

  @override
  String get watchOpenWebViewDesc =>
      'Λύσε έναν έλεγχο Cloudflare ή συνδέσου· τα cookies μοιράζονται με τα αιτήματα της πηγής';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies αποθηκευμένα για το $host',
      one: '1 cookie αποθηκευμένο για το $host',
      zero: 'Δεν υπάρχουν αποθηκευμένα cookies για το $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Ενεργή έγκριση Cloudflare, $time';
  }

  @override
  String get watchClearanceMissing => 'Δεν υπάρχει cookie έγκρισης Cloudflare';

  @override
  String get watchClearanceSession => 'διαρκεί μέχρι να κλείσει η εφαρμογή';

  @override
  String get watchAgentShared =>
      'Τα αιτήματα χρησιμοποιούν το user agent του web view, το οποίο ελέγχει το Cloudflare';

  @override
  String get watchAgentCustom =>
      'Έχει οριστεί προσαρμοσμένο user agent, οπότε η έγκριση Cloudflare από το web view μπορεί να απορριφθεί';

  @override
  String get watchTestConnection => 'Δοκιμή σύνδεσης';

  @override
  String get watchSolveChallenge => 'Λύση';

  @override
  String watchProbeOk(int code) {
    return 'Προσβάσιμο (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Το Cloudflare ζητά ακόμα έλεγχο';

  @override
  String watchProbeBlocked(int code) {
    return 'Αποκλείστηκε από τον ιστότοπο (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Ο ιστότοπος δεν ήταν προσβάσιμος';

  @override
  String get watchClearCookies => 'Εκκαθάριση cookies για αυτόν τον ιστότοπο';

  @override
  String get watchCookiesCleared => 'Τα cookies καθαρίστηκαν';

  @override
  String get watchMetaSource => 'Λεπτομέρειες επεισοδίων από';

  @override
  String get watchMetaAuto => 'Αυτόματα';

  @override
  String get watchMetaOff => 'Ανενεργό';

  @override
  String get playerSettingsTitle => 'Ρυθμίσεις προγράμματος αναπαραγωγής';

  @override
  String get playerSectionPlayback => 'Αναπαραγωγή';

  @override
  String get playerSectionSkip => 'Παράλειψη';

  @override
  String get playerSectionGestures => 'Χειριστήρια';

  @override
  String get playerSectionSubtitles => 'Υπότιτλοι';

  @override
  String get playerSectionShaders => 'Shaders';

  @override
  String get playerSectionEngine => 'Μηχανή';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Ταχύτητα αναπαραγωγής';

  @override
  String get playerCursedSpeed => 'Επιπλέον ταχύτητες';

  @override
  String get playerCursedSpeedDesc => 'Προσθήκη ταχυτήτων έως 10x στη λίστα';

  @override
  String get playerResize => 'Λειτουργία αλλαγής μεγέθους';

  @override
  String get playerFitFit => 'Προσαρμογή';

  @override
  String get playerFitCover => 'Κάλυψη';

  @override
  String get playerFitStretch => 'Έκταση';

  @override
  String get playerSkipDuration => 'Διάρκεια κουμπιού παράλειψης';

  @override
  String get playerSkipDurationDesc =>
      'Δευτερόλεπτα που πηδά το κουμπί παράλειψης εκτός openings και endings';

  @override
  String get playerSeekDuration => 'Διπλό πάτημα για μετακίνηση';

  @override
  String get playerSeekDurationDesc =>
      'Δευτερόλεπτα μετακίνησης με διπλό πάτημα ή πλήκτρο βέλους';

  @override
  String get playerAutoPlay => 'Αυτόματη αναπαραγωγή επόμενου';

  @override
  String get playerAutoPlayDesc =>
      'Έναρξη του επόμενου επεισοδίου όταν τελειώσει αυτό';

  @override
  String get playerResume => 'Συνέχεια από εκεί που έμεινες';

  @override
  String get playerResumeDesc =>
      'Συνέχιση ενός επεισοδίου από την τελευταία θέση';

  @override
  String get playerOrientation => 'Προσανατολισμός';

  @override
  String get playerOrientationAuto => 'Ακολουθεί τη συσκευή';

  @override
  String get playerOrientationLandscape => 'Οριζόντια';

  @override
  String get playerOrientationPortrait => 'Κάθετα';

  @override
  String get playerAutoSkipOpening => 'Παράλειψη openings';

  @override
  String get playerAutoSkipEnding => 'Παράλειψη endings';

  @override
  String get playerAutoSkipRecap => 'Παράλειψη recaps';

  @override
  String get playerAutoSkipDesc =>
      'Παράλειψη μόλις ξεκινήσει, με χρήση του AniSkip και των χρονοσημάνσεων του stream';

  @override
  String get playerSkipOnce => 'Παράλειψη μόνο μία φορά';

  @override
  String get playerSkipOnceDesc =>
      'Μην παραλείπεις ξανά το ίδιο κομμάτι αν γυρίσεις πίσω σε αυτό';

  @override
  String get playerAdjustBrightness => 'Χειρονομία φωτεινότητας';

  @override
  String get playerAdjustBrightnessDesc =>
      'Σύρε πάνω και κάτω στο δεξί μισό της οθόνης';

  @override
  String get playerAdjustVolume => 'Χειρονομία έντασης';

  @override
  String get playerAdjustVolumeDesc =>
      'Σύρε πάνω και κάτω στο αριστερό μισό της οθόνης';

  @override
  String get playerHoldToSpeed => 'Κράτα για επιτάχυνση';

  @override
  String get playerHoldToSpeedDesc =>
      'Κράτα πατημένο το βίντεο για πιο γρήγορη αναπαραγωγή, σύρε στο πλάι για να αλλάξεις ταχύτητα';

  @override
  String get playerThumbless => 'Παχύτερη μπάρα αναζήτησης';

  @override
  String get playerThumblessDesc => 'Παχιά μπάρα χωρίς δείκτη';

  @override
  String get playerShowSubtitles => 'Εμφάνιση υποτίτλων';

  @override
  String get playerShowSubtitlesDesc =>
      'Απενεργοποίησέ το για να κρύψεις όλα τα κομμάτια υποτίτλων';

  @override
  String get playerSubtitleLanguage => 'Προτιμώμενη γλώσσα υποτίτλων';

  @override
  String get playerSubtitleSize => 'Μέγεθος υποτίτλων';

  @override
  String get playerSubtitleWeight => 'Πάχος υποτίτλων';

  @override
  String get playerSubtitleBottom => 'Κάτω περιθώριο υποτίτλων';

  @override
  String get playerSubtitleFont => 'Γραμματοσειρά υποτίτλων';

  @override
  String get playerSubtitleColor => 'Χρώμα υποτίτλων';

  @override
  String get playerSubtitleBackground => 'Φόντο υποτίτλων';

  @override
  String get playerSubtitleOutline => 'Περίγραμμα υποτίτλων';

  @override
  String get playerLibass => 'Χρήση libass';

  @override
  String get playerLibassDesc =>
      'Απόδοση υποτίτλων .ass με στυλ. Το μέγεθος, το χρώμα και η γραμματοσειρά παραπάνω δεν ισχύουν τότε';

  @override
  String get playerShaders => 'Shaders';

  @override
  String get playerShadersEnable => 'Ενεργοποίηση shaders';

  @override
  String get playerShadersEnableDesc =>
      'Μεγέθυνση και καθαρισμός της εικόνας με GLSL shaders όπως το Anime4K';

  @override
  String get playerShadersOff => 'Shaders ανενεργά';

  @override
  String get playerShadersMissing => 'Το Anime4K δεν είναι εγκατεστημένο';

  @override
  String get playerShadersMissingDesc =>
      'Κατέβασε το πακέτο shaders Anime4K (περίπου 0,8 MB) για να χρησιμοποιήσεις τις ενσωματωμένες λειτουργίες.';

  @override
  String get playerShadersDownload => 'Λήψη Anime4K';

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
  String get playerShadersPreview => 'Προεπισκόπηση σε αυτό το καρέ';

  @override
  String get playerShadersUse => 'Χρήση αυτού';

  @override
  String get playerPicture => 'Εικόνα';

  @override
  String get playerColors => 'Χρώματα';

  @override
  String get playerColorDefault => 'Προεπιλογή';

  @override
  String get playerColorVivid => 'Ζωντανό';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Απαλό';

  @override
  String get playerColorCinematic => 'Κινηματογραφικό';

  @override
  String get playerColorBright => 'Φωτεινό';

  @override
  String get playerColorNight => 'Νύχτα';

  @override
  String get playerColorMono => 'Μονόχρωμο';

  @override
  String get playerColorCustom => 'Προσαρμοσμένο';

  @override
  String get playerColorBrightness => 'Φωτεινότητα';

  @override
  String get playerColorContrast => 'Αντίθεση';

  @override
  String get playerColorSaturation => 'Κορεσμός';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Απόχρωση';

  @override
  String get playerColorReset => 'Επαναφορά';

  @override
  String get playerColorAdjust => 'Προσαρμογή';

  @override
  String get playerShadersOriginal => 'Πρωτότυπο';

  @override
  String get playerShadersPreviewFailed => 'Δεν πάρθηκε καρέ για προεπισκόπηση';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Τα shaders σου';

  @override
  String get playerShadersCustom => 'Προσαρμοσμένα shaders';

  @override
  String get playerShadersImport => 'Εισαγωγή .glsl';

  @override
  String get playerShadersNone =>
      'Εισήγαγε τα δικά σου αρχεία .glsl ή .hook και τσέκαρέ τα για να τα αλυσοδέσεις';

  @override
  String get playerShadersBadFile => 'Επίλεξε αρχείο shader .glsl ή .hook';

  @override
  String get playerDecoder => 'Αποκωδικοποιητής';

  @override
  String get playerDecoderAuto => 'Αυτόματο';

  @override
  String get playerDecoderAutoSafe => 'Αυτόματο (ασφαλές)';

  @override
  String get playerDecoderSoftware => 'Λογισμικό';

  @override
  String get playerDecoderHardware => 'Υλικό';

  @override
  String get playerDecoderHardwarePlus => 'Υλικό+';

  @override
  String get playerVideoOutput => 'Έξοδος βίντεο';

  @override
  String get playerAudioChannels => 'Κανάλια ήχου';

  @override
  String get playerBuffer => 'Μέγεθος buffer (MB)';

  @override
  String get playerBufferDesc =>
      'Μνήμη που μπορεί να χρησιμοποιήσει το πρόγραμμα για buffering ενός stream';

  @override
  String get playerUseMpvConf => 'Χρήση mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Εφαρμογή των επιλογών του mpv.conf όταν ξεκινά η αναπαραγωγή';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Επεξεργασία της ρύθμισης mpv';

  @override
  String get playerMpvConfDesc =>
      'Μία επιλογή ανά γραμμή, όπως --hwdec=auto σε ένα κανονικό mpv.conf. Τα προφίλ σε [αγκύλες] αγνοούνται.';

  @override
  String get playerMpvConfSaved => 'Το mpv.conf αποθηκεύτηκε';

  @override
  String get playerUseScripts => 'Χρήση scripts mpv';

  @override
  String get playerUseScriptsDesc =>
      'Φόρτωση των plugins από τον φάκελο scripts. Χρειάζονται build libmpv με υποστήριξη Lua ή JavaScript';

  @override
  String get playerScripts => 'Scripts mpv';

  @override
  String get playerScriptsManage => 'Προσθήκη, αφαίρεση και εναλλαγή plugins';

  @override
  String get playerScriptsAdd => 'Προσθήκη script';

  @override
  String get playerScriptsDesc =>
      'Plugins Lua, JavaScript και native που μπαίνουν εδώ φορτώνονται όταν ξεκινά η αναπαραγωγή.';

  @override
  String get playerScriptsNone => 'Κανένα script ακόμα';

  @override
  String get playerScriptsBadFile => 'Επίλεξε αρχείο .lua, .js ή native plugin';

  @override
  String get playerTuning => 'Προηγμένη ρύθμιση βίντεο';

  @override
  String get playerTuningDesc =>
      'Παράκαμψη συγχρονισμού, caching, κλιμάκωσης και tone mapping. Λάθος τιμές μπορεί να χαλάσουν την αναπαραγωγή';

  @override
  String get playerVideoSync => 'Συγχρονισμός βίντεο';

  @override
  String get playerInterpolation => 'Παρεμβολή καρέ';

  @override
  String get playerInterpolationDesc =>
      'Ομαλή κίνηση, χρειάζεται συγχρονισμό display-resample';

  @override
  String get playerPitch => 'Διόρθωση τόνου';

  @override
  String get playerPitchDesc =>
      'Οι φωνές ακούγονται φυσικές σε άλλες ταχύτητες';

  @override
  String get playerCacheSeconds => 'Cache (δευτερόλεπτα)';

  @override
  String get playerReadahead => 'Προανάγνωση (δευτερόλεπτα)';

  @override
  String get playerThreads => 'Νήματα αποκωδικοποιητή';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc =>
      'Μείωση των χρωματικών ζωνών στις διαβαθμίσεις';

  @override
  String get playerDebandIterations => 'Επαναλήψεις deband';

  @override
  String get playerDebandThreshold => 'Κατώφλι deband';

  @override
  String get playerCorrectDownscaling => 'Σωστή σμίκρυνση';

  @override
  String get playerSigmoid => 'Μεγέθυνση sigmoid';

  @override
  String get playerScale => 'Upscaler';

  @override
  String get playerCscale => 'Chroma upscaler';

  @override
  String get playerDscale => 'Downscaler';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Στόχος κορυφής';

  @override
  String get playerOpenFiles => 'Άνοιγμα αρχείων βίντεο';

  @override
  String get playerOpenFilesDesc => 'Αναπαραγωγή αρχείων από αυτή τη συσκευή';

  @override
  String get playerOpenFolder => 'Άνοιγμα φακέλου';

  @override
  String get playerOpenFolderDesc =>
      'Αναπαραγωγή όλων των βίντεο ενός φακέλου ως playlist';

  @override
  String get playerNetworkStream => 'Stream δικτύου';

  @override
  String get playerNetworkStreamDesc =>
      'Άνοιγμα απευθείας συνδέσμου βίντεο ή HLS';

  @override
  String get playerStreamUrl => 'URL stream';

  @override
  String get playerStreamReferer => 'Referer (προαιρετικό)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Stream συνδέσμου magnet ή αρχείου .torrent';

  @override
  String get playerMagnetLink => 'Σύνδεσμος magnet ή URL torrent';

  @override
  String get playerPickTorrent => 'Επίλεξε αρχείο .torrent';

  @override
  String get playerTorrentMissing =>
      'Εγκατάστησε πρώτα το πρόσθετο torrent από τις Ρυθμίσεις > Πρόσθετα';

  @override
  String get playerNoVideos => 'Δεν βρέθηκαν βίντεο προς αναπαραγωγή';

  @override
  String get playerReset => 'Επαναφορά ρυθμίσεων προγράμματος αναπαραγωγής';

  @override
  String get playerResetDesc =>
      'Επαναφορά όλων των επιλογών του προγράμματος στις προεπιλογές';

  @override
  String get playerResetConfirm =>
      'Επαναφορά όλων των ρυθμίσεων του προγράμματος αναπαραγωγής;';

  @override
  String get playerResetDone => 'Οι ρυθμίσεις του προγράμματος επαναφέρθηκαν';

  @override
  String get playerQuality => 'Ποιότητα';

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
  String get playerStreams => 'Streams';

  @override
  String get playerAutoSelect => 'Αυτόματη επιλογή stream';

  @override
  String get playerAutoSelectDesc =>
      'Επιλογή του stream που μοιάζει περισσότερο με την τελευταία σου επιλογή για αυτόν τον τίτλο';

  @override
  String get playerLoadingStreams => 'Αναζήτηση streams…';

  @override
  String get playerNoStreams => 'Αυτό το επεισόδιο δεν έχει streams';

  @override
  String get playerNoStreamsTitle => 'Δεν βρέθηκαν streams';

  @override
  String get playerFailed => 'Η αναπαραγωγή απέτυχε';

  @override
  String get playerTorrentNeeded => 'Αυτό το stream είναι torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Εγκατάστησε το πρόσθετο torrent για να παίξεις συνδέσμους magnet και αρχεία .torrent';

  @override
  String get playerOpenAddons => 'Άνοιγμα προσθέτων';

  @override
  String get playerTryAnotherStream => 'Δοκίμασε άλλο stream';

  @override
  String get playerEpisodes => 'Επεισόδια';

  @override
  String get playerLock => 'Κλείδωμα χειριστηρίων';

  @override
  String get playerFullscreen => 'Πλήρης οθόνη';

  @override
  String get readerChapters => 'Κεφάλαια';

  @override
  String get readerSettingsTitle => 'Ρυθμίσεις αναγνώστη';

  @override
  String get readerPreviousChapter => 'Προηγούμενο κεφάλαιο';

  @override
  String get readerNextChapter => 'Επόμενο κεφάλαιο';

  @override
  String get readerFirstChapter => 'Αυτό είναι το πρώτο κεφάλαιο';

  @override
  String get readerLastChapter => 'Είσαι ενημερωμένος';

  @override
  String get readerFailed => 'Δεν άνοιξε αυτό το κεφάλαιο';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Αυτό το κεφάλαιο δεν έχει κείμενο';

  @override
  String get readerPerTitle => 'Μόνο για αυτόν τον τίτλο';

  @override
  String get readerPerTitleDesc =>
      'Κράτα αυτές τις ρυθμίσεις αναγνώστη μόνο για αυτόν τον τίτλο';

  @override
  String get readerSectionReading => 'Ανάγνωση';

  @override
  String get readerSectionControls => 'Χειριστήρια';

  @override
  String get readerSectionDisplay => 'Οθόνη';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerMode => 'Λειτουργία ανάγνωσης';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Δεξιά προς αριστερά';

  @override
  String get readerModeLtr => 'Αριστερά προς δεξιά';

  @override
  String get readerModeVertical => 'Κάθετες σελίδες';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Συνεχής κύλιση';

  @override
  String get readerScale => 'Κλίμακα εικόνας';

  @override
  String get readerScaleFit => 'Προσαρμογή στην οθόνη';

  @override
  String get readerScaleWidth => 'Προσαρμογή στο πλάτος';

  @override
  String get readerScaleHeight => 'Προσαρμογή στο ύψος';

  @override
  String get readerScaleOriginal => 'Αρχικό μέγεθος';

  @override
  String get readerScaleSmart => 'Έξυπνη προσαρμογή';

  @override
  String get readerDoublePage => 'Διπλές σελίδες';

  @override
  String get readerDoublePageDesc =>
      'Εμφάνιση δύο σελίδων δίπλα δίπλα σε οριζόντια λειτουργία';

  @override
  String get readerDoubleTapZoom => 'Διπλό πάτημα για ζουμ';

  @override
  String get readerDoubleTapZoomDesc =>
      'Ζουμ μέσα και έξω σε μια σελίδα με διπλό πάτημα';

  @override
  String get readerAnimate => 'Κινούμενο εφέ σελίδας';

  @override
  String get readerAnimateDesc => 'Κινούμενο εφέ στο γύρισμα σελίδας';

  @override
  String get readerSidePadding => 'Πλευρικό περιθώριο';

  @override
  String get readerSidePaddingDesc => 'Χώρος δίπλα στις σελίδες σε ποσοστό';

  @override
  String get readerPageGap => 'Κενό σελίδων';

  @override
  String get readerPageGapDesc => 'Χώρος ανάμεσα στις σελίδες';

  @override
  String get readerAutoNext => 'Συνέχεια στο επόμενο κεφάλαιο';

  @override
  String get readerAutoNextDesc =>
      'Φόρτωση του επόμενου κεφαλαίου όσο διαβάζεις το τέλος αυτού';

  @override
  String get readerPreload => 'Προφόρτωση σελίδων';

  @override
  String get readerPreloadDesc =>
      'Πόσες σελίδες θα κατεβαίνουν εκ των προτέρων';

  @override
  String get readerTapZones => 'Ζώνες αφής';

  @override
  String get readerTapDefault => 'Προεπιλογή';

  @override
  String get readerTapLShaped => 'Σχήμα L';

  @override
  String get readerTapKindle => 'Τύπου Kindle';

  @override
  String get readerTapEdge => 'Μόνο άκρες';

  @override
  String get readerTapOff => 'Απενεργοποιημένο';

  @override
  String get readerInvertTaps => 'Αντιστροφή ζωνών αφής';

  @override
  String get readerInvertTapsDesc =>
      'Εναλλαγή των περιοχών προηγούμενου και επόμενου';

  @override
  String get readerBackground => 'Φόντο';

  @override
  String get readerBackgroundBlack => 'Μαύρο';

  @override
  String get readerBackgroundGray => 'Γκρι';

  @override
  String get readerBackgroundWhite => 'Λευκό';

  @override
  String get readerBackgroundTheme => 'Θέμα εφαρμογής';

  @override
  String get readerFilter => 'Φίλτρο χρώματος';

  @override
  String get readerFilterNone => 'Κανένα';

  @override
  String get readerFilterGrayscale => 'Κλίμακα του γκρι';

  @override
  String get readerFilterInvert => 'Αντιστροφή';

  @override
  String get readerFilterSepia => 'Σέπια';

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
  String get readerDim => 'Σκούρο';

  @override
  String get readerDimDesc => 'Σκουραίνει τις σελίδες';

  @override
  String get readerPageNumber => 'Αριθμός σελίδας';

  @override
  String get readerPageNumberDesc =>
      'Εμφάνιση του αριθμού σελίδας όσο διαβάζεις';

  @override
  String get readerFullscreen => 'Πλήρης οθόνη';

  @override
  String get readerFullscreenDesc => 'Απόκρυψη των γραμμών συστήματος';

  @override
  String get readerCropBorders => 'Περικοπή περιθωρίων';

  @override
  String get readerCropBordersDesc =>
      'Αφαίρεση κενών λευκών ή μαύρων περιθωρίων από τις σελίδες';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Τα πλήκτρα έντασης γυρίζουν σελίδες';

  @override
  String get readerVolumeKeysDesc =>
      'Μείωση έντασης για μπροστά, αύξηση για πίσω';

  @override
  String get readerBookmarks => 'Σελιδοδείκτες';

  @override
  String get readerBookmarkAdd => 'Προσθήκη σελιδοδείκτη';

  @override
  String get readerBookmarkRemove => 'Αφαίρεση σελιδοδείκτη';

  @override
  String get readerBookmarksEmpty => 'Κανένας σελιδοδείκτης ακόμα';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Σελίδα $page από $total';
  }

  @override
  String get readerAutoScroll => 'Αυτόματη κύλιση';

  @override
  String get readerAutoScrollStop => 'Διακοπή αυτόματης κύλισης';

  @override
  String get readerAutoScrollSpeed => 'Ταχύτητα αυτόματης κύλισης';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Πόσο γρήγορα κυλούν ή γυρίζουν μόνες τους οι σελίδες';

  @override
  String get readerKeepOn => 'Οθόνη πάντα αναμμένη';

  @override
  String get readerKeepOnDesc => 'Η οθόνη δεν σβήνει όσο διαβάζεις';

  @override
  String get readerOrientation => 'Προσανατολισμός';

  @override
  String get readerOrientationFree => 'Ελεύθερος';

  @override
  String get readerOrientationPortrait => 'Κάθετα';

  @override
  String get readerOrientationLandscape => 'Οριζόντια';

  @override
  String get readerSaveProgress => 'Αποθήκευση προόδου';

  @override
  String get readerSaveProgressDesc =>
      'Θυμάται τη σελίδα σου και σημειώνει τα κεφάλαια ως διαβασμένα';

  @override
  String get readerReset => 'Επαναφορά ρυθμίσεων αναγνώστη';

  @override
  String get readerResetDesc => 'Πίσω στις προεπιλογές';

  @override
  String get novelSize => 'Μέγεθος κειμένου';

  @override
  String get novelFont => 'Γραμματοσειρά';

  @override
  String get novelLineHeight => 'Ύψος γραμμής';

  @override
  String get novelParagraph => 'Απόσταση παραγράφων';

  @override
  String get novelMargin => 'Περιθώρια';

  @override
  String get novelTheme => 'Θέμα αναγνώστη';

  @override
  String get novelThemeApp => 'Θέμα εφαρμογής';

  @override
  String get novelThemeLight => 'Φωτεινό';

  @override
  String get novelThemeSepia => 'Σέπια';

  @override
  String get novelThemeDark => 'Σκοτεινό';

  @override
  String get novelThemeBlack => 'Μαύρο';

  @override
  String get novelJustify => 'Πλήρης στοίχιση κειμένου';

  @override
  String get novelJustifyDesc => 'Στοίχιση κειμένου και στις δύο άκρες';

  @override
  String get trackProgressTitle => 'Αποθήκευση προόδου;';

  @override
  String trackProgressAnime(String name) {
    return 'Να καταγράφεται το $name στη λίστα σου καθώς βλέπεις; Διάλεξε «Μόνο αυτή η συσκευή» για να μείνει τοπικά, ή Όχι για να μη σωθεί τίποτα.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Να καταγράφεται το $name στη λίστα σου όταν τελειώνεις ένα κεφάλαιο; Διάλεξε «Μόνο αυτή η συσκευή» για να μείνει τοπικά, ή Όχι για να μη σωθεί τίποτα.';
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
  String get trackProgressYes => 'Αποθήκευση';

  @override
  String get trackProgressReset =>
      'Η ερώτηση αποθήκευσης προόδου επαναφέρθηκε για αυτόν τον τύπο, θα ρωτήσει ξανά';

  @override
  String get trackProgressNo => 'Όχι';

  @override
  String get trackProgressOff => 'Ανενεργό';

  @override
  String get trackProgressLocal => 'Μόνο αυτή η συσκευή';

  @override
  String get trackProgressSettingAnime => 'Καταγραφή προόδου anime';

  @override
  String get trackProgressSettingManga => 'Καταγραφή προόδου manga και novel';

  @override
  String get trackProgressSettingDesc =>
      'Τι να γίνεται όταν ανοίγεις επεισόδιο ή τελειώνεις κεφάλαιο';

  @override
  String get trackProgressAsk => 'Ερώτηση';

  @override
  String get trackProgressAlways => 'Πάντα';

  @override
  String get dantotsuImport => 'Εισαγωγή από το Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Ανάγνωση αντιγράφου ρυθμίσεων Dantotsu (.ani ή κρυπτογραφημένο .sani)';

  @override
  String get dantotsuPick => 'Επίλεξε αντίγραφο Dantotsu';

  @override
  String get dantotsuNothing =>
      'Τίποτα σε αυτό το αρχείο δεν μπορεί να εισαχθεί';

  @override
  String get dantotsuApply => 'Εισαγωγή επιλεγμένων';

  @override
  String dantotsuDone(int done, int total) {
    return 'Εισήχθησαν $done από $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Λογαριασμοί';

  @override
  String get dantotsuGroupAppearance => 'Εμφάνιση';

  @override
  String get dantotsuGroupExtensions => 'Επεκτάσεις';

  @override
  String get dantotsuGroupApp => 'Εφαρμογή';

  @override
  String get dantotsuGroupPlayer => 'Πρόγραμμα αναπαραγωγής';

  @override
  String get dantotsuAnilist => 'Σύνδεση AniList';

  @override
  String get dantotsuMal => 'Σύνδεση MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Θέμα';

  @override
  String get dantotsuReposAnime => 'Αποθετήρια επεκτάσεων anime';

  @override
  String get dantotsuReposManga => 'Αποθετήρια επεκτάσεων manga';

  @override
  String get dantotsuReposNovel => 'Αποθετήρια επεκτάσεων novel';

  @override
  String get dantotsuUpdates => 'Έλεγχος ενημερώσεων';

  @override
  String get dantotsuComments => 'Σχόλια';

  @override
  String get dantotsuActivity => 'Polling ειδοποιήσεων AniList';

  @override
  String get dantotsuDns => 'Πάροχος DNS';

  @override
  String get dantotsuPlayer => 'Ταχύτητα προγράμματος και χρώματα υποτίτλων';

  @override
  String get dantotsuWarning =>
      'Αυτό το αρχείο περιέχει tokens σύνδεσης. Κράτα το ιδιωτικό.';

  @override
  String get novelIndent => 'Εσοχή παραγράφων';

  @override
  String get novelIndentDesc =>
      'Κάθε παράγραφος ξεκινά με εσοχή στην πρώτη γραμμή';

  @override
  String get novelLetterSpacing => 'Απόσταση γραμμάτων';

  @override
  String get novelSectionTranslate => 'Μετάφραση';

  @override
  String get sectionExperimental => 'Πειραματικό';

  @override
  String get kitsuGraphqlDetail => 'Ταχύτερες σελίδες λεπτομερειών (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Φόρτωση τίτλου με τους χαρακτήρες, το προσωπικό και την εγγραφή σου με ένα αίτημα';

  @override
  String get togetherTitle => 'Παρακολούθηση μαζί';

  @override
  String get togetherIntro =>
      'Επικόλλησε τον σύνδεσμο δωματίου που σου έστειλε ο φίλος σου. Μπαίνεις αμέσως και το πρόγραμμα ανοίγει όταν αρχίσουν να βλέπουν.';

  @override
  String get togetherName => 'Το όνομά σου';

  @override
  String get togetherConnecting => 'Σύνδεση…';

  @override
  String get togetherLeave => 'Αποχώρηση από το δωμάτιο';

  @override
  String get togetherYou => 'Εσύ';

  @override
  String get togetherNoChat => 'Κανένα μήνυμα ακόμα';

  @override
  String get togetherChatHint => 'Μήνυμα';

  @override
  String get togetherCopyInvite => 'Αντιγραφή πρόσκλησης';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied =>
      'Ο διακομιστής και το δωμάτιο αντιγράφηκαν';

  @override
  String get togetherConnectionLost => 'Η σύνδεση χάθηκε';

  @override
  String togetherConnectedTo(String room) {
    return 'Συνδέθηκες στο $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Δεν έγινε σύνδεση: $error';
  }

  @override
  String togetherJoined(String name) {
    return 'Ο/Η $name μπήκε';
  }

  @override
  String togetherLeft(String name) {
    return 'Ο/Η $name έφυγε';
  }

  @override
  String togetherPaused(String name) {
    return 'Ο/Η $name έκανε παύση';
  }

  @override
  String togetherResumed(String name) {
    return 'Ο/Η $name συνέχισε';
  }

  @override
  String togetherSeeked(String name, String time) {
    return 'Ο/Η $name πήγε στο $time';
  }

  @override
  String get togetherFollowFailed =>
      'Δεν άνοιξε το επεισόδιο του οικοδεσπότη. Άνοιξέ το μόνος σου.';

  @override
  String get togetherJoinRole => 'Συμμετοχή σε δωμάτιο';

  @override
  String get togetherOpenHost => 'Άνοιγμα επεισοδίου οικοδεσπότη';

  @override
  String get togetherShowChat => 'Εμφάνιση ζωντανής συνομιλίας';

  @override
  String get togetherWaitingHost =>
      'Αναμονή να ξεκινήσει ο οικοδεσπότης ένα επεισόδιο';

  @override
  String get togetherRoomLink => 'Σύνδεσμος δωματίου';

  @override
  String get togetherBadLink => 'Αυτός δεν είναι σύνδεσμος δωματίου';

  @override
  String get togetherHostClosed => 'Ο οικοδεσπότης έκλεισε το δωμάτιο';

  @override
  String get togetherNowPlaying => 'Παίζει τώρα';

  @override
  String togetherWatchingCount(int count) {
    return '$count παρακολουθούν';
  }

  @override
  String togetherWantsPause(String user) {
    return 'Ο/Η $user θέλει παύση';
  }

  @override
  String togetherWantsResume(String user) {
    return 'Ο/Η $user θέλει συνέχεια';
  }

  @override
  String get togetherChip => 'Μαζί';

  @override
  String get togetherSettingsDesc => 'Μπες στο δωμάτιο ενός φίλου με σύνδεσμο';

  @override
  String get novelBilingual => 'Εμφάνιση πρωτοτύπου και μετάφρασης';

  @override
  String get novelBilingualDesc =>
      'Κάθε παράγραφος δείχνει το αρχικό κείμενο με τη μετάφραση από κάτω';

  @override
  String get novelTranslateTo => 'Μετάφραση σε';

  @override
  String get novelTranslateOff => 'Ανενεργό';

  @override
  String get novelSectionSpeech => 'Κείμενο σε ομιλία';

  @override
  String get novelSpeechRate => 'Ταχύτητα ομιλίας';

  @override
  String get novelSpeechPitch => 'Τόνος ομιλίας';

  @override
  String get novelSpeak => 'Ανάγνωση φωναχτά';

  @override
  String get novelSpeakStop => 'Διακοπή ανάγνωσης φωναχτά';

  @override
  String get novelTranslate => 'Μετάφραση κεφαλαίου';

  @override
  String get novelTranslateShowOriginal => 'Εμφάνιση πρωτοτύπου';

  @override
  String novelTranslateFailed(String error) {
    return 'Η μετάφραση απέτυχε: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Το κείμενο σε ομιλία δεν είναι διαθέσιμο σε αυτή τη συσκευή';

  @override
  String get novelSpeechVoice => 'Φωνή';

  @override
  String get novelSpeechVoiceDefault => 'Προεπιλογή συστήματος';

  @override
  String get novelSpeakPrevious => 'Προηγούμενη γραμμή';

  @override
  String get novelSpeakNext => 'Επόμενη γραμμή';

  @override
  String get novelTapPaging => 'Πάτα στις άκρες για αλλαγή σελίδας';

  @override
  String get novelTapPagingDesc =>
      'Πάτα αριστερά ή δεξιά για κύλιση σελίδας, η μέση δείχνει τα χειριστήρια';

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
    return 'απομένουν $count λ.';
  }

  @override
  String get novelBold => 'Έντονο κείμενο';

  @override
  String get novelBoldDesc => 'Χρήση πιο βαριάς γραμματοσειράς';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Τελείωσε το $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Επόμενο: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Προηγούμενο: $chapter';
  }

  @override
  String get readerNoPages => 'Αυτό το κεφάλαιο δεν έχει σελίδες';

  @override
  String get readerLoadingPages => 'Φόρτωση σελίδων…';

  @override
  String get readerSlowPage => 'Η σελίδα φορτώνει ακόμα…';

  @override
  String get readerPageFailed => 'Δεν φορτώθηκε αυτή η σελίδα';

  @override
  String get playerShowComments => 'Εμφάνιση σχολίων';

  @override
  String get playerHideComments => 'Απόκρυψη σχολίων';

  @override
  String get playerSubtitles => 'Υπότιτλοι';

  @override
  String get playerSubtitlesOff => 'Υπότιτλοι ανενεργοί';

  @override
  String get playerAudio => 'Ήχος';

  @override
  String get playerAddSubtitle => 'Προσθήκη αρχείου υποτίτλων';

  @override
  String get playerAddAudio => 'Προσθήκη αρχείου ήχου';

  @override
  String get playerChapters => 'Κεφάλαια';

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
  String get playerNoChapters => 'Κανένα κεφάλαιο';

  @override
  String get playerTimestamp => 'Χρονοσήμανση';

  @override
  String get playerAutoPlayDelay => 'Αντίστροφη μέτρηση επόμενου επεισοδίου';

  @override
  String get playerWatchedAt => 'Μέτρηση ως είδα στο';

  @override
  String playerNextIn(int seconds) {
    return 'Επόμενο επεισόδιο σε $secondsδ';
  }

  @override
  String get playerPlayNow => 'Αναπαραγωγή τώρα';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: θα παραλείπεται αυτόματα για αυτόν τον τίτλο';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: δεν θα παραλείπεται αυτόματα για αυτόν τον τίτλο';
  }

  @override
  String get playerAudioLanguage => 'Προτιμώμενη γλώσσα ήχου';

  @override
  String get playerLanguageOrderHint =>
      'Χώρισε τις γλώσσες με κόμματα. Χρησιμοποιείται η πρώτη που βρεθεί.';

  @override
  String get playerPip => 'Picture in picture';

  @override
  String get playerAutoPip => 'Picture in picture κατά την έξοδο';

  @override
  String get playerAutoPipDesc =>
      'Συνέχιση αναπαραγωγής σε μικρό παράθυρο όταν βγαίνεις από την εφαρμογή';

  @override
  String playerAutoPlaying(String title) {
    return 'Επόμενο: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Δεν εγκαταστάθηκαν τα shaders: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Κεφάλαιο $number';
  }

  @override
  String get playerPerTitle => 'Μόνο για αυτόν τον τίτλο';

  @override
  String get playerPerTitleDesc =>
      'Κράτα αυτές τις επιλογές για αυτόν τον τίτλο και άφησε τις προεπιλογές σου ήσυχες';

  @override
  String get playerSwapGestures => 'Αλλαγή πλευρών σύρσιμου';

  @override
  String get playerSwapGesturesDesc => 'Φωτεινότητα αριστερά και ένταση δεξιά';

  @override
  String get playerOpenBig => 'Άνοιγμα σε μεγάλη προβολή';

  @override
  String get playerOpenBigDesc =>
      'Ξεκίνα το πρόγραμμα αναπαραγωγής σε πλήρη οθόνη αντί με τη λίστα επεισοδίων';

  @override
  String get playerPauseOnBlur => 'Παύση όταν χάνεται η εστίαση';

  @override
  String get playerPauseOnBlurDesc =>
      'Παύση όσο η εφαρμογή καλύπτεται, π.χ. από τον πίνακα ειδοποιήσεων, και συνέχεια όταν γυρίσεις';

  @override
  String get playerAudioOutput => 'Έξοδος ήχου';

  @override
  String get fontAppDefault => 'Γραμματοσειρά εφαρμογής';

  @override
  String get fontImport => 'Εισαγωγή γραμματοσειράς';

  @override
  String get fontSample => 'Ξεσκεπάζω τη ψυχοφθόρα βδελυγμία';

  @override
  String get playerSubtitleDelay => 'Καθυστέρηση υποτίτλων';

  @override
  String get playerAudioDelay => 'Καθυστέρηση ήχου';

  @override
  String get playerDelayReset => 'Επαναφορά';

  @override
  String get playerOnlineSubtitles => 'Υπότιτλοι online';

  @override
  String get playerOnlineSearchHint => 'Τίτλος και επεισόδιο';

  @override
  String get playerOnlineNone => 'Δεν βρέθηκαν υπότιτλοι';

  @override
  String playerOnlineFailed(String error) {
    return 'Η αναζήτηση υποτίτλων απέτυχε: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Δεν κατέβηκε αυτός ο υπότιτλος: $error';
  }

  @override
  String get playerOnlineMatch => 'Ταιριάζει με αυτό το αρχείο';

  @override
  String get playerOnlineEpisode => 'Αντιστοίχιση επεισοδίου';

  @override
  String playerOnlineDownloads(int count) {
    return '$count λήψεις';
  }

  @override
  String get playerSeekPreview => 'Προεπισκόπηση μετακίνησης';

  @override
  String get playerSeekPreviewDesc =>
      'Εμφάνιση μικρής προεπισκόπησης καρέ πάνω από τη μπάρα κατά τη μετακίνηση. Ανοίγει δεύτερο αποκωδικοποιητή χαμηλής ανάλυσης, οπότε χρησιμοποιεί επιπλέον δεδομένα στα streams.';

  @override
  String get playerSettingsChip => 'Ρυθμίσεις';

  @override
  String get playerAudioDevice => 'Συσκευή ήχου';

  @override
  String get settingsDownloads => 'Λήψεις';

  @override
  String get settingsDownloadsDesc =>
      'Επεισόδια εκτός σύνδεσης, ουρά και λειτουργία εκτός σύνδεσης';

  @override
  String get downloadsTitle => 'Λήψεις';

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
      'Δες την ουρά και ό,τι είναι αποθηκευμένο σε αυτή τη συσκευή';

  @override
  String get downloadTitle => 'Λήψη';

  @override
  String get downloadAlready => 'Έχει ήδη κατέβει ή είναι στην ουρά';

  @override
  String get downloadPickStream => 'Ποιο stream να κατέβει;';

  @override
  String get downloadPickSubtitle => 'Ποιος υπότιτλος να κατέβει;';

  @override
  String get downloadPickAudio => 'Ποιο κομμάτι ήχου να κατέβει;';

  @override
  String get downloadNoAudio => 'Χωρίς επιπλέον ήχο';

  @override
  String get downloadAudio => 'Ήχος';

  @override
  String get downloadNoSubtitle => 'Χωρίς υπότιτλο';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Αυτό το stream είναι playlist HLS. Για τη λήψη χρειάζεται το πρόσθετο FFmpeg.';

  @override
  String get downloadSourceMissing =>
      'Η πηγή για αυτό το επεισόδιο δεν είναι εγκατεστημένη';

  @override
  String get downloadWaitingConnection => 'Αναμονή για σύνδεση';

  @override
  String get downloadSubtitles => 'Υπότιτλοι';

  @override
  String get downloadDownloaded => 'Κατέβηκε';

  @override
  String get downloadOffline => 'Εκτός σύνδεσης';

  @override
  String get downloadDelete => 'Διαγραφή λήψης';

  @override
  String get downloadCancel => 'Ακύρωση';

  @override
  String get downloadPause => 'Παύση';

  @override
  String get downloadPaused => 'Σε παύση';

  @override
  String get downloadResume => 'Συνέχεια';

  @override
  String get downloadPauseAll => 'Παύση όλων';

  @override
  String get downloadResumeAll => 'Συνέχεια όλων';

  @override
  String get downloadQueuedState => 'Αναμονή στην ουρά';

  @override
  String get downloadResolving => 'Λήψη του stream…';

  @override
  String get downloadUsedFallback =>
      'Κανένα ταιριαστό stream, χρησιμοποιήθηκε το πρώτο';

  @override
  String get downloadTabQueue => 'Ουρά';

  @override
  String get downloadTabDone => 'Έτοιμο';

  @override
  String get downloadTabFailed => 'Απέτυχε';

  @override
  String get downloadEmptyQueue => 'Δεν κατεβαίνει τίποτα';

  @override
  String get downloadEmptyDone => 'Τίποτα δεν έχει κατέβει ακόμα';

  @override
  String get downloadEmptyFailed => 'Καμία αποτυχημένη λήψη';

  @override
  String get downloadNext => 'Επόμενο επεισόδιο';

  @override
  String downloadNextN(int count) {
    return 'Επόμενα $count επεισόδια';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Όλα όσα δεν είδες ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Αυτό το εύρος ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Όλα τα επεισόδια ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count επεισόδια στην ουρά',
      one: '1 επεισόδιο στην ουρά',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return 'Το $name κατέβηκε';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Το $name απέτυχε να κατέβει';
  }

  @override
  String downloadStorage(String size) {
    return '$size σε χρήση από λήψεις';
  }

  @override
  String get downloadQueueHeader => 'Ουρά';

  @override
  String get downloadParallel => 'Ταυτόχρονες λήψεις';

  @override
  String get downloadParallelDesc => 'Μία λήψη τη φορά ή πολλές μαζί';

  @override
  String get downloadOneByOne => 'Μία-μία';

  @override
  String get downloadNotifications => 'Ειδοποιήσεις λήψεων';

  @override
  String get downloadNotificationsDesc =>
      'Ζωντανή πρόοδος όπου το υποστηρίζει το σύστημα, αλλιώς μια ειδοποίηση όταν τελειώνει η λήψη';

  @override
  String get downloadNotifyLive => 'Ζωντανά';

  @override
  String get downloadNotifyDone => 'Όταν τελειώσει';

  @override
  String get downloadNotifyOff => 'Ανενεργό';

  @override
  String get downloadInfoFile =>
      'Εγγραφή αρχείου πληροφοριών δίπλα σε κάθε λήψη';

  @override
  String get downloadInfoFileDesc =>
      'Αποθηκεύει stream, ποιότητα, υπότιτλο και χρόνους παράλειψης σε ένα μικρό αρχείο .json';

  @override
  String get offlineHeader => 'Εκτός σύνδεσης';

  @override
  String get offlineModeDesc =>
      'Το Αυτόματο πηγαίνει εκτός σύνδεσης μόνο όταν η εφαρμογή ξεκινά χωρίς σύνδεση. Το Πάντα μένει εκτός σύνδεσης μέχρι να το αλλάξεις.';

  @override
  String get offlineModeOff => 'Ανενεργό';

  @override
  String get offlineModeAlways => 'Πάντα';

  @override
  String get offlineModeOn =>
      'Η λειτουργία εκτός σύνδεσης είναι ενεργή. Οι αλλαγές αποθηκεύονται εδώ και στέλνονται όταν επανέλθεις online.';

  @override
  String get offlineSaved =>
      'Αποθηκεύτηκε σε αυτή τη συσκευή, θα συγχρονιστεί όταν είσαι online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αλλαγές συγχρονίστηκαν',
      one: '1 αλλαγή συγχρονίστηκε',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αλλαγές περιμένουν συγχρονισμό',
      one: '1 αλλαγή περιμένει συγχρονισμό',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Αλλαγές που περιμένουν συγχρονισμό';

  @override
  String get offlinePendingNone => 'Δεν περιμένει τίποτα';

  @override
  String get offlineSyncNow => 'Συγχρονισμός τώρα';

  @override
  String get offlineDiscard => 'Απόρριψη';

  @override
  String get downloadNotOffline =>
      'Αυτό το επεισόδιο δεν έχει κατέβει, οπότε δεν είναι διαθέσιμο εκτός σύνδεσης';

  @override
  String get offlineModeChip => 'Εκτός σύνδεσης';

  @override
  String get downloadNextChapter => 'Επόμενο κεφάλαιο';

  @override
  String downloadNextChapters(int count) {
    return 'Επόμενα $count κεφάλαια';
  }

  @override
  String downloadUnread(int count) {
    return 'Όλα όσα δεν διάβασες ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Όλα τα κεφάλαια ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total σελίδες';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count σελίδες';
  }

  @override
  String get downloadFfmpegTitle => 'Χρειάζεται το πρόσθετο FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'Αυτό το stream είναι playlist HLS. Το πρόσθετο FFmpeg ενώνει τα κομμάτια σε ένα αρχείο mp4. Χωρίς αυτό, τα κομμάτια μένουν σε φάκελο επεισοδίου και παίζουν από εκεί.';

  @override
  String get downloadFfmpegInstall => 'Εγκατάσταση';

  @override
  String get downloadFfmpegInstalling =>
      'Εγκατάσταση FFmpeg, μπορεί να πάρει λίγο…';

  @override
  String get downloadFinishing => 'Ένωση των κομματιών σε ένα αρχείο…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total μέρη';
  }

  @override
  String get downloadTorrentNoFile =>
      'Το torrent δεν έχει αρχείο βίντεο για λήψη';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Λήψη $count στοιχείων',
      one: 'Λήψη 1 στοιχείου',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Διαγραφή λήψεων που είδες';

  @override
  String get downloadAutoDeleteDesc =>
      'Αφαιρεί μια λήψη όταν η πρόοδός σου φτάσει σε εκείνο το επεισόδιο ή κεφάλαιο';

  @override
  String get downloadConnections => 'Συνδέσεις ανά λήψη';

  @override
  String get downloadConnectionsDesc =>
      'Χωρίζει ένα μεγάλο αρχείο σε μέρη που κατεβαίνουν ταυτόχρονα. Κάποιοι διακομιστές το περιορίζουν.';

  @override
  String get downloadPlayChoice => 'Αναπαραγωγή από';

  @override
  String get downloadPlayLocalDesc =>
      'Το αρχείο που είναι αποθηκευμένο σε αυτή τη συσκευή';

  @override
  String get downloadPlayStream => 'Stream online';

  @override
  String get downloadPlayStreamDesc => 'Φόρτωση του επεισοδίου από την πηγή';

  @override
  String get offlineFeedTitle => 'Κατέβηκε σε αυτή τη συσκευή';

  @override
  String get offlineFeedEmpty =>
      'Κατέβασε κάτι όσο είσαι online και θα εμφανιστεί εδώ';

  @override
  String get offlineEnabled => 'Η λειτουργία εκτός σύνδεσης είναι ενεργή';

  @override
  String get offlineDisabled => 'Η λειτουργία εκτός σύνδεσης είναι ανενεργή';

  @override
  String get downloadReadChoice => 'Ανάγνωση από';

  @override
  String get downloadReadLocalDesc =>
      'Οι σελίδες που είναι αποθηκευμένες σε αυτή τη συσκευή';

  @override
  String get downloadReadOnline => 'Ανάγνωση online';

  @override
  String get downloadReadOnlineDesc => 'Φόρτωση του κεφαλαίου από την πηγή';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Διαγραφή του $name από αυτή τη συσκευή;';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Ακύρωση της λήψης του $name; Ό,τι έχει ήδη κατέβει διαγράφεται.';
  }

  @override
  String get downloadFfmpegFolder => 'Διατήρηση ως φάκελος';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Να πεταχτούν $count αλλαγές που δεν στάλθηκαν ποτέ; Δεν αναιρείται.',
      one: 'Να πεταχτεί η αλλαγή που δεν στάλθηκε ποτέ; Δεν αναιρείται.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Αναμονή για Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Σε παύση σε σύνδεση με όριο δεδομένων';

  @override
  String get downloadWifiOnly => 'Μόνο Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Οι λήψεις περιμένουν όσο είσαι σε δεδομένα κινητής';

  @override
  String get downloadMetered => 'Παύση σε συνδέσεις με όριο δεδομένων';

  @override
  String get downloadMeteredDesc =>
      'Περιμένει και σε Wi-Fi που η συσκευή σου σημαίνει ως με όριο δεδομένων';

  @override
  String get downloadSpeedLimit => 'Όριο ταχύτητας';

  @override
  String get downloadSpeedLimitDesc => 'Περιορίζει τη συνολική ταχύτητα λήψης';

  @override
  String get downloadUnlimited => 'Απεριόριστο';

  @override
  String get downloadMoveToTop => 'Μετακίνηση στην κορυφή';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seeds · $peers peers';
  }

  @override
  String get downloadTorrentFile => 'Ποιο αρχείο;';

  @override
  String get downloadTorrentAuto => 'Αυτόματη αντιστοίχιση επεισοδίου';

  @override
  String get downloadTorrentLoading => 'Ανάγνωση του torrent…';

  @override
  String get watchAutoSource => 'Αυτόματη αλλαγή στην επόμενη πηγή';

  @override
  String get watchAutoSourceDesc =>
      'Αν η πηγή δεν βρίσκει τον τίτλο ή αποτύχει να φορτώσει, δοκιμάζεται η επόμενη εγκατεστημένη πηγή';

  @override
  String get extensionTest => 'Δοκιμή επεκτάσεων';

  @override
  String get extensionTestCopy => 'Αντιγραφή των αποτυχιών και των logs τους';

  @override
  String get extensionTestQuery => 'Όρος αναζήτησης';

  @override
  String get extensionTestRun => 'Εκτέλεση';

  @override
  String get extensionTestStop => 'Διακοπή';

  @override
  String get extensionTestNone =>
      'Δεν υπάρχουν εγκατεστημένες επεκτάσεις αυτού του τύπου';

  @override
  String get extensionTestNotRun => 'Δεν έχει δοκιμαστεί ακόμα';

  @override
  String get extensionTestSearch => 'Αναζήτηση';

  @override
  String get extensionTestDetail => 'Λεπτομέρειες';

  @override
  String get extensionTestUnits => 'Επεισόδια / κεφάλαια';

  @override
  String get extensionTestLinks => 'Streams / σελίδες';

  @override
  String extensionTestFailedAt(String step) {
    return 'Απέτυχε στο $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done από $total δοκιμάστηκαν · $passed πέρασαν · $failed απέτυχαν';
  }

  @override
  String get extensionTestCopyLogs => 'Αντιγραφή όλων με τα πλήρη logs';

  @override
  String get onboardingFeaturesTitle => 'Όλα σε ένα μέρος';

  @override
  String get onboardingFeaturesBody =>
      'Ό,τι παρακολουθείς, βλέπεις και διαβάζεις, χωρίς να παλεύεις με πολλές εφαρμογές.';

  @override
  String get onboardingFeatureTrack => 'Παρακολούθησε τα πάντα';

  @override
  String get onboardingFeatureTrackDesc =>
      'Λίστες, πρόοδος και βαθμολογίες σε AniList, MyAnimeList, Simkl, Kitsu και MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Δες και διάβασε';

  @override
  String get onboardingFeatureWatchDesc =>
      'Εγκατάστησε επεκτάσεις και δες anime ή διάβασε manga και novels απευθείας στην εφαρμογή.';

  @override
  String get onboardingFeatureOffline => 'Πάρ\' το εκτός σύνδεσης';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Κατέβασε επεισόδια και κεφάλαια και συνέχισε χωρίς σύνδεση.';

  @override
  String get onboardingFeatureSync => 'Κράτα τις λίστες συγχρονισμένες';

  @override
  String get onboardingFeatureSyncDesc =>
      'Αντέγραψε τη λίστα σου ανάμεσα σε υπηρεσίες ή άσε να κερδίζει όποια είναι μπροστά.';

  @override
  String get onboardingServices => 'Δουλεύει με';

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

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
  String get appLockBiometric => 'Ξεκλείδωμα με βιομετρικά στοιχεία';

  @override
  String get appLockBiometricDesc =>
      'Χρησιμοποιήστε το δακτυλικό σας αποτύπωμα ή το πρόσωπό σας αντί να πληκτρολογήσετε τον κωδικό πρόσβασης';

  @override
  String get appLockBiometricReason => 'Ξεκλειδώστε το Dartotsu';

  @override
  String get appLockDelay => 'Κλείδωμα όταν είναι σε αδράνεια';

  @override
  String get appLockDelayAlways => 'Πάντα';

  @override
  String get appLockDelayNever => 'Ποτέ';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count λεπτά',
      one: '1 λεπτό',
    );
    return 'Μετά $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Χρησιμοποιήστε βιομετρικά στοιχεία';

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
      other: '$count διαθέσιμες ενημερώσεις',
      one: '1 διαθέσιμη ενημέρωση',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Ενημέρωση όλων';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done των $total επεκτάσεων ενημερώθηκε';
  }

  @override
  String get updateConflictTitle => 'Η ενημέρωση δεν έχει εγκατασταθεί';

  @override
  String updateConflictBody(String names) {
    return 'Το $names δεν μπόρεσε να εγκατασταθεί στην υπάρχουσα έκδοση. Αυτό συνήθως σημαίνει ότι το εγκατεστημένο αντίγραφο υπογράφηκε διαφορετικά. Να το απεγκαταστήσω και να εγκαταστήσω τη νέα έκδοση;';
  }

  @override
  String get updateConflictAction => 'Απεγκατάσταση και επανεγκατάσταση';

  @override
  String get noSourceSettings => 'Η πηγή δεν έχει ρυθμίσεις';

  @override
  String get addPluginRepository => 'Προσθήκη αποθετηρίου plugin';

  @override
  String get pluginIndexUrlHint => 'URL ευρετηρίου plugin';

  @override
  String get addRepository => 'Προσθήκη αποθετηρίου';

  @override
  String get importRepositoryFile => 'Εισαγωγή αρχείου';

  @override
  String get pluginRepoUpdated => 'Το αποθετήριο plugin ενημερώθηκε';

  @override
  String get pluginRepoUpdateFailed =>
      'Αποτυχία ανανέωσης του αποθετηρίου plugin';

  @override
  String get ok => 'ΟΚ';

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
  String get manageServices => 'Υπηρεσίες πολυμέσων';

  @override
  String get manageServicesDesc =>
      'Αναπαραγγείλετε τις υπηρεσίες και επιλέξτε ποιες εμφανίζονται στο εργαλείο επιλογής';

  @override
  String get manageServicesHint =>
      'Σύρετε για αναδιάταξη, απενεργοποιήστε αυτά που δεν χρησιμοποιείτε';

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
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

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
  String get stories => 'Ιστορίες';

  @override
  String get watchOrder => 'Παραγγελία ρολογιού';

  @override
  String get watchOrderOpenSite => 'Ανοιχτό στο chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Δεν βρέθηκε παραγγελία ρολογιού για αυτόν τον τίτλο';

  @override
  String get watchOrderOpenFailed =>
      'Δεν ήταν δυνατό να ανοίξει αυτός ο τίτλος';

  @override
  String get watchOrderCurrent => 'Είστε εδώ';

  @override
  String get watchOrderCredit =>
      'Παρακολουθήστε παραγγελίες από το chiaki.site';

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
  String get settingsSync => 'Ρυθμίσεις συγχρονισμού';

  @override
  String get settingsSyncDesc =>
      'Διατηρήστε τις ρυθμίσεις σας ίδιες σε κάθε συσκευή. Αποθηκεύονται σε μια ιδιωτική ουσία στον λογαριασμό σας στο GitHub';

  @override
  String get settingsSyncSwitch => 'Συγχρονισμός κατά την αλλαγή';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Συνδεθείτε με το GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Οι ρυθμίσεις αποθηκεύονται σε μια ιδιωτική ουσία στο λογαριασμό σας';

  @override
  String get settingsSyncToken =>
      'Χρησιμοποιήστε ένα προσωπικό διακριτικό πρόσβασης';

  @override
  String get settingsSyncTokenDesc =>
      'Δημιουργήστε ένα στο github.com/settings/tokens με μόνο την άδεια ουσίας';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Συνδεθήκατε ως $user';
  }

  @override
  String get settingsSyncSignOut => 'Αποσυνδεθείτε';

  @override
  String settingsSyncCode(Object code) {
    return 'Εισαγάγετε $code στο GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'Η σελίδα GitHub άνοιξε στο πρόγραμμα περιήγησής σας. Πατήστε για να αντιγράψετε τον κωδικό ή πατήστε παρατεταμένα για ακύρωση.';

  @override
  String get settingsSyncSignInFailed => 'Δεν ήταν δυνατή η σύνδεση στο GitHub';

  @override
  String get dcPreview => 'Προεπισκόπηση';

  @override
  String get dcSampleWatching => 'Παρακολούθηση';

  @override
  String get dcSampleReading => 'Διαβάζοντας';

  @override
  String get dcSampleBrowsing => 'Περιήγηση';

  @override
  String get dcSampleLive => 'Αυτή τη στιγμή';

  @override
  String get dcLiveNothing =>
      'Τίποτα δεν φαίνεται αυτή τη στιγμή. Ανοίξτε έναν τίτλο, ξεκινήστε ένα επεισόδιο ή ένα κεφάλαιο και εμφανίζεται εδώ.';

  @override
  String get dcMemberList => 'Στη λίστα μελών';

  @override
  String get dcAccount => 'Λογαριασμός';

  @override
  String get dcSignIn => 'Συνδεθείτε με το Discord';

  @override
  String get dcSignOut => 'Αποσυνδεθείτε';

  @override
  String get dcDesktopHint =>
      'Χωρίς σύνδεση, το Discord εμφανίζει το \"Watching Dartotsu\" μέσω της εφαρμογής επιφάνειας εργασίας. Συνδέστε το Discord για να ονομάσετε τη δραστηριότητα με τον τίτλο σας, ακόμη και στο κινητό.';

  @override
  String get dcMobileHint =>
      'Συνδέστε το Discord για να δείξετε τι παρακολουθείτε ή διαβάζετε. Χρησιμοποιεί τη σελίδα εξουσιοδότησης του Discord, όχι το διακριτικό του λογαριασμού σας.';

  @override
  String get dcConnect => 'Συνδέστε το Discord';

  @override
  String get dcConnectDesc =>
      'Ανοίγει τη σελίδα εξουσιοδότησης του Discord και προσθέτει το Dartotsu στις Εξουσιοδοτημένες εφαρμογές. Το Discord ζητά να ενημερώσει την παρουσία σας. Αποθηκεύεται μόνο ένα διακριτικό ανανέωσης, όχι το διακριτικό του λογαριασμού σας.';

  @override
  String get dcConnectFailed => 'Δεν ήταν δυνατή η σύνδεση του Discord';

  @override
  String get dcConnectedSnack => 'Η διχόνοια συνδέθηκε';

  @override
  String get dcDisconnect => 'Αποσύνδεση';

  @override
  String get dcDisconnectedSnack => 'Η διαφωνία αποσυνδέθηκε';

  @override
  String get dcUseToken => 'Χρησιμοποιήστε ένα διακριτικό αντί';

  @override
  String get dcRouteDesktop =>
      'Μέσω της εφαρμογής επιτραπέζιου υπολογιστή Discord';

  @override
  String get dcRouteHeadless => 'Μέσω του λογαριασμού σας';

  @override
  String get dcRouteGateway => 'Μέσω του λογαριασμού σας, ζωντανά';

  @override
  String get dcRouteLinked => 'Συνδεδεμένη εφαρμογή';

  @override
  String get dcRouteNone => 'Δεν είναι συνδεδεμένο';

  @override
  String get dcStatusNeedsToken =>
      'Χρειάζεται διακριτικό Discord. Η σύνδεση της εφαρμογής δεν ορίζει την κατάστασή σας στο διαδίκτυο.';

  @override
  String get dcAccountOnly => 'Απαιτείται συνδεδεμένος λογαριασμός';

  @override
  String get dcStatusSection => 'Κατάσταση';

  @override
  String get dcControlStatus => 'Έλεγχος της κατάστασής μου';

  @override
  String get dcControlStatusDesc =>
      'Διατηρεί μια ζωντανή σύνδεση με το Discord ενώ το Rich Presence είναι ενεργοποιημένο, ώστε το Dartotsu να μπορεί να ορίσει την κατάστασή σας.';

  @override
  String get dcStatusOnline => 'Διαδικτυακά';

  @override
  String get dcStatusIdle => 'Σε αδράνεια';

  @override
  String get dcStatusDnd => 'Μην ενοχλείτε';

  @override
  String get dcStatusInvisible => 'Αόρατο';

  @override
  String get dcCustomStatus => 'Προσαρμοσμένη κατάσταση';

  @override
  String get dcCustomStatusHint => 'τι κάνεις;';

  @override
  String get dcActivitySection => 'Δραστηριότητα';

  @override
  String get dcShowWatching => 'Εμφάνιση ενώ παρακολουθείτε';

  @override
  String get dcShowReading => 'Εμφάνιση κατά την ανάγνωση';

  @override
  String get dcListening => 'Ακούγοντας';

  @override
  String get dcCompeting => 'Αγωνιστικά';

  @override
  String get dcActivityName => 'Όνομα δραστηριότητας';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Τίτλος';

  @override
  String get dcNameCustom => 'Προσαρμοσμένο';

  @override
  String get dcCustomNameHint =>
      'Το όνομα εμφανίζεται μετά το \"Παρακολούθηση\"';

  @override
  String get dcStatusText => 'Κείμενο κατάστασης';

  @override
  String get dcStatusTextDesc => 'Τι δείχνει η λίστα μελών δίπλα στο όνομά σας';

  @override
  String get dcDisplayName => 'Όνομα';

  @override
  String get dcDisplayState => 'κράτος';

  @override
  String get dcDisplayDetails => 'Λεπτομέρειες';

  @override
  String get dcTextSection => 'Κείμενο';

  @override
  String get dcDetails => 'Κορυφαία γραμμή';

  @override
  String get dcState => 'Κατώτατη γραμμή';

  @override
  String get dcTemplateHint => 'Το Empty χρησιμοποιεί την προεπιλογή';

  @override
  String get dcVariables => 'Πατήστε για να εισαγάγετε μια τιμή';

  @override
  String get dcImagesSection => 'εικόνες';

  @override
  String get dcLargeImage => 'Μεγάλη εικόνα';

  @override
  String get dcLargeAuto => 'Αυτόματο';

  @override
  String get dcLargeCover => 'Εξώφυλλο';

  @override
  String get dcLargeLogo => 'Λογότυπο';

  @override
  String get dcSmallImage => 'Μικρή εικόνα';

  @override
  String get dcSmallAuto => 'Λογότυπο';

  @override
  String get dcSmallNone => 'Κανένα';

  @override
  String get dcTimerStyle => 'Στυλ χρονοδιακόπτη';

  @override
  String get dcTimerAuto => 'Αυτόματο';

  @override
  String get dcTimerElapsed => 'Πέρασε';

  @override
  String get dcTimerRemaining => 'Απομένουν';

  @override
  String get dcButtonsSection => 'Κουμπιά';

  @override
  String get dcButtonMedia => 'Σύνδεσμος στον τίτλο';

  @override
  String get dcButtonApp => 'Σύνδεσμος με Dartotsu';

  @override
  String get dcButtonCustom => 'Προσαρμοσμένο κουμπί';

  @override
  String get dcButtonLabel => 'Ετικέτα';

  @override
  String get dcButtonUrl => 'Σύνδεσμος';

  @override
  String get dcPrivacySection => 'Απόρρητο';

  @override
  String get dcPrivateText => 'Ιδιωτικό κείμενο';

  @override
  String get dcPrivateHint => 'Κάτι ιδιωτικό';

  @override
  String get dcTokenWarning =>
      'Η σύνδεση χρησιμοποιεί το διακριτικό του λογαριασμού σας. Οι κανόνες του Discord το αποθαρρύνουν, επομένως χρησιμοποιήστε το με δική σας ευθύνη.';

  @override
  String get dcConnected => 'Συνδεδεμένος';

  @override
  String get dcConnection => 'Σύνδεση';

  @override
  String get dcMethodDesktop =>
      'Εφαρμογή για επιτραπέζιους υπολογιστές Discord';

  @override
  String get dcMethodDesktopDesc =>
      'Χρησιμοποιείται αυτόματα όταν δεν είναι συνδεδεμένο τίποτα άλλο. Το Discord πρέπει να είναι ανοιχτό σε αυτόν τον υπολογιστή.';

  @override
  String get dcMethodToken => 'Διακριτικό λογαριασμού';

  @override
  String get dcInUse => 'Σε χρήση';

  @override
  String get dcRecommended => 'Συνιστάται';

  @override
  String get dcConnecting => 'Σύνδεση…';

  @override
  String get dcDisconnected => 'Δεν είναι συνδεδεμένο';

  @override
  String dcSignedInAs(String name) {
    return 'Συνδεθήκατε ως $name';
  }

  @override
  String get settingsSyncOn => 'Ενεργό';

  @override
  String get settingsSyncCustom => 'Προσαρμοσμένο';

  @override
  String get settingsSyncChangedHeader => 'Άλλαξαν ρυθμίσεις';

  @override
  String get settingsSyncNoneChanged =>
      'Δεν έχετε αλλάξει τίποτα από αυτά ακόμα, επομένως δεν υπάρχει τίποτα για συγχρονισμό.';

  @override
  String get settingsSyncChangedOnly =>
      'Αποθηκεύονται μόνο οι ρυθμίσεις που έχετε αλλάξει. Όλα τα άλλα χρησιμοποιούν την προεπιλογή τους σε κάθε συσκευή. Το εικονίδιο cloud δείχνει αυτό που υπάρχει ήδη στον διακομιστή.';

  @override
  String get settingsSyncOffCategory =>
      'Δεν συγχρονίζεται. Αυτά παραμένουν σε αυτήν τη συσκευή και το αντίγραφο διακομιστή παραμένει ως έχει.';

  @override
  String get settingsSyncPartsNote =>
      'Ανά συσκευή. Το Off διατηρεί την αξία κάθε συσκευής, επομένως ένα τηλέφωνο και μια τηλεόραση μπορεί να διαφέρουν.';

  @override
  String get settingsSyncPartSubtitles => 'Μέγεθος και χρώματα υπότιτλων';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Μέγεθος, βάρος, χρώματα και θέση';

  @override
  String get settingsSyncPartPictureColors => 'Χρώματα εικόνων';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Φωτεινότητα, αντίθεση, κορεσμός, γάμμα, απόχρωση και HDR';

  @override
  String get settingsSyncPartPalette => 'Χρώματα θέματος';

  @override
  String get settingsSyncPartPaletteDesc =>
      'Θέμα, χρώμα έμφασης και μαύρο OLED';

  @override
  String get settingsSyncCatOther => 'Παρακολουθήστε, διαβάστε και υπηρεσίες';

  @override
  String get settingsSyncTitles => 'Παρακολουθήστε την πρόοδο και τους τίτλους';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records τίτλοι και $resume καταχωρήσεις βιογραφικού στον διακομιστή';
  }

  @override
  String get settingsSyncTitlesNone => 'Δεν έχει ανέβει τίποτα ακόμα';

  @override
  String get settingsSyncTitlesNote =>
      'Θέσεις παρακολούθησης και ανάγνωσης, το ράφι βιογραφικών, οι τοπικές σας λίστες, οι σελιδοδείκτες, οι καλύτερες στιγμές και οι επιλογές ανά τίτλο. Οι αντιστοιχίσεις πηγών και οι ροές παραμένουν σε κάθε συσκευή επειδή εξαρτώνται από τις επεκτάσεις σας. Οι τίτλοι ανεβαίνουν το πολύ κάθε 45 δευτερόλεπτα.';

  @override
  String get settingsSyncConnect => 'Δεν είναι συνδεδεμένο';

  @override
  String get settingsSyncConnectDesc =>
      'Συνδεθείτε με το GitHub για να διατηρήσετε τις ρυθμίσεις σας ίδιες σε κάθε συσκευή.';

  @override
  String get settingsSyncFailedTitle => 'Ο συγχρονισμός απέτυχε';

  @override
  String get settingsSyncPaused => 'Σε παύση';

  @override
  String get settingsSyncPausedDesc =>
      'Δεν γίνεται μεταφόρτωση ή λήψη τίποτα ενώ αυτό είναι απενεργοποιημένο.';

  @override
  String get settingsSyncUpToDate => 'Επίκαιρο';

  @override
  String get settingsSyncRetry => 'Επανάληψη';

  @override
  String get settingsSyncAccount => 'Λογαριασμός GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'Τα δεδομένα σας πηγαίνουν σε μια ιδιωτική ουσία στον δικό σας λογαριασμό.';

  @override
  String get settingsSyncWaiting => 'Αναμονή για έγκριση στο GitHub';

  @override
  String get settingsSyncCopyCode =>
      'Πατήστε τον κωδικό για να τον αντιγράψετε';

  @override
  String get settingsSyncCancel => 'Ακύρωση';

  @override
  String get settingsSyncStatSettings => 'Ρυθμίσεις';

  @override
  String get settingsSyncStatTitles => 'Τίτλοι';

  @override
  String get settingsSyncStatShelf => 'Βιογραφικό';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Μεταφορτώθηκε $time από $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count άλλαξε',
      one: '1 άλλαξε',
      zero: 'Τίποτα δεν έχει αλλάξει ακόμα',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Λογαριασμοί και κωδικοί πρόσβασης';

  @override
  String get settingsSyncSecretsDesc =>
      'Συγχρονίστε τις συνδέσεις σας (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), τα κλειδιά API και το κλείδωμα εφαρμογών μεταξύ των συσκευών σας. Είναι κρυπτογραφημένα με μια φράση πρόσβασης που παραμένει στις συσκευές σας, επομένως το GitHub δεν τα βλέπει ποτέ.';

  @override
  String get settingsSyncSecretsOn =>
      'Οι λογαριασμοί συγχρονίζονται και κρυπτογραφούνται';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Η αποσύνδεση σε μια συσκευή δεν σας αποσυνδέει στις άλλες.';

  @override
  String get settingsSyncSecretsBroken =>
      'Η φράση πρόσβασης δεν ταιριάζει πλέον με αυτή του διακομιστή. Εισαγάγετε το ξανά για να συνεχίσετε να συγχρονίζετε τους λογαριασμούς.';

  @override
  String get settingsSyncPassphraseSet => 'Ορίστε μια φράση πρόσβασης';

  @override
  String get settingsSyncPassphraseEnter => 'Εισαγάγετε τη φράση πρόσβασής σας';

  @override
  String get settingsSyncPassphraseField => 'Φράση πρόσβασης';

  @override
  String get settingsSyncPassphraseConfirm => 'Επαναλάβετε τη φράση πρόσβασης';

  @override
  String get settingsSyncPassphraseNew =>
      'Επιλέξτε μια φράση πρόσβασης τουλάχιστον 6 χαρακτήρων. Δεν αποθηκεύεται πουθενά εκτός από τις συσκευές σας και δεν μπορεί να ανακτηθεί. Εάν το ξεχάσετε, διαγράψτε το αντίγραφο διακομιστή και ξεκινήστε ξανά.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Εισαγάγετε τη φράση πρόσβασης που επιλέξατε στην άλλη συσκευή σας. Οι λογαριασμοί σε αυτήν τη συσκευή θα αντικατασταθούν από τους συγχρονισμένους.';

  @override
  String get settingsSyncPassphraseWrong => 'Λανθασμένη φράση πρόσβασης';

  @override
  String get settingsSyncPassphraseMismatch =>
      'Οι φράσεις πρόσβασης δεν ταιριάζουν';

  @override
  String get settingsSyncPassphraseShort =>
      'Χρησιμοποιήστε τουλάχιστον 6 χαρακτήρες';

  @override
  String get settingsSyncSecretsStop => 'Διακοπή συγχρονισμού λογαριασμών';

  @override
  String get settingsSyncSecretsDelete => 'Διαγραφή από το GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Αυτό αφαιρεί το αρχείο κρυπτογραφημένων λογαριασμών από την ουσία σας. Άλλες συσκευές διατηρούν τις συνδέσεις τους και μπορούν να ορίσουν μια νέα φράση πρόσβασης.';

  @override
  String get settingsSyncWhat => 'Τι να συγχρονίσετε';

  @override
  String get settingsSyncServer => 'Στον διακομιστή';

  @override
  String get settingsSyncServerEmpty => 'Δεν έχει ανέβει τίποτα ακόμα';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return 'Ρυθμίσεις $count, μεταφορτώθηκαν $time από $device';
  }

  @override
  String get settingsSyncThisDevice => 'αυτή τη συσκευή';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ρυθμίσεις $count στον διακομιστή',
      one: '1 ρύθμιση στον διακομιστή',
      zero: 'Τίποτα στον διακομιστή',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Συγχρονισμός τώρα';

  @override
  String get settingsSyncRunning => 'Συγχρονισμός…';

  @override
  String get settingsSyncNever => 'Δεν έχει συγχρονιστεί ακόμα';

  @override
  String settingsSyncLast(Object time) {
    return 'Τελευταίος συγχρονισμός $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Ο συγχρονισμός απέτυχε: $error';
  }

  @override
  String get settingsSyncScope =>
      'Συγχρονίζονται μόνο οι ρυθμίσεις που λειτουργούν το ίδιο παντού. Οι λογαριασμοί, τα διακριτικά, οι φάκελοι, οι επεκτάσεις, οι ειδοποιήσεις, το Discord, οι ενημερώσεις και το μέγεθος παραθύρου παραμένουν σε κάθε συσκευή.';

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
  String get autoUpdateRuntimes =>
      'Ενημερώστε αυτόματα τους χρόνους εκτέλεσης επεκτάσεων';

  @override
  String get autoUpdateRuntimesDesc =>
      'Κατεβάστε νέες εκδόσεις Aniyomi, CloudStream και άλλες εκδόσεις χρόνου εκτέλεσης στο παρασκήνιο. Ανενεργό, εμφανίζεται ένα εικονίδιο ενημέρωσης δίπλα στον διαχειριστή.';

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
  String get backupPasswordRequired =>
      'Κωδικός πρόσβασης (απαιτείται για δεδομένα λογαριασμού)';

  @override
  String get backupProtectedNeedsPassword =>
      'Ορίστε έναν κωδικό πρόσβασης για να δημιουργήσετε αντίγραφα ασφαλείας των δεδομένων λογαριασμού ή αποεπιλέξτε τον';

  @override
  String get backupProtectedSkipped =>
      'Αυτό το αντίγραφο ασφαλείας δεν έχει κωδικό πρόσβασης, επομένως τα δεδομένα του λογαριασμού του παραβλέφθηκαν';

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
  String get logDelete => 'Διαγραφή αρχείων καταγραφής';

  @override
  String get logDeleteDesc =>
      'Διαγράψτε τα αποθηκευμένα αρχεία καταγραφής εφαρμογών για να ελευθερώσετε χώρο';

  @override
  String logDeleted(String size) {
    return 'Διαγράφηκαν $size αρχεία καταγραφής';
  }

  @override
  String get missingSequel => 'Λείπει η συνέχεια';

  @override
  String get rising => 'Ανεβαίνει';

  @override
  String get stacks => 'Στοίβες';

  @override
  String get stacksAll => 'Όλα';

  @override
  String get stacksFeatured => 'Προτεινόμενα';

  @override
  String get stacksMine => 'Το δικό σου';

  @override
  String get stacksSaved => 'Αποθηκεύτηκε';

  @override
  String get stacksFollowing => 'Ακολουθώντας';

  @override
  String get stacksEmpty => 'Δεν υπάρχουν στοίβες εδώ ακόμα';

  @override
  String get stacksSignIn =>
      'Συνδεθείτε στο MangaBaka για να δείτε τις στοίβες σας';

  @override
  String get stacksScopeNeeded =>
      'Οι στοίβες σας χρειάζονται νέα άδεια. Συνδεθείτε ξανά στο MangaBaka για να το επιτρέψετε.';

  @override
  String get stacksSignInAgain => 'Συνδεθείτε ξανά';

  @override
  String get stacksCouldntLoad => 'Δεν ήταν δυνατή η φόρτωση των στοίβων';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Σειρά $count',
      one: '1 σειρά',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αποθηκεύει',
      one: '1 αποθήκευση',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'από $name';
  }

  @override
  String get stackSpoilers => 'Σπόιλερ';

  @override
  String get stackEmptyEntries => 'Αυτή η στοίβα είναι άδεια';

  @override
  String get stackSave => 'Αποθήκευση στοίβας';

  @override
  String get stackUnsave => 'Κατάργηση από αποθηκευμένο';

  @override
  String get stackSavedToast => 'Αποθηκεύτηκε στις στοίβες σας';

  @override
  String get stackRemovedToast =>
      'Καταργήθηκε από τις αποθηκευμένες στοίβες σας';

  @override
  String userStacks(String name) {
    return 'Στοίβες κατά $name';
  }

  @override
  String get newsTitle => 'Νέα';

  @override
  String get newsEmpty => 'Δεν υπάρχουν νέα αυτή τη στιγμή';

  @override
  String get newsCouldntLoad => 'Δεν ήταν δυνατή η φόρτωση των ειδήσεων';

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
  String get followCoverMediaOnly => 'Μόνο για ΜΜΕ';

  @override
  String get followCoverMediaOnlyDesc =>
      'Ακολουθήστε το εξώφυλλο μόνο σε σελίδες πολυμέσων, όπου αλλού διατηρούνται τα κανονικά χρώματα';

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
  String get alpha => 'Άλφα';

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
  String get proxy => 'Αντιπρόσωπος';

  @override
  String get proxyProtocol => 'Τύπος';

  @override
  String get proxyHost => 'οικοδεσπότης';

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
  String get imageTitlePage => 'Σελίδα';

  @override
  String get imageTitleBanner => 'Πανό';

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
  String get supportDeveloper => 'Υποστηρίξτε τον προγραμματιστή';

  @override
  String get buyMeCoffee => 'Αγόρασέ μου έναν καφέ';

  @override
  String get upiId => 'Αναγνωριστικό UPI';

  @override
  String get upiCopied => 'Το αναγνωριστικό UPI αντιγράφηκε';

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
  String get onboardingLanguageBody =>
      'Επιλέξτε τη γλώσσα στην οποία εμφανίζεται το Dartotsu. Μπορείτε να την αλλάξετε αργότερα στις Ρυθμίσεις.';

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
    return 'Κεφάλαιο $n';
  }

  @override
  String get calendarExpected => 'Αναμενόμενο';

  @override
  String get castReceiverFailed =>
      'Το Chromecast δεν ξεκίνησε το πρόγραμμα αναπαραγωγής του';

  @override
  String get castPlaybackFailed =>
      'Η συσκευή δεν μπόρεσε να παίξει αυτήν τη ροή';

  @override
  String get shortcutNothingToContinue => 'Τίποτα για συνέχεια';

  @override
  String shortcutNoCalendar(String service) {
    return 'Το $service δεν έχει ημερολόγιο';
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
  String get comickLoginFailed => 'Η σύνδεση Comick απέτυχε';

  @override
  String get tagline => 'Περιγραφή';

  @override
  String get trending => 'Τάσεις';

  @override
  String get anticipated => 'Αναμενόμενο';

  @override
  String get watchlist => 'Λίστα παρακολούθησης';

  @override
  String get recommendedShows => 'Προτεινόμενες εκπομπές';

  @override
  String get recommendedMovies => 'Προτεινόμενες ταινίες';

  @override
  String get boxOffice => 'Ταμείο';

  @override
  String get popularMovies => 'Δημοφιλείς ταινίες';

  @override
  String get popularShows => 'Δημοφιλείς εκπομπές';

  @override
  String get anticipatedMovies => 'Αναμενόμενες ταινίες';

  @override
  String get anticipatedShows => 'Αναμενόμενες παραστάσεις';

  @override
  String get trendingShows => 'Τάσεις εκπομπών';

  @override
  String get mostWatchedThisWeek =>
      'Οι περισσότερες προβολές αυτή την εβδομάδα';

  @override
  String get sortMostViewed => 'Οι περισσότερες προβολές';

  @override
  String get sortMostFollowed => 'Οι περισσότεροι ακολούθησαν';

  @override
  String get sortLatestUpdates => 'Τελευταίες ενημερώσεις';

  @override
  String get translationStatusLabel => 'Μετάφραση';

  @override
  String get weeklySchedule => 'Εβδομαδιαίο Πρόγραμμα';

  @override
  String get mostFollowed => 'Οι περισσότεροι ακολουθούμενοι';

  @override
  String get latestUpdates => 'Τελευταίες ενημερώσεις';

  @override
  String get trendingAnime => 'Τάσεις Anime';

  @override
  String get topRatedAnime => 'Anime με κορυφαία βαθμολογία';

  @override
  String get mostFollowedAnime => 'Anime με τα περισσότερα follow';

  @override
  String get comickProfile => 'Κωμικό προφίλ';

  @override
  String get refreshFromComick => 'Ανανέωση από την Comick';

  @override
  String get mangaBakaProfile => 'Προφίλ MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Ανανέωση από το MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Συνδεθείτε στο MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'Προφίλ MangaUpdates';

  @override
  String get mangaUpdatesAnimeStart => 'Ξεκινά η προσαρμογή του anime';

  @override
  String get mangaUpdatesAnimeEnd => 'Η προσαρμογή του anime τελειώνει';

  @override
  String get refreshFromMangaUpdates => 'Ανανέωση από το MangaUpdates';

  @override
  String get usernameOnly => 'Όνομα χρήστη';

  @override
  String get releases => 'Εκδόσεις';

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
  String get hideNsfwSourcesDesc =>
      'Απόκρυψη πηγών με επισήμανση 18+ από τις ροές και τον επιλογέα πηγής. Μένουν εγκατεστημένα.';

  @override
  String get hideNsfwDesc =>
      'Κράτα τους τίτλους ενηλίκων εκτός ροών και αναζήτησης και δες τις δικές σου εγγραφές ενηλίκων στα Κρυμμένα μέσα.';

  @override
  String get kitsuAccountOptions => 'Επιλογές λογαριασμού Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Επιλογές λογαριασμού MangaBaka';

  @override
  String get comickAccountOptions => 'Επιλογές λογαριασμού Comick';

  @override
  String get comickClientId => 'Αναγνωριστικό πελάτη Comick';

  @override
  String get comickClientIdDesc =>
      'Προσαρμοσμένο αναγνωριστικό πελάτη καταχωρημένο στο comick.dev';

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
  String get traktReadOnly =>
      'Παραχωρήθηκε στο Trakt πρόσβαση μόνο για ανάγνωση';

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
  String get followsMutual => 'Αμοιβαία';

  @override
  String get followsNotMutual => 'Όχι αμοιβαία';

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
  String get voiceActors => 'Ηθοποιοί φωνής';

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
  String get prequel => 'Prequel';

  @override
  String get sequel => 'συνέχεια';

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
  String get traktProfile => 'Προφίλ Trakt';

  @override
  String get refreshFromSimkl => 'Ανανέωση από το Simkl';

  @override
  String get refreshFromTrakt => 'Ανανέωση από το Trakt';

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
  String get traktAttribution =>
      'Δεδομένα και έργα τέχνης παρέχονται από την Trakt. Προβολή στο Trakt';

  @override
  String get listsLiked => 'Άρεσε';

  @override
  String get listsYours => 'Το δικό σου';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Μέλος VIP Trakt';

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
  String get simklMoviesOnly => 'Μόνο ταινίες και σειρές';

  @override
  String get simklMoviesOnlyDesc =>
      'Αντικαθιστά την καρτέλα Anime: Πρώτα ταινίες και μετά Εμφανίζεται με μερικές σειρές anime';

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
  String get trailer => 'Τρέιλερ';

  @override
  String get trailerQuality => 'Ποιότητα τρέιλερ';

  @override
  String get titleCopied => 'Ο τίτλος αντιγράφηκε';

  @override
  String get linkCopied => 'Ο σύνδεσμος αντιγράφηκε';

  @override
  String get watchTrailer => 'Προβολή trailer';

  @override
  String get copyTitle => 'Αντιγραφή τίτλου';

  @override
  String get detailStale =>
      'Δεν ήταν δυνατή η πρόσβαση στο AniList. Αυτές είναι αποθηκευμένες πληροφορίες και ενδέχεται να είναι παλιές.';

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
  String get allCustomLists => 'Όλες οι προσαρμοσμένες λίστες';

  @override
  String get simklTitleLanguage => 'Γλώσσα τίτλου anime';

  @override
  String get titleLanguageEnglish => 'Αγγλικά';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Τάσεις';

  @override
  String get simklListsMostLiked => 'Τα πιο αρεστά';

  @override
  String get simklListsMostFollowed => 'Οι περισσότεροι ακολούθησαν';

  @override
  String get simklListsOfficial => 'Επίσημος';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count τίτλοι',
      one: '1 τίτλος',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Άνθρωποι';

  @override
  String get mostComments => 'Τα περισσότερα σχόλια';

  @override
  String get alphabetical => 'Αλφαβητικά';

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
  String get notInList => 'Όχι στη λίστα';

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
  String get animePlanetRank => 'Κατάταξη';

  @override
  String get animePlanetMagazine => 'Περιοδικό';

  @override
  String get animePlanetRefreshLists => 'Ανανεώστε τις λίστες σας';

  @override
  String get animePlanetRefreshListsDesc =>
      'Διαβάστε ξανά τις λίστες Anime-Planet';

  @override
  String get animePlanetLocalNote =>
      'Συνδεθείτε για να αποθηκεύσετε τις αλλαγές στον λογαριασμό σας στο Anime-Planet. Μέχρι τότε παραμένουν σε αυτή τη συσκευή';

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
  String get novel => 'Μυθιστόρημα';

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
  String get firstTab => 'Πρώτη καρτέλα';

  @override
  String get firstTabDesc =>
      'Ποιες επεκτάσεις δείχνει η πρώτη καρτέλα. Επιλέξτε manga εδώ και μυθιστόρημα στην καρτέλα ανάγνωσης για να αποσύρετε anime από τη γραμμή';

  @override
  String get novelExtensions => 'Επεκτάσεις μυθιστορήματος';

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
  String get openings => 'Ανοίγματα';

  @override
  String get endings => 'Καταλήξεις';

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
  String get year => 'έτος';

  @override
  String get filterAny => 'Οποιαδήποτε';

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
  String get unfinished => 'Ημιτελής';

  @override
  String get planned => 'Σχεδιασμένο';

  @override
  String get trailers => 'Ρυμουλκούμενα';

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
  String get tags => 'Ετικέτες';

  @override
  String get author => 'Συγγραφέας';

  @override
  String get born => 'Γεννήθηκε';

  @override
  String get died => 'Πέθανε';

  @override
  String get birthplace => 'Τόπος γέννησης';

  @override
  String get department => 'Τμήμα';

  @override
  String get website => 'Ιστότοπος';

  @override
  String get established => 'Ιδρύθηκε';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Μυθιστορήματα';

  @override
  String get thisMonth => 'Αυτόν τον μήνα';

  @override
  String get movies => 'Ταινίες';

  @override
  String get shows => 'Σειρές';

  @override
  String get moviesWatched => 'Ταινίες που παρακολουθήθηκαν';

  @override
  String get showsWatched => 'Εκπομπές που παρακολουθήθηκαν';

  @override
  String get moviesCollected => 'Συλλογή ταινιών';

  @override
  String get showsCollected => 'Εμφανίσεις που συλλέγονται';

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
  String get sortAz => 'A–Z';

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
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

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
    return 'Προσθήκη αυτού του αποθετηρίου;\n\n$url\n\nΠροσθέστε αποθετήρια μόνο από πηγές που εμπιστεύεστε.';
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
  String updatePluginTitle(String name) {
    return 'Ενημέρωση $name';
  }

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
  String syncServiceOn(String name) {
    return 'Συγχρονισμός με $name';
  }

  @override
  String get syncDelete => 'Διαγράψτε ό,τι δεν έχει η κύρια υπηρεσία';

  @override
  String get syncDeleteDesc =>
      'Καταργήστε καταχωρήσεις από τις άλλες υπηρεσίες που δεν βρίσκονται στην κύρια λίστα. Καταργούνται μόνο οι καταχωρίσεις που μπορούν να αντιστοιχιστούν σε έναν τίτλο, οπότε πράγματα όπως οι ταινίες και οι σειρές Simkl παραμένουν';

  @override
  String get syncDeleteTitle => 'Διαγραφή καταχωρήσεων;';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count καταχωρήσεις',
      one: '1 καταχώρηση',
    );
    return '$_temp0 που δεν βρίσκονται στην κύρια λίστα σας θα διαγραφούν από τις άλλες υπηρεσίες. Αυτό δεν μπορεί να αναιρεθεί.';
  }

  @override
  String get syncDeleteAction => 'Διαγραφή';

  @override
  String get syncToDelete => 'Για διαγραφή';

  @override
  String get syncDeletedNote => 'Θα διαγραφεί';

  @override
  String syncWillRemove(int count, String name) {
    return '$count θα διαγραφεί από $name';
  }

  @override
  String get syncOnlyForward => 'Διατήρηση μεγαλύτερης προόδου';

  @override
  String get syncOnlyForwardDesc =>
      'Μην μειώνεις την πρόοδο υπηρεσίας που είναι ήδη μπροστά';

  @override
  String get animePlanetWontWatch => 'Δεν θα παρακολουθήσει';

  @override
  String get animePlanetWontRead => 'Δεν θα διαβάσει';

  @override
  String get animePlanetAlreadyOnList => 'Ήδη σε αυτή τη λίστα';

  @override
  String get animePlanetNewList => 'Νέο όνομα λίστας';

  @override
  String get syncPrivate => 'Ιδιωτικές καταχωρήσεις';

  @override
  String get syncPrivateDesc =>
      'Τι να κάνετε με καταχωρήσεις που κρατάτε ιδιωτικές. Μια υπηρεσία με ιδιωτική επιλογή τα καθιστά ιδιωτικά. άλλοι θα τα έδειχναν δημόσια';

  @override
  String get syncPrivateModeAsk => 'Ρωτήστε';

  @override
  String get syncPrivateModeSync => 'Συγχρονίστε τα';

  @override
  String get syncPrivateModeSkip => 'Περάστε τα';

  @override
  String get syncPrivateTitle => 'Ιδιωτικές καταχωρήσεις';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Οι καταχωρήσεις $count είναι ιδιωτικές',
      one: '1 καταχώρηση είναι ιδιωτική',
    );
    return '$_temp0. Οι υπηρεσίες με ιδιωτική επιλογή (AniList, Kitsu, MangaBaka) θα τις λάβουν ως ιδιωτικές. οι άλλες υπηρεσίες δεν έχουν ιδιωτική επιλογή και θα τις έδειχναν δημόσια. Συγχρονισμός τους; Η απάντησή σας θυμάται. αλλάξτε το στις Επιλογές συγχρονισμού.';
  }

  @override
  String get syncPrivateInclude => 'Συγχρονίστε τα';

  @override
  String get syncPrivateSkip => 'Περάστε τα';

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
  String syncRemoved(String services) {
    return 'Καταργήθηκε από $services';
  }

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
  String get commentsTagButton => 'Ετικέτα';

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
  String get commentsSpoiler => 'Σπόιλερ';

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
  String get themesTitle => 'Ανοίγματα & τελειώματα';

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
  String get groupsRoleAdmin => 'Διαχειρ';

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
  String get notificationsLikes => 'Μου αρέσει';

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
  String get sourceTags => 'Ετικέτες';

  @override
  String get sourceTagsHint =>
      'Προσθέστε ετικέτα σε τι χρησιμεύει αυτή η πηγή. Ένας τίτλος παραθέτει πρώτα τις πηγές που έχουν επισημανθεί για αυτόν και μετά εκείνες χωρίς ετικέτα. 18+ πηγές εμφανίζονται μόνο για τίτλους ενηλίκων.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Ταινίες & Σειρές';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Κρυμμένο από ετικέτες';

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
  String get watchFiller => 'Γεμιστικό';

  @override
  String get watchRecap => 'Ανακεφαλαίωση';

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
  String get watchFailTimeout => 'Ο έλεγχος δεν τελείωσε εγκαίρως';

  @override
  String get watchFailBlocked =>
      'Ο ιστότοπος απέκλεισε αυτήν τη συσκευή (δεν επιτρέπεται η πρόσβαση). Ένας έλεγχος δεν θα βοηθήσει';

  @override
  String get watchFailTurnstile =>
      'Αυτός ο έλεγχος χρειάζεται ένα πάτημα που δεν μπορεί να κάνει η λύση επίλυσης παρασκηνίου';

  @override
  String get watchFailLoad =>
      'Η σελίδα δεν φορτώθηκε. Ελέγξτε τη σύνδεση και τη διεύθυνση του ιστότοπου';

  @override
  String get watchFailRejected =>
      'Ο ιστότοπος απέρριψε την άδεια που μόλις έδωσε. Δοκιμάστε ξανά ή διαγράψτε τα cookies';

  @override
  String get watchFailDismissed => 'Ο έλεγχος έκλεισε πριν ολοκληρωθεί';

  @override
  String get watchFailCooldown =>
      'Κλείσατε την επιταγή πριν από λίγο. Πατήστε Επίλυση για να προσπαθήσετε ξανά';

  @override
  String get watchFailQuiet =>
      'Ο έλεγχος σας χρειάζεται και η εφαρμογή λειτουργούσε από μόνη της';

  @override
  String get watchFailWebView =>
      'Δεν ήταν δυνατή η εκκίνηση της προβολής ιστού φόντου';

  @override
  String get watchFailUnavailable =>
      'Δεν υπάρχει οθόνη για την εμφάνιση του ελέγχου';

  @override
  String get watchStatusReady => 'Έτοιμοι';

  @override
  String get watchStatusChallenge => 'Απαιτείται έλεγχος Cloudflare';

  @override
  String get watchStatusBlocked => 'Αποκλείστηκε από τον ιστότοπο';

  @override
  String get watchStatusOffline => 'Δεν είναι δυνατή η πρόσβαση στον ιστότοπο';

  @override
  String get watchStatusUntested => 'Δεν έχει δοκιμαστεί ακόμα';

  @override
  String get watchStatusTesting => 'Δοκιμή της σύνδεσης…';

  @override
  String get watchStatusSolving => 'Περνώντας τον έλεγχο του Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Ο έλεγχος Cloudflare πέρασε στο παρασκήνιο ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Ο έλεγχος Cloudflare πέρασε';

  @override
  String watchClearanceIssued(String time) {
    return 'κέρδισε $time';
  }

  @override
  String get watchClearanceStale =>
      'Η εκκαθάριση αποκτήθηκε με άλλον παράγοντα χρήστη, επομένως δεν αποστέλλεται. Δοκιμάστε τη σύνδεση για να αποκτήσετε μια νέα';

  @override
  String get watchSectionConnection => 'Σύνδεση';

  @override
  String get watchSectionSession => 'συνεδρία';

  @override
  String get watchSectionTools => 'Εργαλεία';

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
  String get localSource => 'Τοπικά αρχεία';

  @override
  String get localMissing =>
      'Αυτό το αρχείο ή ο φάκελος δεν βρίσκεται πλέον στον Τοπικό σας φάκελο';

  @override
  String get playerStickyStage => 'Κολλώδες βίντεο';

  @override
  String get playerStickyStageDesc =>
      'Κρατήστε το βίντεο σταθερό στην κορυφή ενώ κάνετε κύλιση στα επεισόδια και τα σχόλια παρακάτω';

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
  String get playerDisableSkips => 'Απενεργοποιήστε τις παραλείψεις';

  @override
  String get playerDisableSkipsDesc =>
      'Δεν υπάρχουν χρονικές σημάνσεις AniSkip ή ροή, σημάδια κεφαλαίων ή παράβλεψη υποβολών στο πρόγραμμα αναπαραγωγής';

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
  String get playerSubtitleOutlineWidth => 'Πλάτος περιγράμματος υποτίτλων';

  @override
  String get playerSubtitlePreview => 'Προεπισκόπηση υπότιτλων';

  @override
  String get playerSubtitlePreviewText => 'Κείμενο προεπισκόπησης υπότιτλων';

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
  String get playerPictureSave => 'Αποθηκεύστε αυτό το πλαίσιο';

  @override
  String get playerPictureOriginal => 'Πρωτότυπο';

  @override
  String get playerPictureOriginalDesc =>
      'Το καρέ όπως το έχει το βίντεο, χωρίς σκίαστρες ή χρώματα';

  @override
  String get playerPictureProcessed => 'Με σκίαστρες και χρώματα';

  @override
  String get playerPictureProcessedDesc => 'Το πλαίσιο όπως το βλέπετε τώρα';

  @override
  String get playerPictureSaved => 'Το πλαίσιο αποθηκεύτηκε';

  @override
  String get playerPictureSaveFailed =>
      'Δεν ήταν δυνατή η αποθήκευση του πλαισίου';

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
  String get playerColorGamma => 'Γάμμα';

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
      'Τα Shaders χρειάζονται απόδοση υλικού και η συσκευή αναπαραγωγής χρησιμοποιεί απόδοση λογισμικού. Απενεργοποιήστε την απόδοση λογισμικού στις ρυθμίσεις του προγράμματος αναπαραγωγής.';

  @override
  String get playerSoftwareRender => 'Απόδοση λογισμικού';

  @override
  String get playerSoftwareRenderDesc =>
      'Μόνο για μαύρο βίντεο. Τα Shaders δεν λειτουργούν με αυτό. Εφαρμόζεται την επόμενη φορά που θα ανοίξει η συσκευή αναπαραγωγής';

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
  String get playerScale => 'Αναβαθμιστής';

  @override
  String get playerCscale => 'Chroma upscaler';

  @override
  String get playerDscale => 'Μειωμένη κλίμακα';

  @override
  String get playerToneMapping => 'Χαρτογράφηση τόνου';

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
  String get streamGroupSub => 'Υπ';

  @override
  String get streamGroupHardSub => 'Hard Sub';

  @override
  String get streamGroupSoftSub => 'Soft Sub';

  @override
  String get streamGroupDub => 'Μεταγλ';

  @override
  String get streamGroupRaw => 'Ακατέργαστο';

  @override
  String get streamGroupOther => 'Άλλο';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ροές',
      one: '1 ρεύμα',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Ρεύματα';

  @override
  String get playerStreamFailedNext =>
      'Αυτή η ροή δεν θα παίξει, δοκιμάστε την επόμενη';

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
  String get readerOpenBook => 'Άνοιξε ένα βιβλίο';

  @override
  String get readerOpenBookDesc =>
      'Διαβάστε ένα epub (αναγνώστης μυθιστορημάτων) ή ένα PDF (αναγνώστης manga) από τα αρχεία σας';

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
  String get readerSectionNovel => 'Μυθιστόρημα';

  @override
  String get readerMode => 'Λειτουργία ανάγνωσης';

  @override
  String get readerModeAuto => 'Αυτόματο (κατά τύπο σειράς)';

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
  String get readerFilterQuality => 'Ποιότητα φίλτρου εικόνας';

  @override
  String get readerFilterQualityNone => 'Κανένα (Κοντινότερος γείτονας)';

  @override
  String get readerFilterQualityLow => 'Χαμηλή (Διγραμμική)';

  @override
  String get readerFilterQualityMedium => 'Μεσαίο (Τριγραμμικό)';

  @override
  String get readerFilterQualityHigh => 'Υψηλό (Δικυβικό)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Σκουριά υψηλής ποιότητας)';

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
  String get readerLongPressSave =>
      'Κρατήστε μια σελίδα για να την αποθηκεύσετε';

  @override
  String get readerLongPressSaveDesc =>
      'Πατήστε παρατεταμένα μια σελίδα για να ανοίξετε τις επιλογές αποθήκευσης, κοινής χρήσης και αντιγραφής';

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
  String get readerResetConfirm =>
      'Επαναφορά κάθε ρύθμισης αναγνώστη στην προεπιλογή;';

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
    return 'Αποθηκεύστε την πρόοδό σας στο $name στη λίστα σας σε αυτήν τη συσκευή καθώς παρακολουθείτε;';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Αποθηκεύστε την πρόοδό σας στο $name στη λίστα σας σε αυτήν τη συσκευή όταν ολοκληρώσετε ένα κεφάλαιο;';
  }

  @override
  String get downloadClearQueue => 'Καθαρίστε την ουρά';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Να ακυρωθούν όλες οι λήψεις $count στην ουρά; Ό,τι έχει ήδη ληφθεί διαγράφεται.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count επιλεγμένο';
  }

  @override
  String get downloadSelectAll => 'Επιλέξτε όλα';

  @override
  String get downloadDeleteSelected => 'Διαγραφή επιλεγμένων';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Διαγραφή $count λήψεων; Τα αρχεία τους αφαιρούνται από τη συσκευή.';
  }

  @override
  String get castTitle => 'Μετάδοση στη συσκευή';

  @override
  String get castSearching => 'Αναζήτηση συσκευών στο δίκτυό σας…';

  @override
  String get castNoDevices =>
      'Δεν βρέθηκαν συσκευές. Βεβαιωθείτε ότι η τηλεόραση ή το Chromecast είναι στο ίδιο Wi-Fi και, στη συνέχεια, πραγματοποιήστε αναζήτηση ξανά.';

  @override
  String get castRefresh => 'Αναζήτηση ξανά';

  @override
  String get castFailed => 'Δεν ήταν δυνατή η έναρξη της μετάδοσης';

  @override
  String get castStop => 'Σταματήστε τη μετάδοση';

  @override
  String castNowCasting(String name) {
    return 'Μετάδοση σε $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote =>
      'Ο Roku δεν μπορεί να αναφέρει ή να αλλάξει τη θέση';

  @override
  String get castControls => 'Έλεγχοι';

  @override
  String get castVolume => 'Ένταση της τηλεόρασης';

  @override
  String castSkipPart(String name) {
    return 'Παράλειψη $name';
  }

  @override
  String get trackProgressRememberSeries => 'Θυμηθείτε για αυτή τη σειρά';

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
  String get themePickerTitle => 'Θέμα';

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
  String togetherLinkConfirm(String room) {
    return 'Εγγραφείτε στο δωμάτιο $room; Ο οικοδεσπότης επιλέγει τι παίζει και ο παίκτης ανοίγει μόνος του όταν αρχίσει να παρακολουθεί.';
  }

  @override
  String get togetherJoin => 'Εγγραφείτε';

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
  String get togetherShareInvite => 'Κοινή χρήση πρόσκλησης';

  @override
  String togetherShareText(String link) {
    return 'Παρακολουθήστε μαζί μου στο Dartotsu: $link';
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
  String get novelPaged => 'Γυρίζοντας σελίδα';

  @override
  String get novelPagedDesc =>
      'Διαχωρίστε το κεφάλαιο σε σελίδες και σύρετε ή πατήστε για να τις περιστρέψετε αντί να κάνετε κύλιση';

  @override
  String novelPageOf(int current, int total) {
    return 'Σελίδα $current από $total';
  }

  @override
  String get novelPaginating => 'Διάταξη σελίδων';

  @override
  String get novelTools => 'Περιεχόμενα, αναζήτηση και επισημάνσεις';

  @override
  String get novelContents => 'Περιεχόμενα';

  @override
  String get novelContentsEmpty => 'Αυτό το κεφάλαιο δεν έχει τίτλους';

  @override
  String get novelSearch => 'Αναζήτηση';

  @override
  String get novelSearchHint => 'Αναζήτηση σε αυτό το κεφάλαιο';

  @override
  String get novelSearchNone => 'Χωρίς αγώνες';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count αγώνες',
      one: '1 αγώνα',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Σημαντικά σημεία';

  @override
  String get novelHighlightsEmpty =>
      'Επιλέξτε κάποιο κείμενο και πατήστε Επισήμανση για να το διατηρήσετε εδώ';

  @override
  String get novelHighlight => 'Επισήμανση';

  @override
  String get novelHighlightNote => 'Σημείωση';

  @override
  String get novelHighlightNoteHint => 'Προσθέστε μια σημείωση';

  @override
  String get novelHighlightRemove => 'Κατάργηση επισήμανσης';

  @override
  String get novelHighlightFailed =>
      'Δεν ήταν δυνατή η αντιστοίχιση αυτής της επιλογής στο κείμενο';

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
  String get playerSkipSubmit => 'Υποβολή χρόνους παράλειψης';

  @override
  String get playerSkipSubmitDesc =>
      'Σημειώστε πού αρχίζει και τελειώνει το άνοιγμα, το τέλος ή η ανακεφαλαίωση σε αυτό το επεισόδιο και μοιραστείτε το με το AniSkip, ώστε όλοι να έχουν το κουμπί παράβλεψης.';

  @override
  String get playerSkipStart => 'Έναρξη';

  @override
  String get playerSkipEnd => 'Τέλος';

  @override
  String get playerSkipUseNow => 'Χρησιμοποιήστε την τρέχουσα θέση';

  @override
  String get playerSkipSend => 'Υποβολή στο AniSkip';

  @override
  String get playerSkipSent =>
      'Οι χρόνοι παράλειψης που υποβλήθηκαν στο AniSkip, σας ευχαριστούμε';

  @override
  String playerSkipFailed(String error) {
    return 'Η AniSkip αρνήθηκε τους χρόνους παράβλεψης: $error';
  }

  @override
  String get playerUnsupported =>
      'Το πρόγραμμα αναπαραγωγής βίντεο δεν μπορεί να εκτελεστεί σε αυτήν τη συσκευή (η έκδοση Android του είναι πολύ παλιά για τη βιβλιοθήκη του πακέτου προγράμματος αναπαραγωγής). Πατήστε για να αντιγράψετε τις λεπτομέρειες.';

  @override
  String get playerSkipNoMal =>
      'Αυτός ο τίτλος δεν έχει αναγνωριστικό MyAnimeList, το AniSkip δεν μπορεί να το πάρει';

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
  String get playerPip => 'Εικόνα σε εικόνα';

  @override
  String get playerAutoPip => 'Picture in picture κατά την έξοδο';

  @override
  String get playerAutoPipDesc =>
      'Συνέχιση αναπαραγωγής σε μικρό παράθυρο όταν βγαίνεις από την εφαρμογή';

  @override
  String get playerPipPlay => 'Παίξτε';

  @override
  String get playerPipPause => 'Παύση';

  @override
  String get playerPipBack => 'Πίσω';

  @override
  String get playerPipForward => 'Εμπρός';

  @override
  String get playerPipRestore => 'Επιστροφή στη συσκευή αναπαραγωγής';

  @override
  String get playerPipActive => 'Παίζοντας σε ένα μικρό παράθυρο';

  @override
  String get listDateAdded => 'Προστέθηκε στη λίστα';

  @override
  String get listDateLastWatched => 'Τελευταία παρακολούθηση';

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
  String get widgetContinue => 'Συνέχεια';

  @override
  String get widgetReleases => 'Κυκλοφορεί σύντομα';

  @override
  String get widgetMore => 'Επίσης σε εξέλιξη';

  @override
  String get widgetNothing => 'Τίποτα για συνέχεια';

  @override
  String get downloadStorageTitle => 'Αποθήκευση';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count λήψεις',
      one: '1 λήψη',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size έχει ήδη παρακολουθήσει ή διαβάσει';
  }

  @override
  String get downloadFreeUp => 'Ελευθερώστε χώρο';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count παρακολούθησε λήψεις',
      one: 'Παρακολούθησε 1 λήψη',
    );
    return 'Διαγράφω $_temp0 και δωρεάν $size;';
  }

  @override
  String downloadFreed(String size) {
    return 'Ελεύθερος $size';
  }

  @override
  String get downloadDeleteWatched => 'Διαγραφή παρακολούθησης';

  @override
  String get downloadDeleteAll => 'Διαγραφή όλων';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Διαγραφή κάθε λήψης του $title;';
  }

  @override
  String get downloadNothingWatched =>
      'Δεν έχει γίνει λήψη τίποτα από όσα έχετε τελειώσει';

  @override
  String get downloadStorageEmpty => 'Καμία λήψη δεν χρησιμοποιεί χώρο';

  @override
  String get downloadsOpenDesc =>
      'Δες την ουρά και ό,τι είναι αποθηκευμένο σε αυτή τη συσκευή';

  @override
  String get downloadTitle => 'Λήψη';

  @override
  String get downloadMetaOnly => 'Μόνο μεταδεδομένα';

  @override
  String get downloadMetaFailed =>
      'Δεν ήταν δυνατή η δημιουργία του φακέλου τίτλου';

  @override
  String downloadMetaSaved(String path) {
    return 'Αποθηκεύτηκε. Τοποθετήστε τα αρχεία σας στο $path';
  }

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
  String get downloadDashDrm => 'Αυτή η ροή προστατεύεται από DRM';

  @override
  String get downloadDashNoVideo => 'Το μανιφέστο DASH δεν έχει βίντεο';

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
  String get downloadPlayStream => 'Ροή στο διαδίκτυο';

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
    return '$seeds σπόροι · $peers συνομήλικοι';
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
    return 'Θα ενημερωθείτε όταν ο $source έχει κάτι νέο';
  }

  @override
  String get sourceNotifyOff => 'Απενεργοποίηση ειδοποιήσεων';

  @override
  String get sourceNotifyNeedsSource =>
      'Επιλέξτε πρώτα μια πηγή με αντιστοιχία';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Όλα ($count) έχουν ήδη βγει, τίποτα να περιμένει κανείς';
  }

  @override
  String get sourceNotifyTooltipOn => 'Διακοπή ειδοποιήσεων έκδοσης';

  @override
  String get sourceNotifyTooltipOff => 'Ενημερώστε με για νέες εκδόσεις';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Το επεισόδιο $number κυκλοφορεί στις $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Τα επεισόδια $from–$to κυκλοφορούν στις $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Το κεφάλαιο $number κυκλοφορεί στις $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Τα κεφάλαια $from–$to κυκλοφορούν στις $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return 'Οι τίτλοι $count έχουν κάτι νέο';
  }

  @override
  String get navSources => 'Πηγές';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Αυτή η πηγή ανήκει στην $manager, η οποία δεν είναι η ενεργή υπηρεσία επέκτασης';
  }

  @override
  String get sourceAlertsHeader => 'Ειδοποιήσεις έκδοσης';

  @override
  String get sourceAlertsSwitch => 'Ελέγξτε τους εγγεγραμμένους τίτλους';

  @override
  String get sourceAlertsSwitchDesc =>
      'Κάθε φορά που ανοίγει η εφαρμογή, ενεργοποιούσατε το κουδούνι για τίτλους';

  @override
  String get sourceSkipUnstarted =>
      'Παραλείψτε τους τίτλους που δεν έχετε ξεκινήσει';

  @override
  String get sourceSkipUnstartedDesc =>
      'Δεν έχετε δει ή διαβάσει τίποτα ακόμα, αλλά υπάρχουν ήδη επεισόδια';

  @override
  String get sourceSkipUnseen => 'Παράλειψη ενώ δεν έχετε δει επεισόδια';

  @override
  String get sourceSkipUnseenDesc =>
      'Έχετε ακόμα κυκλοφορήσει επεισόδια για να προλάβετε';

  @override
  String get sourceManage => 'Συνδρομές';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count τίτλοι',
      one: '1 τίτλος',
      zero: 'Χωρίς τίτλους',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Ελέγξτε τώρα';

  @override
  String get sourceCheckNowDesc =>
      'Αγνοεί το πρόγραμμα και τους κανόνες παράλειψης';

  @override
  String get sourceChecking => 'Έλεγχος…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Οι τίτλοι $count έχουν κάτι νέο',
      one: '1 τίτλος έχει κάτι νέο',
      zero: 'Τίποτα καινούργιο',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Δεν υπάρχουν ακόμη συνδρομές';

  @override
  String get sourceEmptyMessage =>
      'Πατήστε το καμπανάκι πάνω από τα επεισόδια ενός τίτλου για να ενημερωθείτε για νέα';

  @override
  String get sourceAll => 'Όλα';

  @override
  String sourceInactive(String manager) {
    return 'Ανενεργό: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return 'Το $source δεν είναι εγκατεστημένο σε αυτήν την υπηρεσία επέκτασης';
  }

  @override
  String get sourceUnreachable => 'Η πηγή δεν ανταποκρίνεται';

  @override
  String get sourceFinished => 'Τελειωμένο';

  @override
  String get sourceSkippedCompleted => 'Παράλειψη: ολοκληρώθηκε';

  @override
  String get sourceSkippedUnstarted => 'Παράλειψη: δεν ξεκίνησε';

  @override
  String get sourceSkippedUnseen => 'Παράλειψη: αόρατα επεισόδια';

  @override
  String get sourceWaiting => 'Αναμονή για την επόμενη κυκλοφορία';

  @override
  String sourceNextCheck(String when) {
    return 'Επόμενος έλεγχος $when';
  }

  @override
  String get sourceSoon => 'σύντομα';

  @override
  String sourceInHours(int count) {
    return 'σε ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'σε ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Τελευταία: $number';
  }

  @override
  String get sourceMute => 'Σίγαση';

  @override
  String get sourceUnmute => 'Κατάργηση σίγασης';

  @override
  String get sourceMuted => 'Σίγαση';

  @override
  String get sourceUnsubscribe => 'Απεγγραφή';

  @override
  String get sourcePickAnother => 'Διάλεξε άλλη πηγή';

  @override
  String get sourceOpenExtensions => 'Ανοίξτε τις επεκτάσεις';

  @override
  String get sourceNoticesEmpty => 'Δεν υπάρχουν ακόμη ειδοποιήσεις έκδοσης';

  @override
  String get sourceNoticesEmptyMessage =>
      'Νέα επεισόδια και κεφάλαια από τους εγγεγραμμένους τίτλους σας εμφανίζονται εδώ';

  @override
  String get sourceOpenTitle => 'Ανοίξτε τον τίτλο';

  @override
  String get extensionsLoading => 'Φόρτωση επεκτάσεων…';

  @override
  String get updateWhatsNew => 'Τι νέο υπάρχει';

  @override
  String get updateLater => 'Αργότερα';

  @override
  String get updateSkipVersion => 'Παράβλεψη αυτής της έκδοσης';

  @override
  String get updatePreparing => 'Προετοιμασία…';

  @override
  String get updateDownloading => 'Λήψη';

  @override
  String get updateInstalling => 'Εγκατάσταση…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done από $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Κυκλοφόρησε $date';
  }

  @override
  String get updateNoAsset => 'Αυτή η έκδοση δεν έχει λήψη για τη συσκευή σας';

  @override
  String get updateUpToDate => 'Βρίσκεστε στην πιο πρόσφατη έκδοση';

  @override
  String get updateIosHint =>
      'Οι εκδόσεις iOS δεν βρίσκονται στο App Store. Πάρτε το .ipa από τη σελίδα έκδοσης και φορτώστε το με το AltStore ή το SideStore';

  @override
  String get updateOpenedBrowser => 'Ελέγξτε το πρόγραμμα περιήγησής σας';

  @override
  String get updateTryAgain => 'Προσπαθήστε ξανά';

  @override
  String get settingsNotifications => 'Ειδοποιήσεις';

  @override
  String get settingsNotificationsDesc =>
      'Ειδοποιήσεις για τις λίστες σας, νέα επεισόδια και κεφάλαια και απαντήσεις σχολίων';

  @override
  String get settingsAboutUpdates => 'Πληροφορίες & ενημερώσεις';

  @override
  String get settingsAboutUpdatesDesc =>
      'Ενημερώσεις εφαρμογών, έκδοση, αρχεία καταγραφής, σύνδεσμοι και υποστήριξη';

  @override
  String get settingsGroupAccount => 'Ο λογαριασμός σας';

  @override
  String get settingsGroupContent => 'περιεχόμενο';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Πρόγραμμα αναπαραγωγής, υπότιτλοι, παράβλεψη, λίστα επεισοδίων και λεπτομέρειες επεισοδίου';

  @override
  String get settingsMangaDesc =>
      'Λειτουργία ανάγνωσης, χειριστήρια, οθόνη και παρακολούθηση κεφαλαίων';

  @override
  String get settingsNovelDesc =>
      'Κείμενο, περιστροφή σελίδας, μετάφραση και ανάγνωση δυνατά';

  @override
  String get settingsLocalPlay => 'Τοπικό παιχνίδι';

  @override
  String get settingsLocalPlayDesc =>
      'Παίξτε αρχεία, φακέλους, ροές δικτύου και torrents ή ανοίξτε ένα βιβλίο';

  @override
  String get settingsLocalPlayVideo => 'Βίντεο';

  @override
  String get settingsLocalPlayBooks => 'Βιβλία';

  @override
  String get settingsWatchSections => 'Ενότητες';

  @override
  String get settingsSectionLists => 'Λίστες επεισοδίων και κεφαλαίων';

  @override
  String get settingsSectionProgress => 'Παρακολούθηση προόδου';

  @override
  String get updateChannelDesc =>
      'Σταθερή είναι η δοκιμασμένη έκδοση. Η προκυκλοφορία και το Alpha αποκτούν νέες λειτουργίες νωρίτερα, αλλά ενδέχεται να χαλάσουν';

  @override
  String get checkNowDesc => 'Αναζητήστε μια νεότερη έκδοση αμέσως';

  @override
  String get generalSectionBasics => 'Γλώσσα & συμπεριφορά';

  @override
  String get generalSectionSecurity => 'Ασφάλεια';

  @override
  String get generalSectionPrivacy => 'Απόρρητο';

  @override
  String notificationsOtherService(String service) {
    return 'Μεταβείτε στο $service για να το ανοίξετε';
  }

  @override
  String get secPlayerPlayback =>
      'Προεπιλεγμένη ταχύτητα, αυτόματη αναπαραγωγή, προσαρμογή βίντεο, προσανατολισμός και εικόνα σε εικόνα';

  @override
  String get secPlayerSkip =>
      'Παράβλεψη ανοίγματος, τελειώματος και ανακεφαλαίωση αυτόματα';

  @override
  String get secPlayerControls =>
      'Σύρετε, κρατήστε πατημένο τις χειρονομίες και αναζητήστε προεπισκόπηση';

  @override
  String get secPlayerSubtitles => 'Γλώσσες, εμφάνιση και απόδοση υποτίτλων';

  @override
  String get secPlayerShaders => 'Αναβάθμιση anime και τα δικά σας shaders';

  @override
  String get secPlayerEngine =>
      'Αποκωδικοποιητής, έξοδος βίντεο και ήχου, buffering. Αλλάξτε τα μόνο εάν η αναπαραγωγή έχει προβλήματα';

  @override
  String get secPlayerMpv => 'mpv.conf, σενάρια και προηγμένος συντονισμός';

  @override
  String get secAnimeList =>
      'Συμπληρωματικά επεισόδια και μικρογραφίες που δεν έχετε παρακολουθήσει';

  @override
  String get secProgress =>
      'Όταν η πρόοδος που παρακολουθήσατε ή διαβάσατε αποθηκεύεται στη λίστα σας';

  @override
  String get secAnimeDetails =>
      'Από πού προέρχονται οι τίτλοι των επεισοδίων, οι μικρογραφίες και οι περιλήψεις';

  @override
  String get secReaderReading =>
      'Λειτουργία ανάγνωσης, περιστροφή σελίδας, ζουμ και επόμενο κεφάλαιο';

  @override
  String get secReaderControls =>
      'Πατήστε ζώνες, πλήκτρα έντασης και αυτόματη κύλιση';

  @override
  String get secReaderDisplay =>
      'Φόντο, φωτεινότητα, πλήρης οθόνη και αριθμός σελίδας';

  @override
  String get secNovelText =>
      'Γραμματοσειρά, μέγεθος, διάστιχο, περιθώρια και περιστροφή σελίδας';

  @override
  String get secNovelTranslate => 'Μεταφράστε κεφάλαια ενώ διαβάζετε';

  @override
  String get secNovelSpeech => 'Φωνή, ταχύτητα και τόνος για ανάγνωση';

  @override
  String get secNotifyAbout =>
      'Επιλέξτε ποια είδη δραστηριότητας στέλνουν μια ειδοποίηση';

  @override
  String get layoutTitle => 'Διάταξη';

  @override
  String get layoutDesc =>
      'Επιλέξτε, μετακινήστε και αποκρύψτε τα κουμπιά στις γραμμές';

  @override
  String get layoutHint =>
      'Σύρετε ένα κουμπί για να το μετακινήσετε (κρατήστε το πρώτα σε μια οθόνη αφής). Πατήστε ένα για να το κόψετε, να το μετακινήσετε ή να το αποκρύψετε';

  @override
  String layoutDropInto(String zone) {
    return 'Υποβολή: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Μετακίνηση $name. Πατήστε ένα κουμπί επικόλλησης για να το τοποθετήσετε';
  }

  @override
  String get layoutTitleFixed => 'Τίτλος';

  @override
  String get layoutZoneTopStart => 'Πάνω μπάρα, πριν τον τίτλο';

  @override
  String get layoutZoneTopEnd => 'Κορυφαία μπάρα, μετά τον τίτλο';

  @override
  String get layoutZoneBottomStart => 'Κάτω μπάρα, αριστερά';

  @override
  String get layoutZoneBottomEnd => 'Κάτω μπάρα, δεξιά';

  @override
  String get layoutZoneSecondRow => 'Κρυφό: δεύτερη σειρά σε κανονική προβολή';

  @override
  String get layoutZoneOverflow => 'Κρυφό: στο μενού Περισσότερα';

  @override
  String get layoutEmptyZone => 'Απόθεση κουμπιών εδώ';

  @override
  String get layoutCut => 'Κόψτε';

  @override
  String get layoutPaste => 'Επικολλήστε εδώ';

  @override
  String get layoutHide => 'Απόκρυψη';

  @override
  String layoutMoveTo(String zone) {
    return 'Μετακίνηση στο $zone';
  }

  @override
  String get layoutReset => 'Επαναφορά στην προεπιλογή';

  @override
  String get layoutMore => 'Περισσότερα';

  @override
  String get sourceWhyAction => 'Γιατί δεν υπάρχει ειδοποίηση;';

  @override
  String get sourceWhyStatus => 'Κατάσταση';

  @override
  String get sourceWhyLastCheck => 'Τελευταίος έλεγχος';

  @override
  String get sourceWhyNever => 'Όχι ακόμα';

  @override
  String get sourceWhyNextCheck => 'Επόμενος έλεγχος';

  @override
  String get sourceWhyNewest => 'Το νεότερο στην πηγή';

  @override
  String get sourceWhyProgress => 'Η πρόοδός σας';

  @override
  String get sourceWhyListStatus => 'Κατάσταση λίστας';

  @override
  String get sourceWhyFailures => 'Αποτυχημένοι έλεγχοι στη σειρά';

  @override
  String get sourceWhyLastRelease => 'Τελευταία νέα κυκλοφορία εμφανίστηκε';

  @override
  String get sourceWhyVerdictNew =>
      'Μια νέα έκδοση εμφανίζεται εδώ μόλις την αναφέρει η πηγή και εκτελείται ο επόμενος έλεγχος.';

  @override
  String get sourceWhyVerdictAhead =>
      'Η πηγή είναι ήδη μπροστά από την πρόοδό σας, οπότε σας είπαν μια φορά. Διαβάστε ή παρακολουθήστε το για να λάβετε την επόμενη ειδοποίηση.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Αυτός ο τίτλος παραλείπεται από τους παραπάνω κανόνες. Αλλάξτε τους στις ρυθμίσεις ειδοποιήσεων ή χρησιμοποιήστε το «Έλεγχος τώρα» για να τον ελέγξετε οπωσδήποτε.';

  @override
  String get sourceWhyVerdictBroken =>
      'Δεν είναι δυνατή η πρόσβαση στην πηγή ή έχει αφαιρεθεί, επομένως τίποτα δεν ελέγχεται.';

  @override
  String get sourceWhyVerdictMuted => 'Αυτή η συνδρομή είναι σε σίγαση.';

  @override
  String get externalPlayerTitle => 'Ανοίξτε τη ροή αλλού';

  @override
  String get externalCopyUrl => 'Αντιγραφή συνδέσμου ροής';

  @override
  String get externalCopied => 'Ο σύνδεσμος ροής αντιγράφηκε';

  @override
  String get externalChooser => 'Ανοίξτε σε άλλη εφαρμογή';

  @override
  String get externalVlc => 'Άνοιγμα σε VLC';

  @override
  String get externalMpv => 'Ανοίξτε σε mpv';

  @override
  String get externalWebVideoCast => 'Web Cast Video';

  @override
  String get castViaAppHint => 'Στείλτε τη ροή στην εφαρμογή Web Video Cast';

  @override
  String get externalFailed =>
      'Δεν ήταν δυνατό το άνοιγμα της ροής. Έχει εγκατασταθεί η συσκευή αναπαραγωγής;';

  @override
  String get addonInstalled => 'Εγκατεστημένο';

  @override
  String get loadFailedActivity =>
      'Δεν ήταν δυνατή η φόρτωση της δραστηριότητας';

  @override
  String get loadFailedFavourites =>
      'Δεν ήταν δυνατή η φόρτωση των αγαπημένων. Επανάληψη';

  @override
  String get loadFailedStats =>
      'Δεν ήταν δυνατή η φόρτωση στατιστικών στοιχείων';

  @override
  String get loadFailedReplies => 'Δεν ήταν δυνατή η φόρτωση των απαντήσεων';

  @override
  String get cantBeUndone => 'Αυτό δεν μπορεί να αναιρεθεί.';

  @override
  String get searchTags => 'Αναζήτηση ετικετών';

  @override
  String get spoilerTapToView => 'Spoiler, πατήστε για προβολή';

  @override
  String get mediaVideo => 'Βίντεο';

  @override
  String get notificationSomeone => 'Κάποιος';

  @override
  String get notificationATitle => 'έναν τίτλο';

  @override
  String get notificationAddedDetail => 'Προστέθηκε στο AniList';

  @override
  String get updateNoReleases => 'Δεν βρέθηκαν εκδόσεις';

  @override
  String get updateInvalidResponse => 'Μη έγκυρη απάντηση ενημέρωσης';

  @override
  String get commentsRateLimited => 'Περιορισμένη τιμή';

  @override
  String get commentsConnectFailed => 'Αποτυχία σύνδεσης';

  @override
  String get dnsNoRecords => 'Δεν επιστράφηκαν εγγραφές Α';

  @override
  String get importTokenRejected => 'Το διακριτικό απορρίφθηκε';

  @override
  String get developerRoleLead => 'Κύριος προγραμματιστής';

  @override
  String get developerRoleModerator => 'Συντονιστής Discord';

  @override
  String extensionManagerTitle(String type) {
    return '$type διευθυντής';
  }

  @override
  String extensionsOfType(String type) {
    return '$type επεκτάσεις';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'Ρυθμίσεις $name';
  }

  @override
  String extensionNoSettings(String name) {
    return 'Το $name δεν παρέχει ρυθμίσεις.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Το επεισόδιο $episode του $title προβλήθηκε';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Το επεισόδιο $episode προβλήθηκε';
  }

  @override
  String notificationAdded(String title) {
    return 'Το $title προστέθηκε στο AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Ο διακομιστής ενημέρωσης δεν μπόρεσε να βρει αυτήν την έκδοση: $message';
  }

  @override
  String get installStepJre => 'Χρόνος εκτέλεσης Java';

  @override
  String get installStepCore => 'Πυρήνας χρόνου εκτέλεσης';

  @override
  String installStepsProgress(int current, int total) {
    return 'Βήμα $current από $total';
  }

  @override
  String get stepWaiting => 'Αναμονή';

  @override
  String get stepChecking => 'Έλεγχος…';

  @override
  String get stepUpToDate => 'Επίκαιρο';

  @override
  String stepUpToDateWith(String detail) {
    return 'Ενημερωμένο · $detail';
  }

  @override
  String get stepWillInstall => 'Θα εγκατασταθεί';

  @override
  String get stepWillUpdate => 'Θα ενημερωθεί';

  @override
  String stepWillUpdateTo(String version) {
    return 'Θα ενημερωθεί σε $version';
  }

  @override
  String get stepInstalled => 'Εγκατεστημένο';

  @override
  String get stepNotNeeded => 'Δεν χρειάζεται εδώ';

  @override
  String get stepFailed => 'Απέτυχε';

  @override
  String stepFailedWith(String reason) {
    return 'Απέτυχε: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Εκτελείται στον χρόνο εκτέλεσης Java και στον κοινόχρηστο πυρήνα χρόνου εκτέλεσης. Εγκαθίστανται πρώτα και ενημερώνονται εάν αλλάξουν.';

  @override
  String get installRuntimeNewer =>
      'Ο χρόνος εκτέλεσης στον οποίο εκτελείται αυτός ο διαχειριστής έχει μια ενημέρωση.';

  @override
  String get removeJvmTitle => 'Κατάργηση του χρόνου εκτέλεσης Java;';

  @override
  String get removeJvmMessage =>
      'Οι διαχειριστές επεκτάσεων επιφάνειας εργασίας σταματούν να λειτουργούν μέχρι να εγκατασταθούν ξανά. Γίνεται ξανά λήψη την επόμενη φορά που θα εγκαταστήσετε ή θα ανοίξετε ένα.';

  @override
  String get runtimePreparing => 'Προετοιμασία του χρόνου εκτέλεσης…';

  @override
  String get calendarAll => 'Όλα';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Manga';

  @override
  String get readerCloudflare =>
      'Άνοιγμα στο πρόγραμμα περιήγησης (έλεγχος Cloudflare)';

  @override
  String get badgeBoardHint =>
      'Σύρετε ένα σήμα σε μια γωνία του πρώτου φύλλου ή σύρετε ένα σήμα που βρίσκεται ήδη σε αυτό για να το μετακινήσετε. Τα σήματα ανταλλάσσουν θέσεις, ώστε να μην επικαλύπτονται ποτέ κανένα. Πατήστε ένα σήμα παρακάτω για να το ενεργοποιήσετε ή να το απενεργοποιήσετε.';

  @override
  String get statusAuto => 'Αυτόματο';

  @override
  String get unreadCounter => 'Μη αναγνωσμένο μετρητή';

  @override
  String get unreadCounterDesc =>
      'Δείξτε πόσα επεισόδια ή κεφάλαια έχουν απομείνει στις αφίσες';

  @override
  String get settingsShortcuts => 'Συντομεύσεις πληκτρολογίου';

  @override
  String get settingsShortcutsDesc =>
      'Δείτε, αλλάξτε και απενεργοποιήστε κάθε πλήκτρο';

  @override
  String get shortcutGroupApp => 'App';

  @override
  String get shortcutGroupPlayer => 'Πρόγραμμα αναπαραγωγής βίντεο';

  @override
  String get shortcutGroupReader => 'Αναγνώστης';

  @override
  String get shortcutsEnableApp => 'Συντομεύσεις εφαρμογών';

  @override
  String get shortcutsEnablePlayer => 'Συντομεύσεις προγράμματος αναπαραγωγής';

  @override
  String get shortcutsEnableReader => 'Συντομεύσεις αναγνώστη';

  @override
  String get shortcutsEnableDesc =>
      'Ενεργοποιήστε ή απενεργοποιήστε κάθε πλήκτρο σε αυτήν την ομάδα';

  @override
  String get shortcutNotSet => 'Δεν έχει οριστεί';

  @override
  String get shortcutAddKey => 'Προσθέστε ένα κλειδί';

  @override
  String get shortcutResetOne => 'Επαναφορά στην προεπιλογή';

  @override
  String get shortcutClearKeys => 'Αφαιρέστε όλα τα κλειδιά';

  @override
  String get shortcutResetAll => 'Επαναφορά όλων των συντομεύσεων';

  @override
  String get shortcutResetAllDesc =>
      'Επαναφέρετε κάθε κλειδί στην προεπιλογή του';

  @override
  String get shortcutPress => 'Πατήστε το πλήκτρο ή τον συνδυασμό που θέλετε';

  @override
  String get shortcutPressHint =>
      'Κάθε συνδυασμός μπορεί να ανήκει μόνο σε μία ενέργεια, οπότε η λήψη ενός τον μετακινεί.';

  @override
  String get shortcutSeekPercent => 'Μετάβαση σε ένα σημείο του βίντεο';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Πήγαινε πίσω';

  @override
  String get shortcutAppFullscreen => 'Εναλλαγή πλήρους οθόνης';

  @override
  String get shortcutAppGlass => 'Εναλλαγή λειτουργίας γυαλιού';

  @override
  String get shortcutAppMaterialYou => 'Εναλλαγή Υλικού Εσείς';

  @override
  String get shortcutAppDark => 'Εναλλαγή σκοτεινής λειτουργίας';

  @override
  String get shortcutAppOled => 'Εναλλαγή μαύρου OLED';

  @override
  String get shortcutAppSearch => 'Ανοίξτε την αναζήτηση';

  @override
  String get shortcutAppSettings => 'Ανοίξτε τις ρυθμίσεις';

  @override
  String get shortcutAppDownloads => 'Ανοίξτε τις λήψεις';

  @override
  String get shortcutAppNotifications => 'Ανοίξτε τις ειδοποιήσεις';

  @override
  String get shortcutAppIncognito => 'Εναλλαγή ανώνυμης περιήγησης';

  @override
  String get shortcutAppShortcuts => 'Εμφάνιση συντομεύσεων πληκτρολογίου';

  @override
  String get shortcutPlayerPlayPause => 'Αναπαραγωγή ή παύση';

  @override
  String get shortcutPlayerSeekForward => 'Αναζητήστε μπροστά';

  @override
  String get shortcutPlayerSeekBack => 'Αναζητήστε πίσω';

  @override
  String get shortcutPlayerSeekForwardLong =>
      'Αναζήτηση προς τα εμπρός 30 δευτερόλεπτα';

  @override
  String get shortcutPlayerSeekBackLong => 'Αναζητήστε 30 δευτερόλεπτα πίσω';

  @override
  String get shortcutPlayerFrameForward => 'Επόμενο πλαίσιο';

  @override
  String get shortcutPlayerFrameBack => 'Προηγούμενο πλαίσιο';

  @override
  String get shortcutPlayerVolumeUp => 'Αύξηση έντασης';

  @override
  String get shortcutPlayerVolumeDown => 'Μείωση έντασης';

  @override
  String get shortcutPlayerMute => 'Σίγαση';

  @override
  String get shortcutPlayerFullscreen => 'Πλήρης οθόνη';

  @override
  String get shortcutPlayerNext => 'Επόμενο επεισόδιο';

  @override
  String get shortcutPlayerPrevious => 'Προηγούμενο επεισόδιο';

  @override
  String get shortcutPlayerSkip => 'Παράλειψη εισαγωγής ή λήξης';

  @override
  String get shortcutPlayerPanel => 'Λίστα επεισοδίων';

  @override
  String get shortcutPlayerSpeedUp => 'Ταχύτερη αναπαραγωγή';

  @override
  String get shortcutPlayerSpeedDown => 'Πιο αργή αναπαραγωγή';

  @override
  String get shortcutPlayerSpeedReset => 'Κανονική ταχύτητα';

  @override
  String get shortcutPlayerSubtitleToggle =>
      'Ενεργοποίηση ή απενεργοποίηση υπότιτλων';

  @override
  String get shortcutPlayerSubtitleCycle => 'Επόμενο κομμάτι υπότιτλων';

  @override
  String get shortcutPlayerAudioCycle => 'Επόμενο κομμάτι ήχου';

  @override
  String get shortcutPlayerStreamCycle => 'Επόμενη ροή';

  @override
  String get shortcutPlayerFit => 'Αλλαγή προσαρμογής βίντεο';

  @override
  String get shortcutReaderRight => 'Σελίδα προς τα δεξιά';

  @override
  String get shortcutReaderLeft => 'Σελίδα στα αριστερά';

  @override
  String get shortcutReaderNextPage => 'Επόμενη σελίδα';

  @override
  String get shortcutReaderPreviousPage => 'Προηγούμενη σελίδα';

  @override
  String get shortcutReaderControls => 'Εμφάνιση ή απόκρυψη στοιχείων ελέγχου';

  @override
  String get shortcutReaderNextChapter => 'Επόμενο κεφάλαιο';

  @override
  String get shortcutReaderPreviousChapter => 'Προηγούμενο κεφάλαιο';

  @override
  String shortcutTaken(String action) {
    return 'Λήψη από $action';
  }

  @override
  String get incognitoTurnedOn =>
      'Η κατάσταση ανώνυμης περιήγησης είναι ενεργοποιημένη';

  @override
  String get incognitoTurnedOff =>
      'Η κατάσταση ανώνυμης περιήγησης είναι απενεργοποιημένη';

  @override
  String get onHoldAnime => 'Anime σε αναμονή';

  @override
  String get onHoldManga => 'Manga σε αναμονή';

  @override
  String get droppedAnime => 'Έριξε anime';

  @override
  String get droppedManga => 'Έριξε το manga';

  @override
  String get generalSectionDesktop => 'Επιτραπέζιος υπολογιστής';

  @override
  String get closeAction => 'Όταν το παράθυρο είναι κλειστό';

  @override
  String get closeActionQuit => 'Κλείστε την εφαρμογή';

  @override
  String get closeActionWhenBusy =>
      'Συνεχίστε να τρέχετε στο δίσκο όσο τρέχει κάτι';

  @override
  String get closeActionAlways => 'Να συνεχίζετε να τρέχετε πάντα στο δίσκο';

  @override
  String get closeActionNoTray =>
      'Ο δίσκος συστήματος δεν είναι διαθέσιμος εδώ, επομένως η εφαρμογή τερματίζεται όταν είναι κλειστή';

  @override
  String get gamepadNav => 'Πλοήγηση στο Gamepad';

  @override
  String get gamepadNavDesc =>
      'Μετακινηθείτε στην εφαρμογή και ελέγξτε τον παίκτη με ένα χειριστήριο παιχνιδιών';

  @override
  String get trayShow => 'Εμφάνιση Dartotsu';

  @override
  String get trayQuit => 'Κλείσε';

  @override
  String get trayIdle => 'Δεν τρέχει τίποτα';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Λήψη $count στοιχείων',
      one: 'Λήψη $count στοιχείου',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Συγχρονισμός των λιστών σας';

  @override
  String get trayUpdating => 'Ενημέρωση της εφαρμογής';

  @override
  String get trayPlaying => 'Παίζοντας σε ένα μικρό παράθυρο';

  @override
  String get traySearch => 'Αναζήτηση';

  @override
  String get trayPauseDownloads => 'Παύση λήψεων';

  @override
  String get trayResumeDownloads => 'Συνέχιση λήψεων';

  @override
  String get playerDownloadTitle => 'Λήψη του προγράμματος αναπαραγωγής';

  @override
  String get playerDownloadBody =>
      'Το Dartotsu φέρνει τη μηχανή βίντεο μία φορά. Η αναπαραγωγή ξεκινά μόλις είναι έτοιμη.';

  @override
  String get playerDownloadStarting => 'Έναρξη λήψης…';

  @override
  String get playerDownloadFailedTitle => 'Δεν ήταν δυνατή η λήψη του παίκτη';

  @override
  String get playerDownloadFailedBody =>
      'Ελέγξτε τη σύνδεσή σας και δοκιμάστε ξανά. Η λήψη ξεκινά από εκεί που σταμάτησε.';

  @override
  String get playerDownloadRetry => 'Προσπαθήστε ξανά';

  @override
  String get playerDownloadCopy => 'Αντιγραφή στοιχείων';

  @override
  String get removePlayerTitle => 'Κατάργηση της συσκευής αναπαραγωγής;';

  @override
  String get removePlayerMessage =>
      'Δεν είναι δυνατή η αναπαραγωγή των βίντεο μέχρι να γίνει ξανά λήψη του προγράμματος αναπαραγωγής.';

  @override
  String get trailerLoading => 'Φόρτωση του τρέιλερ…';

  @override
  String get trailerFailed =>
      'Δεν ήταν δυνατή η αναπαραγωγή του τρέιλερ εδώ, ανοίγοντάς το στο πρόγραμμα περιήγησης';
}

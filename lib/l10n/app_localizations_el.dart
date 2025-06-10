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
      'Η ΝΕΑ Καλύτερη Εφαρμογή Για\nΠαρακολούθηση Άνιμε & Μάνγκα';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get login => 'Σύνδεση';

  @override
  String loginTo(String service) {
    return 'Σύνδεση στο $service';
  }

  @override
  String logout(String type) {
    return 'Αποσύνδεση $type';
  }

  @override
  String get confirmLogout => 'Είστε σίγουροι ότι θέλετε να αποσυνδεθείτε;';

  @override
  String get anime => 'Άνιμε';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Μανχούα';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Μυθιστόρημα';

  @override
  String get ln => 'Ελαφρύ Μυθιστόρημα';

  @override
  String get home => 'Αρχική';

  @override
  String get search => 'Αναζήτηση';

  @override
  String get calendar => 'Ημερολόγιο';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get watch => 'Παρακολούθηση';

  @override
  String get read => 'Ανάγνωση';

  @override
  String get info => 'Πληροφορίες';

  @override
  String get comments => 'Σχόλια';

  @override
  String get addToList => 'Προσθήκη στη Λίστα';

  @override
  String get series => 'Σειρές';

  @override
  String get season => 'Σεζόν';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Επεισόδια',
      one: 'Επεισόδιο',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Κεφάλαια',
      one: 'Κεφάλαιο',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Τόμοι',
      one: 'Τόμος',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ταινίες',
      one: 'Ταινία',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Επεισόδια';

  @override
  String get totalChapters => 'Κεφάλαια';

  @override
  String get genres => 'Είδη';

  @override
  String get scanlators => 'Μεταφραστές';

  @override
  String list(String type) {
    return '$type Λίστα';
  }

  @override
  String get watching => 'Παρακολουθώντας';

  @override
  String get reading => 'Διαβάζοντας ανάγνωση';

  @override
  String get readStatus => 'Ανάγνωση';

  @override
  String get watchStatus => 'Παρακολούθησαν';

  @override
  String planned(String type) {
    return 'Σχεδιασμένο $type';
  }

  @override
  String onHold(String type) {
    return 'Σε Αναμονή $type';
  }

  @override
  String get droppedAnime => 'Εγκαταλελειμμένο Anime';

  @override
  String get droppedManga => 'Εγκαταλελειμμένο Manga';

  @override
  String noDropped(String type) {
    return 'Δεν έχετε εγκαταλείψει κανένα $type ακόμα.';
  }

  @override
  String get continueReading => 'Συνέχεια Ανάγνωσης';

  @override
  String get continueWatching => 'Συνέχεια Παρακολούθησης';

  @override
  String browse(String type) {
    return 'Περιήγηση $type';
  }

  @override
  String trending(String type) {
    return 'Επικρατεί $type';
  }

  @override
  String popular(String type) {
    return 'Δημοφιλές $type';
  }

  @override
  String get topAiring => 'Κορυφαία Προβολή';

  @override
  String topRated(String type) {
    return 'Κορυφαία Βαθμολογία $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Πιο Δημοφιλές $type';
  }

  @override
  String get thisSeason => 'Αυτή η Σεζόν';

  @override
  String get nextSeason => 'Επόμενη Σεζόν';

  @override
  String get previousSeason => 'Προηγούμενη Σεζόν';

  @override
  String get recommended => 'Συνιστώμενο';

  @override
  String get recommendationsEmptyMessage =>
      'Παρακολουθήστε/Διαβάστε κάποιο Anime ή Manga για να πάρετε Προτάσεις';

  @override
  String get recentUpdates => 'Πρόσφατες Ενημερώσεις';

  @override
  String get allCaughtUpNew => 'Όλα εντάξει, τι νέο υπάρχει;';

  @override
  String favorite(String type) {
    return 'Αγαπημένο $type';
  }

  @override
  String get favorites => 'Αγαπημένα';

  @override
  String get noFavourites =>
      'Φαίνεται ότι δεν σας αρέσει τίποτα,\nΔοκιμάστε να προσθέσετε ένα σόου στα αγαπημένα σας για να το κρατήσετε εδώ.';

  @override
  String get noOnHold => 'Φαίνεται ότι δεν έχετε βάλει κάτι σε αναμονή.';

  @override
  String manageLayout(String service, String page) {
    return 'Διαχείριση διάταξης σελίδας $page για $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Μπορείτε να διαχειριστείτε τη διάταξη της σελίδας $page σύροντας και αποθέτοντας τα αντικείμενα';
  }

  @override
  String get gridView => 'Προβολή Πλέγματος';

  @override
  String get listView => 'Προβολή Λίστας';

  @override
  String get compactView => 'Συμπαγής Προβολή';

  @override
  String get layout => 'Διάταξη';

  @override
  String get sort => 'Ταξινόμηση';

  @override
  String get utd => 'Από Κάτω προς Πάνω';

  @override
  String get dtu => 'Υπό Ενημέρωση';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Επεισόδιο Παρακολουθημένο';

  @override
  String get chapterRead => 'Κεφάλαιο Διαβασμένο';

  @override
  String get outOf => 'έξω';

  @override
  String get totalOf => 'Total of Total';

  @override
  String get selected => 'Επιλέξτε';

  @override
  String get found => 'Θεμελιώ';

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
  String available(String type) {
    return 'Διαθέσιμο $type';
  }

  @override
  String installed(String type) {
    return 'Εγκατεστημένο $type';
  }

  @override
  String get extensionsDescription =>
      'Εγκαταστήστε και διαχειριστείτε επεκτάσεις για επιπλέον λειτουργικότητα';

  @override
  String get addAnimeRepo => 'Προσθέστε DU Repo';

  @override
  String get addAnimeRepoDesc => 'Προσθέστε το DU Repo από διάφορες πηγές';

  @override
  String get addMangaRepo => 'Προσθέστε Manga Repo';

  @override
  String get addMangaRepoDesc => 'Προσθέστε Manga Αποκάλυψη από διάφορες πηγές';

  @override
  String get addNovelRepo => 'Προσθήκη Novel Repo';

  @override
  String get addNovelRepoDesc => 'Add Novel Repo από διάφορες πηγές';

  @override
  String get loadExtensionsIcon => 'Φόρες επεκτάσεις εικόνων';

  @override
  String get loadExtensionsIconDesc => 'Αποδεικνύεται αν η σελίδα lags';

  @override
  String get autoUpdate => 'Auto Update Auto Update';

  @override
  String get autoUpdateDesc => 'Αυτόματη ενημέρωση επεκτάσεων';

  @override
  String get installSourceToStart =>
      'Εγκαταστήστε μια πηγή από σελίδα επέκτασης για να ξεκινήσετε';

  @override
  String get author => 'Συγγραφέας';

  @override
  String get averageDuration => 'Μέση Διάρκεια';

  @override
  String get characters => 'Χαρακτήρες';

  @override
  String get description => 'Περίληψη';

  @override
  String get synopsis => 'Περίληψη';

  @override
  String get endDate => 'Ημερομηνία Λήξης';

  @override
  String get format => 'Μορφή';

  @override
  String get meanScore => 'Μέση Βαθμολογία';

  @override
  String get name => 'Όνομα';

  @override
  String get nameRomaji => 'Όνομα (Ρομάτζι)';

  @override
  String get popularity => 'Δημοτικότητα';

  @override
  String get relations => 'Σχέσεις';

  @override
  String get prequel => 'Προιστορία';

  @override
  String get sequel => 'Συνέχεια';

  @override
  String get source => 'Πηγή';

  @override
  String get staff => 'Προσωπικό';

  @override
  String get startDate => 'Ημερομηνία Έναρξης';

  @override
  String get status => 'Κατάσταση';

  @override
  String get studio => 'Στούντιο';

  @override
  String get synonyms => 'Συνώνυμα';

  @override
  String get tags => 'Ετικέτες';

  @override
  String get total => 'Σύνολο';

  @override
  String get collapseText => 'εμφάνιση λιγότερων';

  @override
  String get expandText => 'εμφάνιση περισσότερων';

  @override
  String get comingSoon => 'Έρχεται Σύντομα';

  @override
  String get wrongTitle => 'Λάθος τίτλος?';

  @override
  String get youTube => 'Παίξτε στο YouTube?';

  @override
  String get mediaNotFound => 'Media που δεν βρέθηκαν';

  @override
  String get noChapterFound => 'Κανένα κεφάλαιο δεν βρέθηκε';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Δραστηριότητες',
      one: 'Δραστηριότητα',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Γλώσσα';

  @override
  String get account => 'Λογαριασμός';

  @override
  String get accountDescription =>
      'Διαχειριστείτε εύκολα τους λογαριασμούς σας στο AniList, MAL και Discord';

  @override
  String get common => 'Κοινό';

  @override
  String get commonDescription =>
      'Πρόσβαση στις γενικές ρυθμίσεις για αδιάλειπτη χρήση της εφαρμογής';

  @override
  String get animeDescription =>
      'Προσαρμόστε και διαχειριστείτε τις προτιμήσεις σας για το άνιμε';

  @override
  String get mangaDescription =>
      'Οργανώστε και προσαρμόστε την εμπειρία σας με το μάνγκα';

  @override
  String get about => 'Σχετικά';

  @override
  String get aboutDescription =>
      'Μάθετε περισσότερα για την εφαρμογή και τους δημιουργούς της';

  @override
  String get notifications => 'Ειδοποιήσεις';

  @override
  String get notificationsDescription =>
      'Ρυθμίστε πώς και πότε θα λαμβάνετε ειδοποιήσεις';

  @override
  String get offlineMode => 'Λειτουργία Εκτός Σύνδεσης';

  @override
  String get offlineModeDescription =>
      'Χρησιμοποιήστε την εφαρμογή χωρίς σύνδεση στο διαδίκτυο';

  @override
  String get incognitoMode => 'Λειτουργία Ανώνυμης Περιήγησης';

  @override
  String get incognitoModeDescription =>
      'Περιήγηση χωρίς αποθήκευση της δραστηριότητάς σας';

  @override
  String get hidePrivate => 'Απόκρυψη Ιδιωτικού';

  @override
  String get hidePrivateDescription =>
      'Απόκρυψη ιδιωτικών σειρών από την αρχική σελίδα.';

  @override
  String get hiddenMedia => 'Κρυφό Υλικό';

  @override
  String get noHiddenMediaFound => 'Δεν βρέθηκε κρυφό υλικό';

  @override
  String get playerSettingsTitle => 'Ρυθμίσεις Αναπαραγωγέα';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Ταχύτητα';

  @override
  String get speedDescription => 'Προεπιλεγμένη ταχύτητα για τον αναπαραγωγέα';

  @override
  String get cursedSpeed => 'Καταραμένη Ταχύτητα';

  @override
  String get cursedSpeedDescription =>
      'Για άτομα που είναι πολύ απασχολημένα με τη ζωή';

  @override
  String get resizeMode => 'Λειτουργία Μεγέθυνσης';

  @override
  String get resizeModeDescription =>
      'Προεπιλεγμένη λειτουργία μεγέθυνσης για τον αναπαραγωγέα';

  @override
  String get skipButton => 'Κουμπί Παράλειψης';

  @override
  String get skipButtonDescription => 'Διάρκεια κουμπιού παράλειψης';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Υπότιτλοι';

  @override
  String get showSubtitles => 'Εμφάνιση Υποτίτλων';

  @override
  String get showSubtitlesDescription => 'Εμφάνιση υποτίτλων από προεπιλογή';

  @override
  String get subtitlePreview => 'Προεπισκόπηση Υποτίτλων';

  @override
  String get fontColor => 'Χρώμα Γραμματοσειράς';

  @override
  String get fontColorDescription => 'Χρώμα γραμματοσειράς υποτίτλων';

  @override
  String get fontFamily => 'Οικογένεια Γραμματοσειράς';

  @override
  String get fontFamilyDescription => 'Οικογένεια γραμματοσειράς υποτίτλων';

  @override
  String get fontSize => 'Μέγεθος Γραμματοσειράς';

  @override
  String get fontSizeDescription => 'Μέγεθος γραμματοσειράς υποτίτλων';

  @override
  String get fontWeight => 'Βάρος Γραμματοσειράς';

  @override
  String get fontWeightDescription => 'Βάρος γραμματοσειράς υποτίτλων';

  @override
  String get backgroundColor => 'Χρώμα Φόντου';

  @override
  String get backgroundColorDescription => 'Χρώμα φόντου υποτίτλων';

  @override
  String get outlineColor => 'Χρώμα Περιγράμματος';

  @override
  String get outlineColorDescription => 'Χρώμα περιγράμματος υποτίτλων';

  @override
  String get bottomPadding => 'Κάτω Περιθώριο';

  @override
  String get bottomPaddingDescription => 'Κάτω περιθώριο υποτίτλων';

  @override
  String get readerSettings => 'Reader Settings';

  @override
  String get readerSettingsDesc => 'Change reader settings';

  @override
  String get spacedPages => 'Spaced Pages';

  @override
  String get spacedPagesDesc => 'Add space between pages';

  @override
  String get hideScrollbar => 'Hide Scrollbar';

  @override
  String get hideScrollbarDesc => 'Hide scrollbar while reading';

  @override
  String get hidePageNumber => 'Hide Page Number';

  @override
  String get hidePageNumberDesc => 'Hide page number while reading';

  @override
  String get theme => 'Θέμα';

  @override
  String get themeDescription =>
      'Προσαρμόστε την εμφάνιση και την ατμόσφαιρα της εφαρμογής σας';

  @override
  String get darkMode => 'Σκοτεινή Λειτουργία';

  @override
  String get enableDarkMode => 'Ενεργοποιήστε τη Σκοτεινή Λειτουργία';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Χρησιμοποιήστε το ίδιο χρώμα με το φόντο σας';

  @override
  String get customTheme => 'Προσαρμοσμένο Θέμα';

  @override
  String get customThemeDescription =>
      'Χρησιμοποιήστε το δικό σας χρώμα για το θέμα';

  @override
  String get oledThemeVariant => 'Παραλλαγή Θέματος OLED';

  @override
  String get oledThemeVariantDescription => 'Ενεργοποιήστε τη Λειτουργία OLED';

  @override
  String get colorPicker => 'Επιλογέας Χρώματος';

  @override
  String get pickColor => 'Επιλέξτε χρώμα';

  @override
  String get colorPickerDescription => 'Επιλέξτε ένα χρώμα';

  @override
  String get colorPickerDefault => 'Default';

  @override
  String get colorPickerCustom => 'Εθιμο';

  @override
  String get customPath => 'Προσαρμοσμένη διαδρομή';

  @override
  String get customPathDescription =>
      'Ορίστε ένα προσαρμοσμένο μονοπάτι για να αποθηκεύσετε αρχεία\nLong Press για να αφαιρέσετε';

  @override
  String get selectDirectory => 'Επιλέξτε έναν κατάλογο';

  @override
  String get selectMediaService => 'Επιλέξτε Media Service';

  @override
  String get logFile => 'Log File';

  @override
  String get logFileDescription => 'Μοιραστείτε το αρχείο καταγραφής';

  @override
  String get restoreSettings => 'Επαναφορά Ρυθμίσεων';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Web View';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Θέλετε να υποστηρίξετε τον συντηρητή του Dartotsu;\nΣκεφτείτε να δωρίσετε';

  @override
  String get donationGoal => 'Δεν υπάρχει στόχος δωρεάς αυτή τη στιγμή';

  @override
  String get options => 'Ρυθμίσεις';

  @override
  String get ok => 'Εντάξει';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get yes => 'Ναι';

  @override
  String get no => 'Όχι';
}

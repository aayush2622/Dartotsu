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
  String get appTagline =>
      'La NUOVA migliore app per\nmonitorare Anime e Manga';

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
  String get login => 'Accedi';

  @override
  String loginTo(String service) {
    return 'Accedi a $service';
  }

  @override
  String logout(String type) {
    return 'Esci $type';
  }

  @override
  String get confirmLogout => 'Sei sicuro di voler uscire?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Romanzo';

  @override
  String get ln => 'Romanzo Leggero';

  @override
  String get home => 'Home';

  @override
  String get search => 'Cerca';

  @override
  String get calendar => 'Calendario';

  @override
  String get settings => 'Impostazioni';

  @override
  String get watch => 'Guarda';

  @override
  String get read => 'Leggi';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Commenti';

  @override
  String get addToList => 'Aggiungi alla lista';

  @override
  String get series => 'Serie';

  @override
  String get season => 'Stagione';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episodi',
      one: 'Episodio',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Capitoli',
      one: 'Capitolo',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Volumi',
      one: 'Volume',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Film',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Episodi';

  @override
  String get totalChapters => 'Capitoli';

  @override
  String get genres => 'Generi';

  @override
  String get scanlators => 'Scanlators';

  @override
  String list(String type) {
    return '$type Lista';
  }

  @override
  String get watching => 'Guardare';

  @override
  String get reading => 'Lettura';

  @override
  String get readStatus => 'Leggi';

  @override
  String get watchStatus => 'Guardato';

  @override
  String planned(String type) {
    return 'Pianificato $type';
  }

  @override
  String onHold(String type) {
    return 'In sospeso $type';
  }

  @override
  String get droppedAnime => 'Anime abbandonati';

  @override
  String get droppedManga => 'Manga abbandonati';

  @override
  String noDropped(String type) {
    return 'Non hai ancora abbandonato nessun $type.';
  }

  @override
  String get continueReading => 'Continua a leggere';

  @override
  String get continueWatching => 'Continua a guardare';

  @override
  String browse(String type) {
    return 'Sfoglia $type';
  }

  @override
  String trending(String type) {
    return 'In tendenza $type';
  }

  @override
  String popular(String type) {
    return 'Popolare $type';
  }

  @override
  String get topAiring => 'Top in onda';

  @override
  String topRated(String type) {
    return 'Top valutati $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Più favorito $type';
  }

  @override
  String get thisSeason => 'Questa stagione';

  @override
  String get nextSeason => 'Prossima stagione';

  @override
  String get previousSeason => 'Stagione precedente';

  @override
  String get recommended => 'Consigliato';

  @override
  String get recommendationsEmptyMessage =>
      'Guarda/Leggi qualche Anime o Manga per ricevere consigli';

  @override
  String get recentUpdates => 'Aggiornamenti recenti';

  @override
  String get allCaughtUpNew => 'Tutto aggiornato, cosa c\'è di nuovo?';

  @override
  String favorite(String type) {
    return 'Preferito $type';
  }

  @override
  String get favorites => 'Preferiti';

  @override
  String get noFavourites =>
      'Sembra che non ti piaccia nulla, \nProva ad aggiungere un preferito per tenerlo qui.';

  @override
  String get noOnHold => 'Sembra che tu non abbia messo nulla in sospeso.';

  @override
  String manageLayout(String service, String page) {
    return 'Gestisci il layout della pagina $page per $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Puoi gestire il layout della pagina $page trascinando e rilasciando gli elementi';
  }

  @override
  String get gridView => 'Visualizzazione a griglia';

  @override
  String get listView => 'Visualizza elenco';

  @override
  String get compactView => 'Visualizzazione compatta';

  @override
  String get layout => 'Telaio';

  @override
  String get sort => 'Ordina';

  @override
  String get utd => 'Su e giù';

  @override
  String get dtu => 'Condividi su Twitter';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Episodio visto';

  @override
  String get chapterRead => 'Capitolo letto';

  @override
  String get outOf => 'fuori';

  @override
  String get totalOf => 'Totale di';

  @override
  String get selected => 'Selezionato';

  @override
  String get found => 'Trovato';

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
  String available(String type) {
    return 'Disponibile $type';
  }

  @override
  String installed(String type) {
    return 'Installato $type';
  }

  @override
  String get extensionsDescription =>
      'Installa e gestisci le estensioni per funzionalità aggiuntive';

  @override
  String get addAnimeRepo => 'Aggiungi Anime Repo';

  @override
  String get addAnimeRepoDesc => 'Aggiungere Anime Repo da varie fonti';

  @override
  String get addMangaRepo => 'Aggiungi Manga Repo';

  @override
  String get addMangaRepoDesc => 'Aggiungi Manga Repo da varie fonti';

  @override
  String get addNovelRepo => 'Aggiungi Novel Repo';

  @override
  String get addNovelRepoDesc => 'Aggiungi Novel Repo da varie fonti';

  @override
  String get loadExtensionsIcon => 'Icona delle estensioni di carico';

  @override
  String get loadExtensionsIconDesc =>
      'Disattivare se le estensioni pagina ritardi';

  @override
  String get autoUpdate => 'Aggiornamento automatico';

  @override
  String get autoUpdateDesc => 'Estensioni di aggiornamento automatico';

  @override
  String get installSourceToStart =>
      'Installare un sorgente dalla pagina di estensione per iniziare';

  @override
  String get author => 'Autore';

  @override
  String get averageDuration => 'Durata media';

  @override
  String get characters => 'Personaggi';

  @override
  String get description => 'Sinossi';

  @override
  String get synopsis => 'Sinossi';

  @override
  String get endDate => 'Data di fine';

  @override
  String get format => 'Formato';

  @override
  String get meanScore => 'Punteggio medio';

  @override
  String get name => 'Nome';

  @override
  String get nameRomaji => 'Nome (Romaji)';

  @override
  String get popularity => 'Popolarità';

  @override
  String get relations => 'Relazioni';

  @override
  String get prequel => 'PREQUESTO';

  @override
  String get sequel => 'SEQUE';

  @override
  String get source => 'Fonte';

  @override
  String get staff => 'Personale';

  @override
  String get startDate => 'Data di inizio';

  @override
  String get status => 'Stato';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Sinonimi';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Totale';

  @override
  String get collapseText => 'mostra meno';

  @override
  String get expandText => 'mostra di più';

  @override
  String get comingSoon => 'In arrivo';

  @override
  String get wrongTitle => 'Titolo sbagliato?';

  @override
  String get youTube => 'Gioca su YouTube?';

  @override
  String get mediaNotFound => 'Media non trovata';

  @override
  String get noChapterFound => 'Nessun capitolo trovato';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Attività',
      one: 'Attività',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Lingua';

  @override
  String get account => 'Account';

  @override
  String get accountDescription =>
      'Gestisci facilmente i tuoi account di AniList, MAL e Discord';

  @override
  String get common => 'Comune';

  @override
  String get commonDescription =>
      'Accedi alle impostazioni generali per un uso fluido dell\'app';

  @override
  String get animeDescription =>
      'Personalizza e gestisci le tue preferenze anime';

  @override
  String get mangaDescription =>
      'Organizza e personalizza la tua esperienza manga';

  @override
  String get about => 'Informazioni';

  @override
  String get aboutDescription => 'Scopri di più sull\'app e sui suoi creatori';

  @override
  String get notifications => 'Notifiche';

  @override
  String get notificationsDescription =>
      'Configura come e quando ricevere notifiche';

  @override
  String get offlineMode => 'Modalità offline';

  @override
  String get offlineModeDescription =>
      'Usa l\'app senza una connessione a Internet';

  @override
  String get incognitoMode => 'Modalità incognito';

  @override
  String get incognitoModeDescription => 'Naviga senza salvare la tua attività';

  @override
  String get hidePrivate => 'Nascondi privato';

  @override
  String get hidePrivateDescription =>
      'Nascondi le serie private dalla home page.';

  @override
  String get hiddenMedia => 'Media nascosti';

  @override
  String get noHiddenMediaFound => 'Nessun media nascosto trovato';

  @override
  String get playerSettingsTitle => 'Impostazioni del lettore';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Velocità';

  @override
  String get speedDescription => 'Velocità predefinita per il lettore';

  @override
  String get cursedSpeed => 'Velocità Maledetta';

  @override
  String get cursedSpeedDescription => 'Per chi è troppo occupato con la vita';

  @override
  String get resizeMode => 'Modalità ridimensionamento';

  @override
  String get resizeModeDescription =>
      'Modalità di ridimensionamento predefinita per il lettore';

  @override
  String get skipButton => 'Pulsante Salta';

  @override
  String get skipButtonDescription => 'Durata del pulsante salta';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Sottotitoli';

  @override
  String get showSubtitles => 'Mostra sottotitoli';

  @override
  String get showSubtitlesDescription =>
      'Mostra i sottotitoli per impostazione predefinita';

  @override
  String get subtitlePreview => 'Anteprima sottotitoli';

  @override
  String get fontColor => 'Colore del testo';

  @override
  String get fontColorDescription => 'Colore del testo del sottotitolo';

  @override
  String get fontFamily => 'Famiglia del carattere';

  @override
  String get fontFamilyDescription => 'Famiglia del carattere del sottotitolo';

  @override
  String get fontSize => 'Dimensione del carattere';

  @override
  String get fontSizeDescription => 'Dimensione del carattere del sottotitolo';

  @override
  String get fontWeight => 'Spessore del carattere';

  @override
  String get fontWeightDescription => 'Spessore del carattere del sottotitolo';

  @override
  String get backgroundColor => 'Colore di sfondo';

  @override
  String get backgroundColorDescription => 'Colore di sfondo del sottotitolo';

  @override
  String get outlineColor => 'Colore del contorno';

  @override
  String get outlineColorDescription => 'Colore del contorno del sottotitolo';

  @override
  String get bottomPadding => 'Padding inferiore';

  @override
  String get bottomPaddingDescription => 'Padding inferiore del sottotitolo';

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
  String get theme => 'Tema';

  @override
  String get themeDescription =>
      'Personalizza l\'aspetto e l\'atmosfera della tua app';

  @override
  String get darkMode => 'Modalità scura';

  @override
  String get enableDarkMode => 'Abilita la modalità scura';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Usa lo stesso colore del tuo sfondo';

  @override
  String get customTheme => 'Tema personalizzato';

  @override
  String get customThemeDescription => 'Usa il tuo colore per il tema';

  @override
  String get oledThemeVariant => 'Variante tema OLED';

  @override
  String get oledThemeVariantDescription => 'Abilita la modalità OLED';

  @override
  String get colorPicker => 'Selettore colore';

  @override
  String get pickColor => 'Scegli un colore';

  @override
  String get colorPickerDescription => 'Seleziona un colore';

  @override
  String get colorPickerDefault => 'Predefinito';

  @override
  String get colorPickerCustom => 'Personalizzato';

  @override
  String get customPath => 'Percorso personalizzato';

  @override
  String get customPathDescription =>
      'Impostare un percorso personalizzato per salvare i file\nPremere a lungo per rimuovere';

  @override
  String get selectDirectory => 'Seleziona una directory';

  @override
  String get selectMediaService => 'Selezionare il servizio Media';

  @override
  String get logFile => 'Log File';

  @override
  String get logFileDescription => 'Condividi il file di registro';

  @override
  String get restoreSettings => 'Ripristina le impostazioni';

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
      'Vuoi supportare il manutentore di Dartotsu?\nConsidera una donazione';

  @override
  String get donationGoal => 'Nessun obiettivo di donazione al momento';

  @override
  String get options => 'Opzioni';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Annulla';

  @override
  String get yes => 'Sì';

  @override
  String get no => 'No';
}

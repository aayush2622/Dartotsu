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
      'Новое лучшее приложение для\nотслеживания аниме и манги';

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
  String get login => 'Войти';

  @override
  String loginTo(String service) {
    return 'Вход в $service';
  }

  @override
  String logout(String type) {
    return 'Выйти $type';
  }

  @override
  String get confirmLogout => 'Вы уверены, что хотите выйти?';

  @override
  String get anime => 'Аниме';

  @override
  String get manga => 'Манга';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Новинка';

  @override
  String get ln => 'Ранобэ';

  @override
  String get home => 'Домой';

  @override
  String get search => 'Поиск';

  @override
  String get calendar => 'Календарь';

  @override
  String get settings => 'Настройки';

  @override
  String get watch => 'Смотреть';

  @override
  String get read => 'Читать';

  @override
  String get info => 'Информация';

  @override
  String get comments => 'Комментарии';

  @override
  String get addToList => 'Добавить в список';

  @override
  String get series => 'Серия';

  @override
  String get season => 'Сезон';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Эпизоды',
      one: 'Эпизод',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'главы',
      one: 'глава',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'объемы',
      one: 'объем',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'фильмы',
      one: 'фильм',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Эпизоды';

  @override
  String get totalChapters => 'Главы';

  @override
  String get genres => 'Жанры';

  @override
  String get scanlators => 'Скалы';

  @override
  String list(String type) {
    return '$type List';
  }

  @override
  String get watching => 'Смотреть';

  @override
  String get reading => 'Чтение';

  @override
  String get readStatus => 'Читать';

  @override
  String get watchStatus => 'Смотреть';

  @override
  String planned(String type) {
    return 'Запланировано $type';
  }

  @override
  String onHold(String type) {
    return '$type';
  }

  @override
  String get droppedAnime => 'Сброшенное аниме';

  @override
  String get droppedManga => 'Падение Манги';

  @override
  String noDropped(String type) {
    return 'Вы еще не уронили $type.';
  }

  @override
  String get continueReading => 'Продолжить чтение';

  @override
  String get continueWatching => 'Продолжать смотреть';

  @override
  String browse(String type) {
    return '$type';
  }

  @override
  String trending(String type) {
    return '$type';
  }

  @override
  String popular(String type) {
    return 'Популярный $type';
  }

  @override
  String get topAiring => 'Топ-эфир';

  @override
  String topRated(String type) {
    return 'Самый рейтинговый $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Самый вкусный $type';
  }

  @override
  String get thisSeason => 'Этот сезон';

  @override
  String get nextSeason => 'Следующий сезон';

  @override
  String get previousSeason => 'Предыдущий сезон';

  @override
  String get recommended => 'Рекомендовано';

  @override
  String get recommendationsEmptyMessage =>
      'Наблюдайте за аниме или мангой, чтобы получить рекомендации';

  @override
  String get recentUpdates => 'Последние обновления';

  @override
  String get allCaughtUpNew => 'Все догнали, когда Нью?';

  @override
  String favorite(String type) {
    return 'Любимый $type';
  }

  @override
  String get favorites => 'Любимые';

  @override
  String get noFavourites =>
      'Похоже, тебе ничего не нравится.\nПопытайся насладиться шоу, чтобы сохранить его здесь.';

  @override
  String get noOnHold => 'Похоже, вы ничего не задержали.';

  @override
  String manageLayout(String service, String page) {
    return 'Управление макетом страницы $page для $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Вы можете управлять компоновкой для страницы $page, перетаскивая и опуская элементы';
  }

  @override
  String get gridView => 'Вид сетки';

  @override
  String get listView => 'Вид списка';

  @override
  String get compactView => 'Компактный вид';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Сорт';

  @override
  String get utd => 'Вниз';

  @override
  String get dtu => 'Вниз до вверх';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Эпизод Смотреть';

  @override
  String get chapterRead => 'Глава Читать';

  @override
  String get outOf => 'из';

  @override
  String get totalOf => 'Итого';

  @override
  String get selected => 'Выбрано';

  @override
  String get found => 'Найден';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Расширение',
      one: 'Расширение',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Доступно $type';
  }

  @override
  String installed(String type) {
    return 'Установка $type';
  }

  @override
  String get extensionsDescription =>
      'Устанавливайте и управляйте расширениями для дополнительных возможностей';

  @override
  String get addAnimeRepo => 'Добавить аниме Repo';

  @override
  String get addAnimeRepoDesc => 'Добавить аниме Repo из различных источников';

  @override
  String get addMangaRepo => 'Добавить Manga Repo';

  @override
  String get addMangaRepoDesc => 'Добавить мангу Репо из различных источников';

  @override
  String get addNovelRepo => 'Добавить значок';

  @override
  String get addNovelRepoDesc => 'Добавить Novel Repo из различных источников';

  @override
  String get loadExtensionsIcon => 'Иконка расширения загрузки';

  @override
  String get loadExtensionsIconDesc =>
      'Отключить, если задержка страницы расширений';

  @override
  String get autoUpdate => 'Автоматическое обновление';

  @override
  String get autoUpdateDesc => 'Продления Auto Update';

  @override
  String get installSourceToStart =>
      'Установить источник с страницы расширения, чтобы начать';

  @override
  String get author => 'Автор';

  @override
  String get averageDuration => 'Средняя продолжительность';

  @override
  String get characters => 'Персонажи';

  @override
  String get description => 'Краткое содержание';

  @override
  String get synopsis => 'Краткое содержание';

  @override
  String get endDate => 'Дата окончания';

  @override
  String get format => 'Формат';

  @override
  String get meanScore => 'Средний балл';

  @override
  String get name => 'Имя';

  @override
  String get nameRomaji => 'Имя (Ромаджи)';

  @override
  String get popularity => 'Популярность';

  @override
  String get relations => 'Отношения';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Источник';

  @override
  String get staff => 'Сотрудники';

  @override
  String get startDate => 'Начало Дата';

  @override
  String get status => 'Статус';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Синонимы';

  @override
  String get tags => 'Тэги';

  @override
  String get total => 'Итого';

  @override
  String get collapseText => 'показать меньше';

  @override
  String get expandText => 'показать';

  @override
  String get comingSoon => 'Иду';

  @override
  String get wrongTitle => 'Не тот титул?';

  @override
  String get youTube => 'Играть на YouTube?';

  @override
  String get mediaNotFound => 'СМИ не нашли';

  @override
  String get noChapterFound => 'Не найдена глава';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'деятельность',
      one: 'активность',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Настройка';

  @override
  String get account => 'Аккаунт';

  @override
  String get accountDescription =>
      'Управляйте своими аккаунтами в AniList, MAL и Discord без усилий';

  @override
  String get common => 'Общие';

  @override
  String get commonDescription =>
      'Доступ к общим настройкам для удобного использования приложения';

  @override
  String get animeDescription =>
      'Персонализируйте и управляйте своими предпочтениями в аниме';

  @override
  String get mangaDescription => 'Организуйте и адаптируйте ваш опыт с мангой';

  @override
  String get about => 'О приложении';

  @override
  String get aboutDescription => 'Узнайте больше о приложении и его создателях';

  @override
  String get notifications => 'Уведомления';

  @override
  String get notificationsDescription =>
      'Настройте, как и когда вы будете получать уведомления';

  @override
  String get offlineMode => 'Офлайн-режим';

  @override
  String get offlineModeDescription =>
      'Используйте приложение без подключения к интернету';

  @override
  String get incognitoMode => 'Режим инкогнито';

  @override
  String get incognitoModeDescription =>
      'Просматривайте без сохранения активности';

  @override
  String get hidePrivate => 'Скрыть личное';

  @override
  String get hidePrivateDescription =>
      'Скрыть частные сериалы с главной страницы.';

  @override
  String get hiddenMedia => 'Скрытые СМИ';

  @override
  String get noHiddenMediaFound => 'Нет скрытых СМИ';

  @override
  String get playerSettingsTitle => 'Настройки плеера';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Скорость';

  @override
  String get speedDescription => 'Скорость плеера по умолчанию';

  @override
  String get cursedSpeed => 'Проклятая скорость';

  @override
  String get cursedSpeedDescription =>
      'Для людей, которые слишком заняты жизнью';

  @override
  String get resizeMode => 'Режим изменения размера';

  @override
  String get resizeModeDescription =>
      'Режим изменения размера по умолчанию для плеера';

  @override
  String get skipButton => 'Кнопка пропуска';

  @override
  String get skipButtonDescription => 'Продолжительность кнопки пропуска';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Субтитры';

  @override
  String get showSubtitles => 'Показывать субтитры';

  @override
  String get showSubtitlesDescription => 'Показывать субтитры по умолчанию';

  @override
  String get subtitlePreview => 'Предпросмотр субтитров';

  @override
  String get fontColor => 'Цвет шрифта';

  @override
  String get fontColorDescription => 'Цвет шрифта субтитров';

  @override
  String get fontFamily => 'Шрифт';

  @override
  String get fontFamilyDescription => 'Шрифт субтитров';

  @override
  String get fontSize => 'Размер шрифта';

  @override
  String get fontSizeDescription => 'Размер шрифта субтитров';

  @override
  String get fontWeight => 'Толщина шрифта';

  @override
  String get fontWeightDescription => 'Толщина шрифта субтитров';

  @override
  String get backgroundColor => 'Цвет фона';

  @override
  String get backgroundColorDescription => 'Цвет фона субтитров';

  @override
  String get outlineColor => 'Цвет контура';

  @override
  String get outlineColorDescription => 'Цвет контура субтитров';

  @override
  String get bottomPadding => 'Отступ снизу';

  @override
  String get bottomPaddingDescription => 'Отступ снизу для субтитров';

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
  String get theme => 'Тема';

  @override
  String get themeDescription =>
      'Настройте внешний вид и атмосферу вашего приложения';

  @override
  String get darkMode => 'Тёмный режим';

  @override
  String get enableDarkMode => 'Включить тёмный режим';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Используйте тот же цвет, что и на вашем обоев';

  @override
  String get customTheme => 'Пользовательская тема';

  @override
  String get customThemeDescription =>
      'Используйте свой собственный цвет для темы';

  @override
  String get oledThemeVariant => 'Вариант OLED темы';

  @override
  String get oledThemeVariantDescription => 'Включить режим OLED';

  @override
  String get colorPicker => 'Выбор цвета';

  @override
  String get pickColor => 'Выберите цвет';

  @override
  String get colorPickerDescription => 'Подберите цвет';

  @override
  String get colorPickerDefault => 'По умолчанию';

  @override
  String get colorPickerCustom => 'Пользователь';

  @override
  String get customPath => 'Пользовательский путь';

  @override
  String get customPathDescription =>
      'Настройка пользовательского пути для сохранения файлов\nДлинная пресса для удаления';

  @override
  String get selectDirectory => 'Выберите каталог';

  @override
  String get selectMediaService => 'Выберите медиа-сервис';

  @override
  String get logFile => 'Файл журнала';

  @override
  String get logFileDescription => 'Поделиться файлом журнала';

  @override
  String get restoreSettings => 'Восстановить настройки';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Веб-сайт';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Хотите поддержать разработчика Dartotsu?\nПодумайте о донате';

  @override
  String get donationGoal => 'Нет цели по донатам на данный момент';

  @override
  String get options => 'Параметры';

  @override
  String get ok => 'ОК';

  @override
  String get cancel => 'Отмена';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';
}

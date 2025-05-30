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
  String get appTagline => 'НОВИЙ найкращий застосунок для\nвідстеження аніме та манґи';

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
  String get login => 'Увійти';

  @override
  String loginTo(String service) {
    return 'Увійдіть до $service';
  }

  @override
  String get anime => 'Аніме';

  @override
  String get manga => 'Манґа';

  @override
  String get manhwa => 'Манхва';

  @override
  String get manhua => 'Манхуа';

  @override
  String get home => 'додому';

  @override
  String get novel => 'Роман';

  @override
  String get ln => 'Легкий роман';

  @override
  String get watch => 'Дивитися';

  @override
  String get read => 'Читати';

  @override
  String get info => 'Інформація';

  @override
  String get comments => 'Коментарі';

  @override
  String get addToList => 'Додати до списку';

  @override
  String get series => 'Серія';

  @override
  String get season => 'Сезон';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Епізоди',
      one: 'Епізод',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Розділи',
      one: 'Розділ',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Томи',
      one: 'Том',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Фільми',
      one: 'Фільм',
    );
    return '$_temp0';
  }

  @override
  String get genres => 'Жанри';

  @override
  String get calendar => 'Календар';

  @override
  String get search => 'Пошук';

  @override
  String get scanlators => 'Перекладачі';

  @override
  String get utd => 'Згори вниз';

  @override
  String get dtu => 'Знизу вгору';

  @override
  String list(String type) {
    return '$type Список';
  }

  @override
  String manageLayout(String service, String page) {
    return 'Керувати макетом сторінки $page для $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Ви можете керувати макетом сторінки $page, перетягуючи елементи';
  }

  @override
  String logout(String type) {
    return 'Вийти $type';
  }

  @override
  String get confirmLogout => 'Ви впевнені, що бажаєте вийти?';

  @override
  String get options => 'Параметри';

  @override
  String get ok => 'Гаразд';

  @override
  String get cancel => 'Скасувати';

  @override
  String get yes => 'Так';

  @override
  String get no => 'Ні';

  @override
  String get gridView => 'Перегляд сітки';

  @override
  String get listView => 'Перегляд списку';

  @override
  String get compactView => 'Компактний вид';

  @override
  String get layout => 'Макет';

  @override
  String get sort => 'Сортувати';

  @override
  String get episodeWatched => 'Епізод переглянуто';

  @override
  String get chapterRead => 'Розділ прочитано';

  @override
  String get restoreSettings => 'Відновлення налаштувань';

  @override
  String available(String type) {
    return 'У наявності: $type';
  }

  @override
  String installed(String type) {
    return 'Встановлено: $type';
  }

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
  String trending(String type) {
    return 'У тренді: $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Найулюбленіше: $type';
  }

  @override
  String popular(String type) {
    return 'Популярне: $type';
  }

  @override
  String get topAiring => 'Найкраще стримінгове';

  @override
  String topRated(String type) {
    return 'Найвищий рейтинг: $type';
  }

  @override
  String get thisSeason => 'Цей сезон';

  @override
  String get nextSeason => 'Наступний сезон';

  @override
  String get previousSeason => 'Попередній сезон';

  @override
  String get language => 'Мова';

  @override
  String get settings => 'Налаштування';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Активності',
      one: 'Активність',
    );
    return '$_temp0';
  }

  @override
  String planned(String type) {
    return 'Заплановано: $type';
  }

  @override
  String browse(String type) {
    return 'Переглядаю: $type';
  }

  @override
  String favorite(String type) {
    return 'Улюблене: $type';
  }

  @override
  String onHold(String type) {
    return 'Відкладено: $type';
  }

  @override
  String noDropped(String type) {
    return 'Ви ще нічого не кинули з $type.';
  }

  @override
  String get continueReading => 'Продовжити читати';

  @override
  String get continueWatching => 'Продовжити перегляд';

  @override
  String get account => 'Облікові записи';

  @override
  String get offlineMode => 'Автономний режим';

  @override
  String get incognitoMode => 'Приватний перегляд';

  @override
  String get hidePrivate => 'Приховати приватне';

  @override
  String get hidePrivateDescription => 'Приховати приватні серії з головної сторінки.';

  @override
  String get fontColor => 'Колір шрифту';

  @override
  String get fontColorDescription => 'Колір шрифту субтитрів';

  @override
  String get fontFamily => 'Сімейство шрифтів';

  @override
  String get fontFamilyDescription => 'Сімейство шрифтів субтитрів';

  @override
  String get fontSize => 'Розмір шрифту';

  @override
  String get fontSizeDescription => 'Розмір шрифту субтитрів';

  @override
  String get fontWeight => 'Товщина шрифту';

  @override
  String get fontWeightDescription => 'Товщина шрифту субтитрів';

  @override
  String get showSubtitles => 'Показувати субтитри';

  @override
  String get showSubtitlesDescription => 'Типово показувати субтитри';

  @override
  String get skipButton => 'Кнопка «Пропустити»';

  @override
  String get skipButtonDescription => 'Час пропускання кнопкою «Пропустити»';

  @override
  String get speed => 'Швидкість';

  @override
  String get cursedSpeed => 'Проклята швидкість';

  @override
  String get cursedSpeedDescription => 'Для людей, які занадто зайняті життям';

  @override
  String get speedDescription => 'Типова швидкість програвача';

  @override
  String get subtitles => 'Субтитри';

  @override
  String get subtitlePreview => 'Передперегляд субтитрів';

  @override
  String get backgroundColor => 'Колір тла';

  @override
  String get backgroundColorDescription => 'Колір тла субтитрів';

  @override
  String get bottomPadding => 'Нижній відступ';

  @override
  String get bottomPaddingDescription => 'Нижній відступ субтитрів';

  @override
  String get colorPicker => 'Підбір кольору';

  @override
  String get pickColor => 'Виберіть колір';

  @override
  String get colorPickerDescription => 'Оберіть колір';

  @override
  String get about => 'Про застосунок';

  @override
  String get aboutDescription => 'Дізнайтеся більше про застосунок та його творців';

  @override
  String get common => 'Спільні';

  @override
  String get commonDescription => 'Доступ до загальних налаштувань для безперебійного використання застосунку';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Використовувати той самий колір, що і шпалери';

  @override
  String get customTheme => 'Власна тема';

  @override
  String get customThemeDescription => 'Використовуйте свій власний колір для теми';

  @override
  String get notifications => 'Сповіщення';

  @override
  String get notificationsDescription => 'Налаштуйте, як і коли ви будете отримувати сповіщення';

  @override
  String get accountDescription => 'Керуйте обліковими записами AniList, MAL та Discord без зайвих зусиль';

  @override
  String get allCaughtUpNew => 'Що нового?';

  @override
  String get animeDescription => 'Персоналізуйте та керуйте своїми вподобаннями щодо аніме';

  @override
  String get darkMode => 'Темний режим';

  @override
  String get donationGoal => 'Немає цільових пожертв';

  @override
  String get droppedAnime => 'Покинуте аніме';

  @override
  String get droppedManga => 'Покинута манґа';

  @override
  String get enableDarkMode => 'Увімкнути темний режим';

  @override
  String get extensionsDescription => 'Встановлюйте та керуйте розширеннями для додаткової функціональності';

  @override
  String get hiddenMedia => 'Приховані медіа';

  @override
  String get incognitoModeDescription => 'Переглядайте без збереження активності';

  @override
  String get mangaDescription => 'Організуйте та адаптуйте свій досвід читання манґи';

  @override
  String get noFavourites => 'Схоже, вам нічого не подобається,\nспробуйте вподобати серіал, щоб залишити його тут.';

  @override
  String get noHiddenMediaFound => 'Не знайдено прихованих медіа';

  @override
  String get noOnHold => 'Схоже, ви нічого не відклали на потім.';

  @override
  String get offlineModeDescription => 'Використовувати застосунок без з\'єднання з мережею';

  @override
  String get oledThemeVariant => 'OLED тема';

  @override
  String get oledThemeVariantDescription => 'Увімкнути режим OLED';

  @override
  String get outlineColor => 'Колір контура';

  @override
  String get outlineColorDescription => 'Колір контура субтитрів';

  @override
  String get playerSettingsTitle => 'Налаштування програвача';

  @override
  String get recentUpdates => 'Останні оновлення';

  @override
  String get recommendationsEmptyMessage => 'Подивіться / прочитайте аніме або манґу, щоб отримати рекомендації';

  @override
  String get resizeMode => 'Режим зміни розміру';

  @override
  String get resizeModeDescription => 'Типовий режим зміни розміру програвача';

  @override
  String get supportMaintainer => 'Хочете підтримати розробника Dartotsu?\nПодумайте про пожертву';

  @override
  String get theme => 'Тема';

  @override
  String get themeDescription => 'Налаштуйте вигляд та атмосферу вашого застосунку';

  @override
  String get author => 'Автор';

  @override
  String get averageDuration => 'Середня тривалість';

  @override
  String get characters => 'Персонажі';

  @override
  String get collapseText => 'показувати менше';

  @override
  String get comingSoon => 'НЕЗАБАРОМ';

  @override
  String get description => 'Синопсис';

  @override
  String get endDate => 'Дата закінчення';

  @override
  String get expandText => 'показати більше';

  @override
  String get favorites => 'Вибране';

  @override
  String get format => 'Формат';

  @override
  String get meanScore => 'Середня оцінка';

  @override
  String get name => 'Назва';

  @override
  String get nameRomaji => 'Назва (Ромаджі)';

  @override
  String get popularity => 'Популярність';

  @override
  String get prequel => 'ПРИКВЕЛ';

  @override
  String get recommended => 'Рекомендовано';

  @override
  String get relations => 'Відносини';

  @override
  String get sequel => 'ПРОДОВЖЕННЯ';

  @override
  String get source => 'Джерело';

  @override
  String get staff => 'Персонал';

  @override
  String get startDate => 'Дата початку';

  @override
  String get status => 'Статус';

  @override
  String get studio => 'Студія';

  @override
  String get synonyms => 'Синоніми';

  @override
  String get synopsis => 'Синопсис';

  @override
  String get tags => 'Теги';

  @override
  String get total => 'Всього';

  @override
  String get totalEpisodes => 'Епізоди';

  @override
  String get totalChapters => 'Розділи';

  @override
  String get selectMediaService => 'Виберіть медіасервіс';

  @override
  String get customPath => 'Спеціальний шлях';

  @override
  String get customPathDescription => 'Встановіть спеціальний шлях для збереження файлів\nНатисніть і утримуйте, щоб видалити';

  @override
  String get selectDirectory => 'Виберіть каталог';

  @override
  String get logFile => 'Лог файл';

  @override
  String get logFileDescription => 'Надіслати файл';

  @override
  String get colorPickerDefault => 'Зареєструватися';

  @override
  String get colorPickerCustom => 'Користування';

  @override
  String get addAnimeRepo => 'Додати Аніме Репо';

  @override
  String get addAnimeRepoDesc => 'Додати Аніме Репо з різних джерел';

  @override
  String get addMangaRepo => 'Додати Манга Репо';

  @override
  String get addMangaRepoDesc => 'Додати Манга Репо з різних джерел';

  @override
  String get addNovelRepo => 'Додати Новел Репо';

  @override
  String get addNovelRepoDesc => 'Додати Новев Репо з різних джерел';

  @override
  String get loadExtensionsIcon => 'Значок розширення навантаження';

  @override
  String get loadExtensionsIconDesc => 'Вимкнено, якщо розширення сторінок лаг';

  @override
  String get autoUpdate => 'Автоновини';

  @override
  String get autoUpdateDesc => 'Розширення автоматичного оновлення';

  @override
  String get readStatus => 'Читати';

  @override
  String get watchStatus => 'подивився';

  @override
  String get outOf => 'з';

  @override
  String get totalOf => 'Всього';

  @override
  String get wrongTitle => 'Назва wrong?';

  @override
  String get youTube => 'Грати на YouTube?';

  @override
  String get installSourceToStart => 'Встановіть джерело з сторінки розширення для запуску';

  @override
  String get watching => 'Проживання';

  @override
  String get reading => 'Читання';

  @override
  String get mediaNotFound => 'Не знайдено';

  @override
  String get noChapterFound => 'Український';

  @override
  String get selected => 'Вибрані';

  @override
  String get found => 'знайдено';

  @override
  String get webView => 'Веб-камера';
}

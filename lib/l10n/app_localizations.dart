import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sa.dart';
import 'app_localizations_si.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('bn'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('es'),
    Locale('fa'),
    Locale('fil'),
    Locale('fr'),
    Locale('ha'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kn'),
    Locale('ko'),
    Locale('ml'),
    Locale('mr'),
    Locale('ms'),
    Locale('ne'),
    Locale('nl'),
    Locale('or'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('ru'),
    Locale('sa'),
    Locale('si'),
    Locale('so'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Dartotsu'**
  String get appName;

  /// No description provided for @appTagline.
  ///
  /// In en, this message translates to:
  /// **'The NEW Best App For\nTracking Anime & Manga'**
  String get appTagline;

  /// No description provided for @anilist.
  ///
  /// In en, this message translates to:
  /// **'AniList'**
  String get anilist;

  /// No description provided for @mal.
  ///
  /// In en, this message translates to:
  /// **'MyAnimeList'**
  String get mal;

  /// No description provided for @kitsu.
  ///
  /// In en, this message translates to:
  /// **'Kitsu'**
  String get kitsu;

  /// No description provided for @simkl.
  ///
  /// In en, this message translates to:
  /// **'Simkl'**
  String get simkl;

  /// No description provided for @discord.
  ///
  /// In en, this message translates to:
  /// **'Discord'**
  String get discord;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @loginTo.
  ///
  /// In en, this message translates to:
  /// **'Login to {service}'**
  String loginTo(String service);

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout {type}'**
  String logout(String type);

  /// No description provided for @confirmLogout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get confirmLogout;

  /// No description provided for @anime.
  ///
  /// In en, this message translates to:
  /// **'Anime'**
  String get anime;

  /// No description provided for @manga.
  ///
  /// In en, this message translates to:
  /// **'Manga'**
  String get manga;

  /// No description provided for @manhwa.
  ///
  /// In en, this message translates to:
  /// **'Manhwa'**
  String get manhwa;

  /// No description provided for @manhua.
  ///
  /// In en, this message translates to:
  /// **'Manhua'**
  String get manhua;

  /// No description provided for @novel.
  ///
  /// In en, this message translates to:
  /// **'Novel'**
  String get novel;

  /// No description provided for @ln.
  ///
  /// In en, this message translates to:
  /// **'Light Novel'**
  String get ln;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @watch.
  ///
  /// In en, this message translates to:
  /// **'Watch'**
  String get watch;

  /// No description provided for @read.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get read;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @addToList.
  ///
  /// In en, this message translates to:
  /// **'Add To List'**
  String get addToList;

  /// No description provided for @series.
  ///
  /// In en, this message translates to:
  /// **'Series'**
  String get series;

  /// No description provided for @season.
  ///
  /// In en, this message translates to:
  /// **'Season'**
  String get season;

  /// count > 1 will use plural form
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {Episode} other {Episodes}}'**
  String episode(int count);

  /// count > 1 will use plural form
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {Chapter} other {Chapters}}'**
  String chapter(int count);

  /// count > 1 will use plural form
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {Volume} other {Volumes}}'**
  String volume(int count);

  /// count > 1 will use plural form
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {Movie} other {Movies}}'**
  String movie(int count);

  /// No description provided for @totalEpisodes.
  ///
  /// In en, this message translates to:
  /// **'Episodes'**
  String get totalEpisodes;

  /// No description provided for @totalChapters.
  ///
  /// In en, this message translates to:
  /// **'Chapters'**
  String get totalChapters;

  /// No description provided for @genres.
  ///
  /// In en, this message translates to:
  /// **'Genres'**
  String get genres;

  /// No description provided for @scanlators.
  ///
  /// In en, this message translates to:
  /// **'Scanlators'**
  String get scanlators;

  /// No description provided for @list.
  ///
  /// In en, this message translates to:
  /// **'{type} List'**
  String list(String type);

  /// No description provided for @watching.
  ///
  /// In en, this message translates to:
  /// **'Watching'**
  String get watching;

  /// No description provided for @reading.
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get reading;

  /// No description provided for @readStatus.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get readStatus;

  /// No description provided for @watchStatus.
  ///
  /// In en, this message translates to:
  /// **'Watched'**
  String get watchStatus;

  /// No description provided for @planned.
  ///
  /// In en, this message translates to:
  /// **'Planned {type}'**
  String planned(String type);

  /// No description provided for @onHold.
  ///
  /// In en, this message translates to:
  /// **'On Hold {type}'**
  String onHold(String type);

  /// No description provided for @droppedAnime.
  ///
  /// In en, this message translates to:
  /// **'Dropped Anime'**
  String get droppedAnime;

  /// No description provided for @droppedManga.
  ///
  /// In en, this message translates to:
  /// **'Dropped Manga'**
  String get droppedManga;

  /// No description provided for @noDropped.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t dropped any {type} yet.'**
  String noDropped(String type);

  /// No description provided for @continueReading.
  ///
  /// In en, this message translates to:
  /// **'Continue Reading'**
  String get continueReading;

  /// No description provided for @continueWatching.
  ///
  /// In en, this message translates to:
  /// **'Continue Watching'**
  String get continueWatching;

  /// No description provided for @browse.
  ///
  /// In en, this message translates to:
  /// **'Browse {type}'**
  String browse(String type);

  /// No description provided for @trending.
  ///
  /// In en, this message translates to:
  /// **'Trending {type}'**
  String trending(String type);

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular {type}'**
  String popular(String type);

  /// No description provided for @topAiring.
  ///
  /// In en, this message translates to:
  /// **'Top Airing'**
  String get topAiring;

  /// No description provided for @topRated.
  ///
  /// In en, this message translates to:
  /// **'Top Rated {type}'**
  String topRated(String type);

  /// No description provided for @mostFavourite.
  ///
  /// In en, this message translates to:
  /// **'Most Favourite {type}'**
  String mostFavourite(String type);

  /// No description provided for @thisSeason.
  ///
  /// In en, this message translates to:
  /// **'This Season'**
  String get thisSeason;

  /// No description provided for @nextSeason.
  ///
  /// In en, this message translates to:
  /// **'Next Season'**
  String get nextSeason;

  /// No description provided for @previousSeason.
  ///
  /// In en, this message translates to:
  /// **'Previous Season'**
  String get previousSeason;

  /// No description provided for @recommended.
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommended;

  /// No description provided for @recommendationsEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'Watch/Read some Anime or Manga to get Recommendations'**
  String get recommendationsEmptyMessage;

  /// No description provided for @recentUpdates.
  ///
  /// In en, this message translates to:
  /// **'Recent Updates'**
  String get recentUpdates;

  /// No description provided for @allCaughtUpNew.
  ///
  /// In en, this message translates to:
  /// **'All caught up, what\'s New?'**
  String get allCaughtUpNew;

  /// No description provided for @favorite.
  ///
  /// In en, this message translates to:
  /// **'Favorite {type}'**
  String favorite(String type);

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @noFavourites.
  ///
  /// In en, this message translates to:
  /// **'Looks like you don\'t like anything,\nTry liking a show to keep it here.'**
  String get noFavourites;

  /// No description provided for @noOnHold.
  ///
  /// In en, this message translates to:
  /// **'Looks like you haven\'t put anything on hold.'**
  String get noOnHold;

  /// No description provided for @manageLayout.
  ///
  /// In en, this message translates to:
  /// **'Manage {page} page Layout for {service}'**
  String manageLayout(String service, String page);

  /// No description provided for @manageLayoutDescription.
  ///
  /// In en, this message translates to:
  /// **'You can manage the layout for {page} page by dragging and dropping the items'**
  String manageLayoutDescription(String page);

  /// No description provided for @gridView.
  ///
  /// In en, this message translates to:
  /// **'Grid View'**
  String get gridView;

  /// No description provided for @listView.
  ///
  /// In en, this message translates to:
  /// **'List View'**
  String get listView;

  /// No description provided for @compactView.
  ///
  /// In en, this message translates to:
  /// **'Compact View'**
  String get compactView;

  /// No description provided for @layout.
  ///
  /// In en, this message translates to:
  /// **'Layout'**
  String get layout;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// No description provided for @utd.
  ///
  /// In en, this message translates to:
  /// **'Up To Down'**
  String get utd;

  /// No description provided for @dtu.
  ///
  /// In en, this message translates to:
  /// **'Down To Up'**
  String get dtu;

  /// No description provided for @direction.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get direction;

  /// No description provided for @episodeWatched.
  ///
  /// In en, this message translates to:
  /// **'Episode Watched'**
  String get episodeWatched;

  /// No description provided for @chapterRead.
  ///
  /// In en, this message translates to:
  /// **'Chapter Read'**
  String get chapterRead;

  /// No description provided for @outOf.
  ///
  /// In en, this message translates to:
  /// **'out of'**
  String get outOf;

  /// No description provided for @totalOf.
  ///
  /// In en, this message translates to:
  /// **'Total of'**
  String get totalOf;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @found.
  ///
  /// In en, this message translates to:
  /// **'Found'**
  String get found;

  /// count > 1 will use plural form
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {Extension} other {Extensions}}'**
  String extension(int count);

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available {type}'**
  String available(String type);

  /// No description provided for @installed.
  ///
  /// In en, this message translates to:
  /// **'Installed {type}'**
  String installed(String type);

  /// No description provided for @extensionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Install and manage extensions for added functionality'**
  String get extensionsDescription;

  /// No description provided for @addAnimeRepo.
  ///
  /// In en, this message translates to:
  /// **'Add Anime Repo'**
  String get addAnimeRepo;

  /// No description provided for @addAnimeRepoDesc.
  ///
  /// In en, this message translates to:
  /// **'Add Anime Repo from various sources'**
  String get addAnimeRepoDesc;

  /// No description provided for @addMangaRepo.
  ///
  /// In en, this message translates to:
  /// **'Add Manga Repo'**
  String get addMangaRepo;

  /// No description provided for @addMangaRepoDesc.
  ///
  /// In en, this message translates to:
  /// **'Add Manga Repo from various sources'**
  String get addMangaRepoDesc;

  /// No description provided for @addNovelRepo.
  ///
  /// In en, this message translates to:
  /// **'Add Novel Repo'**
  String get addNovelRepo;

  /// No description provided for @addNovelRepoDesc.
  ///
  /// In en, this message translates to:
  /// **'Add Novel Repo from various sources'**
  String get addNovelRepoDesc;

  /// No description provided for @loadExtensionsIcon.
  ///
  /// In en, this message translates to:
  /// **'Load Extensions icon'**
  String get loadExtensionsIcon;

  /// No description provided for @loadExtensionsIconDesc.
  ///
  /// In en, this message translates to:
  /// **'Disable if extensions page lags'**
  String get loadExtensionsIconDesc;

  /// No description provided for @autoUpdate.
  ///
  /// In en, this message translates to:
  /// **'Auto Update'**
  String get autoUpdate;

  /// No description provided for @autoUpdateDesc.
  ///
  /// In en, this message translates to:
  /// **'Auto Update Extensions'**
  String get autoUpdateDesc;

  /// No description provided for @installSourceToStart.
  ///
  /// In en, this message translates to:
  /// **'Install a source from extension page to start'**
  String get installSourceToStart;

  /// No description provided for @author.
  ///
  /// In en, this message translates to:
  /// **'Author'**
  String get author;

  /// No description provided for @averageDuration.
  ///
  /// In en, this message translates to:
  /// **'Average Duration'**
  String get averageDuration;

  /// No description provided for @characters.
  ///
  /// In en, this message translates to:
  /// **'Characters'**
  String get characters;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Synopsis'**
  String get description;

  /// No description provided for @synopsis.
  ///
  /// In en, this message translates to:
  /// **'Synopsis'**
  String get synopsis;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @format.
  ///
  /// In en, this message translates to:
  /// **'Format'**
  String get format;

  /// No description provided for @meanScore.
  ///
  /// In en, this message translates to:
  /// **'Mean Score'**
  String get meanScore;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @nameRomaji.
  ///
  /// In en, this message translates to:
  /// **'Name (Romaji)'**
  String get nameRomaji;

  /// No description provided for @popularity.
  ///
  /// In en, this message translates to:
  /// **'Popularity'**
  String get popularity;

  /// No description provided for @relations.
  ///
  /// In en, this message translates to:
  /// **'Relations'**
  String get relations;

  /// No description provided for @prequel.
  ///
  /// In en, this message translates to:
  /// **'PREQUEL'**
  String get prequel;

  /// No description provided for @sequel.
  ///
  /// In en, this message translates to:
  /// **'SEQUEL'**
  String get sequel;

  /// No description provided for @source.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get source;

  /// No description provided for @staff.
  ///
  /// In en, this message translates to:
  /// **'Staff'**
  String get staff;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @studio.
  ///
  /// In en, this message translates to:
  /// **'Studio'**
  String get studio;

  /// No description provided for @synonyms.
  ///
  /// In en, this message translates to:
  /// **'Synonyms'**
  String get synonyms;

  /// No description provided for @tags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tags;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @collapseText.
  ///
  /// In en, this message translates to:
  /// **'show less'**
  String get collapseText;

  /// No description provided for @expandText.
  ///
  /// In en, this message translates to:
  /// **'show more'**
  String get expandText;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming SOON'**
  String get comingSoon;

  /// No description provided for @wrongTitle.
  ///
  /// In en, this message translates to:
  /// **'Wrong Title?'**
  String get wrongTitle;

  /// No description provided for @youTube.
  ///
  /// In en, this message translates to:
  /// **'Play on YouTube?'**
  String get youTube;

  /// No description provided for @mediaNotFound.
  ///
  /// In en, this message translates to:
  /// **'Media not found'**
  String get mediaNotFound;

  /// No description provided for @noChapterFound.
  ///
  /// In en, this message translates to:
  /// **'No chapter found'**
  String get noChapterFound;

  /// count > 1 will use plural form
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {Activity} other {Activities}}'**
  String activity(int count);

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @accountDescription.
  ///
  /// In en, this message translates to:
  /// **'Manage your AniList, MAL, and Discord accounts effortlessly'**
  String get accountDescription;

  /// No description provided for @common.
  ///
  /// In en, this message translates to:
  /// **'Common'**
  String get common;

  /// No description provided for @commonDescription.
  ///
  /// In en, this message translates to:
  /// **'Access general settings for seamless app usage'**
  String get commonDescription;

  /// No description provided for @animeDescription.
  ///
  /// In en, this message translates to:
  /// **'Personalize and manage your anime preferences'**
  String get animeDescription;

  /// No description provided for @mangaDescription.
  ///
  /// In en, this message translates to:
  /// **'Organize and tailor your manga experience'**
  String get mangaDescription;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'Learn more about the app and its creators'**
  String get aboutDescription;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @notificationsDescription.
  ///
  /// In en, this message translates to:
  /// **'Configure how and when you receive notifications'**
  String get notificationsDescription;

  /// No description provided for @offlineMode.
  ///
  /// In en, this message translates to:
  /// **'Offline Mode'**
  String get offlineMode;

  /// No description provided for @offlineModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Use the app without an internet connection'**
  String get offlineModeDescription;

  /// No description provided for @incognitoMode.
  ///
  /// In en, this message translates to:
  /// **'Incognito Mode'**
  String get incognitoMode;

  /// No description provided for @incognitoModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Browse without saving your activity'**
  String get incognitoModeDescription;

  /// No description provided for @hidePrivate.
  ///
  /// In en, this message translates to:
  /// **'Hide Private'**
  String get hidePrivate;

  /// No description provided for @hidePrivateDescription.
  ///
  /// In en, this message translates to:
  /// **'Hide private series from Home page.'**
  String get hidePrivateDescription;

  /// No description provided for @hiddenMedia.
  ///
  /// In en, this message translates to:
  /// **'Hidden Media'**
  String get hiddenMedia;

  /// No description provided for @noHiddenMediaFound.
  ///
  /// In en, this message translates to:
  /// **'No hidden media found'**
  String get noHiddenMediaFound;

  /// No description provided for @playerSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Player Settings'**
  String get playerSettingsTitle;

  /// No description provided for @playerSettingsDesc.
  ///
  /// In en, this message translates to:
  /// **'Change player settings'**
  String get playerSettingsDesc;

  /// No description provided for @speed.
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get speed;

  /// No description provided for @speedDescription.
  ///
  /// In en, this message translates to:
  /// **'Default speed for player'**
  String get speedDescription;

  /// No description provided for @cursedSpeed.
  ///
  /// In en, this message translates to:
  /// **'Cursed Speed'**
  String get cursedSpeed;

  /// No description provided for @cursedSpeedDescription.
  ///
  /// In en, this message translates to:
  /// **'For people who are too busy with life'**
  String get cursedSpeedDescription;

  /// No description provided for @resizeMode.
  ///
  /// In en, this message translates to:
  /// **'Resize mode'**
  String get resizeMode;

  /// No description provided for @resizeModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Default resize mode for player'**
  String get resizeModeDescription;

  /// No description provided for @skipButton.
  ///
  /// In en, this message translates to:
  /// **'Skip Button'**
  String get skipButton;

  /// No description provided for @skipButtonDescription.
  ///
  /// In en, this message translates to:
  /// **'Skip button duration'**
  String get skipButtonDescription;

  /// No description provided for @thumbLessSeekBar.
  ///
  /// In en, this message translates to:
  /// **'ThumbLess SeekBar'**
  String get thumbLessSeekBar;

  /// No description provided for @thumbLessSeekBarDesc.
  ///
  /// In en, this message translates to:
  /// **'Remove thumb from the seek bar'**
  String get thumbLessSeekBarDesc;

  /// No description provided for @subtitles.
  ///
  /// In en, this message translates to:
  /// **'Subtitles'**
  String get subtitles;

  /// No description provided for @showSubtitles.
  ///
  /// In en, this message translates to:
  /// **'Show Subtitles'**
  String get showSubtitles;

  /// No description provided for @showSubtitlesDescription.
  ///
  /// In en, this message translates to:
  /// **'Show subtitles by default'**
  String get showSubtitlesDescription;

  /// No description provided for @subtitlePreview.
  ///
  /// In en, this message translates to:
  /// **'Subtitle Preview'**
  String get subtitlePreview;

  /// No description provided for @fontColor.
  ///
  /// In en, this message translates to:
  /// **'Font Color'**
  String get fontColor;

  /// No description provided for @fontColorDescription.
  ///
  /// In en, this message translates to:
  /// **'Subtitle font color'**
  String get fontColorDescription;

  /// No description provided for @fontFamily.
  ///
  /// In en, this message translates to:
  /// **'Font Family'**
  String get fontFamily;

  /// No description provided for @fontFamilyDescription.
  ///
  /// In en, this message translates to:
  /// **'Subtitle font family'**
  String get fontFamilyDescription;

  /// No description provided for @fontSize.
  ///
  /// In en, this message translates to:
  /// **'Font Size'**
  String get fontSize;

  /// No description provided for @fontSizeDescription.
  ///
  /// In en, this message translates to:
  /// **'Subtitle font size'**
  String get fontSizeDescription;

  /// No description provided for @fontWeight.
  ///
  /// In en, this message translates to:
  /// **'Font Weight'**
  String get fontWeight;

  /// No description provided for @fontWeightDescription.
  ///
  /// In en, this message translates to:
  /// **'Subtitle font weight'**
  String get fontWeightDescription;

  /// No description provided for @backgroundColor.
  ///
  /// In en, this message translates to:
  /// **'Background Color'**
  String get backgroundColor;

  /// No description provided for @backgroundColorDescription.
  ///
  /// In en, this message translates to:
  /// **'Subtitle background color'**
  String get backgroundColorDescription;

  /// No description provided for @outlineColor.
  ///
  /// In en, this message translates to:
  /// **'Outline Color'**
  String get outlineColor;

  /// No description provided for @outlineColorDescription.
  ///
  /// In en, this message translates to:
  /// **'Subtitle outline color'**
  String get outlineColorDescription;

  /// No description provided for @bottomPadding.
  ///
  /// In en, this message translates to:
  /// **'Bottom Padding'**
  String get bottomPadding;

  /// No description provided for @bottomPaddingDescription.
  ///
  /// In en, this message translates to:
  /// **'Subtitle bottom padding'**
  String get bottomPaddingDescription;

  /// No description provided for @readerSettings.
  ///
  /// In en, this message translates to:
  /// **'Reader Settings'**
  String get readerSettings;

  /// No description provided for @readerSettingsDesc.
  ///
  /// In en, this message translates to:
  /// **'Change reader settings'**
  String get readerSettingsDesc;

  /// No description provided for @spacedPages.
  ///
  /// In en, this message translates to:
  /// **'Spaced Pages'**
  String get spacedPages;

  /// No description provided for @spacedPagesDesc.
  ///
  /// In en, this message translates to:
  /// **'Add space between pages'**
  String get spacedPagesDesc;

  /// No description provided for @hideScrollbar.
  ///
  /// In en, this message translates to:
  /// **'Hide Scrollbar'**
  String get hideScrollbar;

  /// No description provided for @hideScrollbarDesc.
  ///
  /// In en, this message translates to:
  /// **'Hide scrollbar while reading'**
  String get hideScrollbarDesc;

  /// No description provided for @hidePageNumber.
  ///
  /// In en, this message translates to:
  /// **'Hide Page Number'**
  String get hidePageNumber;

  /// No description provided for @hidePageNumberDesc.
  ///
  /// In en, this message translates to:
  /// **'Hide page number while reading'**
  String get hidePageNumberDesc;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @themeDescription.
  ///
  /// In en, this message translates to:
  /// **'Customize the appearance and vibe of your app'**
  String get themeDescription;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @enableDarkMode.
  ///
  /// In en, this message translates to:
  /// **'Enable Dark Mode'**
  String get enableDarkMode;

  /// No description provided for @materialYou.
  ///
  /// In en, this message translates to:
  /// **'Material You'**
  String get materialYou;

  /// No description provided for @materialYouDescription.
  ///
  /// In en, this message translates to:
  /// **'Use the same color as your wallpaper'**
  String get materialYouDescription;

  /// No description provided for @customTheme.
  ///
  /// In en, this message translates to:
  /// **'Custom theme'**
  String get customTheme;

  /// No description provided for @customThemeDescription.
  ///
  /// In en, this message translates to:
  /// **'Use your own color for the theme'**
  String get customThemeDescription;

  /// No description provided for @oledThemeVariant.
  ///
  /// In en, this message translates to:
  /// **'OLED theme Variant'**
  String get oledThemeVariant;

  /// No description provided for @oledThemeVariantDescription.
  ///
  /// In en, this message translates to:
  /// **'Enable OLED Mode'**
  String get oledThemeVariantDescription;

  /// No description provided for @colorPicker.
  ///
  /// In en, this message translates to:
  /// **'Color Picker'**
  String get colorPicker;

  /// No description provided for @pickColor.
  ///
  /// In en, this message translates to:
  /// **'Pick a color'**
  String get pickColor;

  /// No description provided for @colorPickerDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose a color'**
  String get colorPickerDescription;

  /// No description provided for @colorPickerDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get colorPickerDefault;

  /// No description provided for @colorPickerCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get colorPickerCustom;

  /// No description provided for @customPath.
  ///
  /// In en, this message translates to:
  /// **'Custom Path'**
  String get customPath;

  /// No description provided for @customPathDescription.
  ///
  /// In en, this message translates to:
  /// **'Set a custom path to save files\nLong press to remove'**
  String get customPathDescription;

  /// No description provided for @selectDirectory.
  ///
  /// In en, this message translates to:
  /// **'Select a directory'**
  String get selectDirectory;

  /// No description provided for @selectMediaService.
  ///
  /// In en, this message translates to:
  /// **'Select Media Service'**
  String get selectMediaService;

  /// No description provided for @logFile.
  ///
  /// In en, this message translates to:
  /// **'Log File'**
  String get logFile;

  /// No description provided for @logFileDescription.
  ///
  /// In en, this message translates to:
  /// **'Share the log file'**
  String get logFileDescription;

  /// No description provided for @restoreSettings.
  ///
  /// In en, this message translates to:
  /// **'Restore Settings'**
  String get restoreSettings;

  /// No description provided for @differentCacheManager.
  ///
  /// In en, this message translates to:
  /// **'Different Cache Manager'**
  String get differentCacheManager;

  /// No description provided for @differentCacheManagerDesc.
  ///
  /// In en, this message translates to:
  /// **'Use different Image cache manager'**
  String get differentCacheManagerDesc;

  /// No description provided for @webView.
  ///
  /// In en, this message translates to:
  /// **'Web View'**
  String get webView;

  /// No description provided for @developersHelpers.
  ///
  /// In en, this message translates to:
  /// **'Developers/Helpers'**
  String get developersHelpers;

  /// No description provided for @developersHelpersDesc.
  ///
  /// In en, this message translates to:
  /// **'Dartotsu\'s unpaid labours'**
  String get developersHelpersDesc;

  /// No description provided for @supportMaintainer.
  ///
  /// In en, this message translates to:
  /// **'Want to support Dartotsu\'s Maintainer?\nConsider Donating'**
  String get supportMaintainer;

  /// No description provided for @donationGoal.
  ///
  /// In en, this message translates to:
  /// **'No donation goal atm'**
  String get donationGoal;

  /// No description provided for @options.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get options;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'am',
        'ar',
        'as',
        'bn',
        'da',
        'de',
        'el',
        'en',
        'es',
        'fa',
        'fil',
        'fr',
        'ha',
        'he',
        'hi',
        'hr',
        'id',
        'it',
        'ja',
        'kn',
        'ko',
        'ml',
        'mr',
        'ms',
        'ne',
        'nl',
        'or',
        'pl',
        'ps',
        'pt',
        'ru',
        'sa',
        'si',
        'so',
        'sw',
        'ta',
        'te',
        'th',
        'tr',
        'uk',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'bn':
      return AppLocalizationsBn();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'ha':
      return AppLocalizationsHa();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'or':
      return AppLocalizationsOr();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'sa':
      return AppLocalizationsSa();
    case 'si':
      return AppLocalizationsSi();
    case 'so':
      return AppLocalizationsSo();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

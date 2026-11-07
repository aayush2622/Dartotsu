import '../../../Logger.dart';
import 'dart:convert';

import 'package:flutter/widgets.dart';

import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../../../Widgets/Components/ListEditorFields.dart';
import '../../../Screen/Detail/DetailWidgets.dart';
import '../../Preferences/Pref.dart';
import '../Model/Media.dart';
import '../Model/CommunityList.dart';
import '../Model/News.dart';
import '../MediaService.dart';
import '../../ThemeManager/LanguageSwitcher.dart';

export '../../../Model/MediaType.dart';
export '../Api/SectionJobs.dart';
export 'DetailHost.dart';
export 'EntityHost.dart';
export 'ListEditorDraft.dart';
export 'ScreenWidget.dart';
export '../Model/Calendar.dart';
export '../Model/MediaReaction.dart';
export '../Model/Review.dart';
export '../Model/Social.dart';

const localSectionPrefix = 'Local · ';

class HomeScreenView {
  final MediaService service;

  HomeScreenView(this.service);

  Future<SectionMap> localSections() async {
    final anime = service.localStore(anime: true);
    final manga = service.localStore(anime: false);
    if (anime.serviceId == manga.serviceId) return anime.sections();
    return {...anime.sections(anime: true), ...manga.sections(anime: false)};
  }

  Stream<List<ScreenWidget>> screenStreamWithLocal() async* {
    final local = await localSections();
    final extra = [
      for (final e in local.entries)
        ScreenWidget.media('$localSectionPrefix${e.key}', [
          for (final m in e.value)
            Media.fromJson(
              Map<String, dynamic>.from(
                jsonDecode(jsonEncode(m.toJson())) as Map,
              ),
            )..isLocal = true,
        ]),
    ];
    await for (final list in screenStream()) {
      yield [...list, ...extra];
    }
  }

  Stream<List<ScreenWidget>> screenStream() async* {
    final sections = await localSections();
    yield [
      for (final e in sections.entries) ScreenWidget.media(e.key, e.value),
    ];
  }

  Future<List<String?>> bannerImages() => Future.value(const [null, null]);

  bool isHiddenSection(String title) => false;
}

class FeedChip {
  final String id;
  final String label;

  const FeedChip(this.id, this.label);
}

class FeedScreenView {
  final MediaService service;

  FeedScreenView(this.service);

  /// Filters shown under the carousel of the [type] feed. Empty = none.
  List<FeedChip> chips(MediaType type) => const [];

  /// The carousel's media while [chip] is selected; null = nothing changes.
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) async => null;

  /// How the list called [title] renders (see `ScreenWidget.sectionType`).
  /// Also used to paint the cached lists before the first fetch lands.
  int sectionType(MediaType type, String title) => 0;

  /// The section types the enabled rows will have, in order, so the loading
  /// skeleton can match the feed. Empty = a generic skeleton.
  List<int> skeleton(MediaType type) => const [];

  Stream<List<ScreenWidget>> screenStream(MediaType type) async* {
    final anime = type.isVideo;
    final sections = service.localStore(anime: anime).sections(anime: anime);
    yield [
      for (final e in sections.entries) ScreenWidget.media(e.key, e.value),
    ];
  }
}

/// Which filters a service's search supports, and their vocab. Everything is a
/// plain list so the search UI is entirely service-driven — a service with no
/// filtering returns `SearchFilterSpec.none`.
class SearchFilterSpec {
  /// `apiValue -> label`, in menu order.
  final Map<String, String> sorts;
  final List<String> formats;
  final List<String> statuses;
  final List<String> sources;
  final List<String> genres;
  final List<String> tags;

  /// `apiValue -> label` (`''` = any); empty disables the control.
  final Map<String, String> countries;
  final bool season;
  final bool year;

  /// Offers the adult-content switch.
  final bool adult;

  /// Offers the "only titles on my list" switch.
  final bool onList;

  /// Also offers "only titles not on my list" (needs `onList: false` support).
  final bool notOnList;

  const SearchFilterSpec({
    this.sorts = const {},
    this.formats = const [],
    this.statuses = const [],
    this.sources = const [],
    this.genres = const [],
    this.tags = const [],
    this.countries = const {},
    this.season = false,
    this.year = false,
    this.adult = false,
    this.onList = false,
    this.notOnList = false,
  });

  static const none = SearchFilterSpec();

  bool get isEmpty =>
      sorts.isEmpty &&
      formats.isEmpty &&
      statuses.isEmpty &&
      sources.isEmpty &&
      genres.isEmpty &&
      countries.isEmpty &&
      !season &&
      !year &&
      !adult &&
      !onList &&
      !notOnList;
}

abstract class SearchScreenView {
  Future<SearchResults?> search(SearchResults query);

  /// Warms whatever the filter vocabulary needs (genre and tag lists).
  Future<void> prepare() async {}

  /// Media types the search can target; the first is the default. Usually the
  /// same as [MediaService.feedTypes].
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

  /// Everything the search can target — media types plus characters, staff,
  /// studios and users where the service supports them. The first is the
  /// default.
  List<SearchType> get searchTypes => [for (final t in types) t.searchType];

  /// A web page for a non-media result ([entity] is a `Character`, `Author`,
  /// `Studio` or `User`), or null when there is nothing to open.
  String? entityUrl(SearchType type, Object entity) => null;

  Widget? overlay(Media media) => null;

  /// Filter vocabulary for [type]. Default: no filters.
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec.none;
}

class EntityScreenView {
  final MediaService service;

  EntityScreenView(this.service);

  Stream<List<ScreenWidget>> screenStream(EntityHost host) async* {}

  bool canFavourite(EntityKind kind) => false;

  Future<bool?> toggleFavourite(
    EntityKind kind,
    String id,
    bool current,
  ) async => null;
}

class DetailScreenView {
  final MediaService service;

  DetailScreenView(this.service);

  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield defaultDetailWidgets(host);
  }

  ListEditorScreenView get listEditor => ListEditorScreenView(service);

  String? get sourceName => null;

  bool get canRateReviews => false;

  Future<Review?> rateReview(Review review, ReviewVote vote) async => null;

  bool get canReact => false;

  int get reactionLimit => 140;

  Future<List<MediaReaction>> reactions(Media media) async => const [];

  Future<MediaReaction?> postReaction(Media media, String text) async => null;

  Future<bool?> voteReaction(MediaReaction reaction) async => null;

  Future<List<Review>> reviews(Media media, {int page = 1}) async =>
      await service.getQueries?.getReviews(media.id, page: page) ?? const [];
}

/// The list-entry editor as data: the fields it shows for a [Media], bound to a
/// [ListEditorDraft]. A service overrides this to add or drop fields.
class ListEditorScreenView {
  final MediaService service;

  ListEditorScreenView(this.service);

  bool get advanced => false;

  Map<String, String> statuses({required bool anime}) => {
    'CURRENT': anime ? getString.watching : getString.reading,
    'PLANNING': getString.planning,
    'COMPLETED': getString.completed,
    'PAUSED': getString.paused,
    'DROPPED': getString.dropped,
    'REPEATING': anime ? getString.rewatching : getString.rereading,
  };

  Map<String, bool> customLists(Media media) => const {};

  List<ScreenWidget> build(Media media, ListEditorDraft draft) => [
    ScreenWidget.extra(
      ListStatusField(
        draft: draft,
        statuses: statuses(anime: media.isAnime),
      ),
    ),
    ScreenWidget.extra(
      ListProgressField(draft: draft, total: media.totalUnits),
    ),
    ScreenWidget.extra(ListScoreField(draft: draft)),
    if (advanced) ScreenWidget.extra(ListDatesField(draft: draft)),
    if (advanced) ...[
      ScreenWidget.extra(ListPrivateField(draft: draft)),
      ScreenWidget.extra(ListOtherSection(draft: draft)),
    ],
  ];
}

abstract class CalendarScreenView {
  Stream<List<CalendarEntry>> schedule();
}

abstract class CommunityListsView {
  List<(String, String)> get kinds;

  List<(String, String)> get sorts;

  Future<CommunityListPage> lists({
    required String kind,
    required String sort,
    int page = 1,
  });

  Future<void> open(BuildContext context, CommunityList list);
}

abstract class NewsScreenView {
  Future<NewsPage> news({int page = 1});
}

abstract class NotificationScreenView {
  List<NotificationKind> get kinds => const [];

  List<Setting> settings(BuildContext context) => const [];

  Pref<bool>? get alertsPref => null;

  Pref<int>? get pollPref => null;

  Pref<String>? get mutedPref => null;

  Future<List<ServiceNotification>> unread() async => const [];

  Future<List<ServiceNotification>> notifications({int page = 1});
}

/// The service's own settings, folded into the app's Settings screen.
abstract class SettingsScreenView {
  List<Setting> build(BuildContext context);

  /// The same rows as [ScreenWidget]s, for the service's own settings page.
  List<ScreenWidget> widgets(BuildContext context) => [
    ScreenWidget.settings(null, build(context)),
  ];
}

/// Profiles, activity feeds, likes, replies and stories. Every method returns
/// plain data; `null` / empty results mean the service doesn't offer it.
class AccountOptions {
  final String title;
  final List<Setting> Function(BuildContext) build;

  const AccountOptions({required this.title, required this.build});
}

class SocialScreenView {
  final MediaService service;

  SocialScreenView(this.service);

  String? get currentUserId => service.auth?.user.value?.id.toString();

  bool get canInteract => service.isLoggedIn;

  AccountOptions? get accountOptions => null;

  bool get hasStories => false;

  bool get hasActivity => true;

  bool get hasFollows => true;

  bool get hasGlobalFeed => true;

  Future<SocialUser?> profile({String? id, String? name}) async => null;

  Future<SocialFavourites> favourites(String userId) async =>
      const SocialFavourites();

  SocialProfile? cachedProfile(String id) => null;

  Future<List<ServiceNotification>> activityAlerts() async => const [];

  Future<SocialProfile?> profileBundle({String? id, String? name}) async {
    final user = await profile(id: id, name: name);
    if (user == null) return null;
    Future<T?> soft<T>(Future<T> Function() run) async {
      try {
        return await run();
      } catch (e, st) {
        logError('ServiceScreens', e, st);
        return null;
      }
    }

    final results = await Future.wait<Object?>([
      soft(() => favourites(user.id)),
      soft(() => activityHistory(user.id)),
    ]);
    return SocialProfile(
      user,
      favourites: results[0] as SocialFavourites?,
      history: results[1] as List<ActivityDay>?,
    );
  }

  Future<UserPage> follows(
    String userId, {
    required bool followers,
    int page = 1,
  }) async => const UserPage([]);

  Future<List<Media>> favouriteMedia(
    String userId, {
    required bool anime,
    int page = 1,
  }) async => const [];

  Future<bool?> toggleFollow(String userId) async => null;

  Future<ActivityPage> activities(
    ActivityScope scope, {
    String? userId,
    String? activityId,
    int page = 1,
  }) async => const ActivityPage([]);

  Future<ReplyPage> replies(String activityId, {int page = 1}) async =>
      const ReplyPage([]);

  Future<bool> toggleLike(String id, {bool reply = false}) async => false;

  Future<bool> toggleSubscription(String activityId, bool subscribe) async =>
      false;

  Future<bool> postActivity(String text, {String? edit}) async => false;

  Future<bool> postMessage(
    String userId,
    String text, {
    String? edit,
    bool isPrivate = false,
  }) async => false;

  Future<bool> postReply(
    String activityId,
    String text, {
    String? edit,
  }) async => false;

  Future<bool> deleteActivity(String id) async => false;

  Future<bool> deleteReply(String id) async => false;

  Future<UserStats?> stats(String userId) async => null;

  Future<List<ActivityDay>> activityHistory(String userId) async => const [];

  Future<List<StoryGroup>> stories() async => const [];

  Future<Map<String, Media>> mediaByIds(List<String> ids) async => const {};

  bool get hasGroups => false;

  List<GroupScope> get groupScopes => GroupScope.values;

  bool get hasGroupMembers => true;

  Future<GroupPage> groups(
    GroupScope scope, {
    String? query,
    String? categoryId,
    int page = 1,
  }) async => const GroupPage([]);

  Future<List<GroupCategory>> groupCategories() async => const [];

  Future<SocialGroup?> group(String idOrSlug) async => null;

  Future<UserPage> groupMembers(String groupId, {int page = 1}) async =>
      const UserPage([]);

  Future<ActivityPage> groupPosts(String groupId, {int page = 1}) async =>
      const ActivityPage([]);

  Future<bool?> toggleGroup(SocialGroup group) async => null;

  Future<bool> postToGroup(String groupId, String text, {String? edit}) async =>
      false;

  String? profileUrl(String name) => null;

  AppLink? parseLink(String url) => null;
}

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

> **This worktree is the `rewrite-re` branch — the ground-up restructure of Dartotsu.**
> The current shipping app lives on `main` (separate worktree, see the last section). When in
> doubt about "how did the old app do X", read `main`; do not copy its structure verbatim.

## What this is

Dartotsu is a Flutter app: a hybrid **AniList / MyAnimeList / Simkl** tracking and media-management
client (a Flutter rewrite of the Kotlin app Dantotsu). It is a *tracking and management tool* —
streaming/reading content comes from third-party extensions loaded at runtime via the
`dartotsu_extension_bridge` plugin, not from this repo.

Targets 5 platforms: Android, iOS, Windows, Linux, macOS. Distributed outside app stores
(GitHub releases, Obtainium), so the app self-updates (`lib/Api/Updater/AppUpdater.dart`).

### State of the rewrite (2026-09-01)

~200 Dart files vs `main`'s ~350. On 2026-09-01 the foundation layers (Preferences, Theme, DI,
networking) got a correctness/consistency pass; then a **pluggable per-service architecture**
was built (abstract `*ScreenView` / `Queries` / `Mutations` / `ServiceAuth`, see below) with a
full **AniList read + list-management slice** on it: onboarding → login →
home/anime/manga sections (folding in the viewer's status lists) → media detail → list editor →
search → notifications → settings, all on live AniList GraphQL. The service read/write surface
was then split into `main`-style `Queries` / `Mutations` part files (`AnilistQueries/*`,
`AnilistMutations/*`) with every query ported from `main`. `flutter analyze` clean;
`flutter build linux` + `flutter run -d linux` verified each step. `ExtensionService` is still
an id/name/icon shell → every screen renders `NotImplemented`. **Not built:** watch/read
(extension sources, player, reader), MAL/Simkl subclasses, calendar, profile/character pages,
offline. The worktree usually carries large **uncommitted WIP ahead of the committed
branch** — run `git status` first.

## Commands

```bash
flutter pub get

# Code generation — REQUIRED before first build and after touching any Isar collection
# (Core/Preferences/IsarDataClasses/**) or json_serializable model
# (Core/Services/Model/**, Model/**). Generated *.g.dart files are committed.
dart run build_runner build --delete-conflicting-outputs

# Localization codegen — regenerates lib/l10n/ from assets/translations/app_*.arb.
# Runs automatically on build (flutter: generate: true), or force it:
flutter gen-l10n

flutter analyze          # CI gate (.github/workflows/dart.yml)
dart format .

flutter run
flutter run -d linux

# Release builds
flutter build apk --release --split-per-abi
flutter build linux --release
flutter build windows --release
flutter build ipa --release
flutter build macos --release
```

**Flutter/Dart versions are inconsistent right now**: `pubspec.yaml` requires `flutter: ">=3.44.0"`
and `sdk: '>=3.12.0 <4.0.0'`, but CI pins `FLUTTER_VERSION: 3.38.5` (`dart.yml`) / `3.35.7`
(`release.yml`). Treat the pubspec constraint as the intended target.

### `.env` file

`.env` is a bundled asset (declared in `pubspec.yaml`) — the build fails without it.
On this branch it holds `hash` (used by `AppUpdater` and `Core/Preferences/Encryptor.dart`),
read via `loadEnv(key)` in `lib/Utils/Function.dart`. (On `main` it holds `SIMKL_SECRET`.)

### CI build triggers

`.github/workflows/dart.yml` watches `main` and `rewrite-re`. Per-platform builds run only when
the **push commit message** contains a tag: `[build.all]`, `[build]`, `[build.apk]`,
`[build.windows]`, `[build.linux]`, `[build.ios]`, `[build.macos]`. `[clean]` forces
`flutter clean`. Upload/notify/downstream-dispatch steps are gated on `github.ref == main`.

## Architecture

### Entry flow

`lib/main.dart` → `runZonedGuarded` (zone `print` → `Logger`; uncaught errors →
`AnalyticsManager.recordError` + `handleError`/`ErrorScreen`) → `init()`:

1. `PrefManager.init()` — opens the Isar settings instance
2. `Rhttp.init()`
3. **`DI.init()`** — registers every controller in the GetX locator (see below)
4. `Future.wait([Logger.init(), DartotsuExtensionBridge.init(...), initializeDateFormatting(),
   WindowManager.ensureInitialized() on desktop])`, then `MediaKit.ensureInitialized()` +
   system UI overlay style
5. `unawaited(_postInit(args))` — `DeepLink.init()`, `find<AppUpdater>().checkForUpdate()`

Then `runApp(MyApp())`. `MyApp` is a `StatefulWidget` wrapping `DynamicColorBuilder`
(feeds the dynamic `ColorScheme`s into `ThemeController.setDynamicSchemes`) → `Obx` →
`GetMaterialApp` bound to `_theme.light` / `_theme.dark` / `_theme.themeMode` and
`_locale.locale` (no app-remount key — locale changes via `Get.updateLocale`). It also
installs a `Listener` for the mouse back-button and a non-focusable `Focus` node feeding
`appShortcuts`, and wraps with `Dpad.wrap` (D-pad/keyboard TV nav: global
`DpadTraversalPolicy`, `onBack`, a `DpadThemeData` with scale+glow+border focus effects).
`home:` is gated on `PrefName.hasCompletedOnboarding`.

**TV / keyboard navigation** — `Dpad.wrap` handles arrow-key directional focus + `onBack`
app-wide. Standard Material widgets participate automatically; custom tap targets are wrapped
in `DpadFocusable` (`onSelect`, auto-scroll-to-focus, focus effects): `MediaSection` cards,
`Navbar` items, `HomeHeader` avatar, `SearchScreen` result cards, `DetailScreen` synopsis,
onboarding buttons. `BuildDropdownMenu` uses `requestFocusOnTap: true` for keyboard open.

### State management — pure GetX (no `provider`)

Everything is a `GetxController` resolved through a GetX service-locator. The thin wrappers live
in **`lib/Utils/Functions/GetXFunctions.dart`** and are used everywhere instead of `Get.*`:

- `find<T>()` / `put<T>()` / `lazyPut<T>(T Function() builder)` (genuinely lazy — builder runs
  on first `find`) / `tryFind<T>()` (null if unregistered) / `getOrPut` / `getOrLazyPut` /
  `delete<T>()` / `isRegistered<T>()`

**`lib/DI.dart`** is the single registration point — `DI.init()` in `init()`:

| Controller | Registration | Notes |
|---|---|---|
| `NetworkManager` | `put` (eager) | rhttp client; owns `CookieManager` |
| `AnalyticsManager` | `put` (eager) | Firebase Crashlytics |
| `NotificationManager` | `put(permanent)` + `unawaited(.initialize())` | |
| `ThemeController` | `lazyPut` | reactive theme state (no locale) |
| `LocaleController` | `lazyPut` | `PrefName.appLocale.rx` + `Get.updateLocale` |
| `MediaServiceController` | `lazyPut` | current service + list of services |
| `RefreshController` | `lazyPut` | pub/sub refresh flags (`getOrPut(key)` → `RxBool`, `.all()`); mutations signal it, screens `ever()`-subscribe. `routeObserver` (same file) is on `GetMaterialApp.navigatorObservers`; `RefreshManager<T>` mixin also exists for route-re-entry refresh |
| `AppUpdater` | `lazyPut` | GetxController; GitHub-release update check + APK install |
| `BaseDiscordRPC` | `lazyPut` | `MobileRPC` on Android/iOS, else `DesktopRPC` |

Local reactive UI uses `.obs` + `Obx`. `Get.context!` / `Get.overlayContext` are used for
context-free access (`getString`, snackbars).

### Theme + `BaseScreen`

- **`Core/ThemeManager/AppTheme.dart`** — `enum AppTheme` is the **single** palette registry
  (`purple` … `ocean`); `themeFor(brightness)` maps to the hand-authored `Themes/*.dart`
  `ColorScheme`s. The theme picker and resolver both iterate `AppTheme.values`.
- **`Core/ThemeManager/ThemeMode.dart`** — `enum ThemeModePref { system, light, dark }`
  (import-free so the prefs layer can reference it).
- **`Core/ThemeManager/ThemeController.dart`** — state only. Every field is a shared
  auto-persisting `PrefName.x.rx` (`useGlassMode`, `isOled`, `themeName`, `useMaterialYou`,
  `useCustomColor`, `customColor`, `cardSize`, `mode`). `light` / `dark` are **memoized**
  `ThemeData` getters (rebuilt only when an input in the cache-key tuple changes; reading the
  tuple keeps them reactive inside `Obx`). `themeMode` / `isDarkModeActive` derive from `mode`.
  Guarded combo setters (`setTheme`, `setOled`, `setMaterialYou`, …).
- **`Core/ThemeManager/ThemeManager.dart`** — pure builders: `buildAppTheme(base, {isOled,
  glass})` applies the (colour-independent, built-once) Poppins `TextTheme`, switch theme, OLED
  overrides and predictive-back transitions. **`glass`** makes the scaffold + app bars
  transparent and card/dialog/sheet surfaces translucent, so the blurred `GlassBackground`
  shows through the whole stack (not just cards); it's in `ThemeController`'s memo key so a
  glass toggle is a normal `AnimatedTheme` lerp. `deriveCardColor`. Barrel-exports `AppTheme`,
  `ThemeMode`, `Themes/DynamicThemes.dart` (`getCustom*Theme` seed themes, `getImage*Theme`),
  `Themes/material.dart`.
- **`Widgets/Components/ThemedContainer.dart`** — `ThemedContainer` / `ThemedWidget` are real
  `StatelessWidget`s (one `Obx`, no `context:` param) — glass-mode-aware card surfaces via
  `blurbox`. `themeDropdown()` lives here too.
- **`Widgets/Components/BaseScreen.dart`** — `abstract class BaseScreen<T> extends State<T>`.
  Implement `buildContent(context)` instead of `build`. Provides `SafeArea` + `Scaffold` and,
  in glass mode, a blurred `GlassBackground` behind the content (`buildContent` is built once
  and reused across glass toggles). `glassBackgroundUrl` getter is overridable
  (default `kFallbackGlassBackground`).

### `MediaService` abstraction

**A new service is one subclass with zero core edits.** `MediaService`
(`Core/Services/MediaService.dart`) is an `abstract class` with `id` / `name` / `iconPath` and
**nullable getters** for every capability — anything left `null` renders as
`NotImplemented(service, area)`:

| Getter | Type | Purpose |
|---|---|---|
| `getQueries` | `Queries?` | reads: `getUserData()`, `getMedia(id)`, `mediaDetails(m)`, `initHomePage()`, `getAnimeList()`, `getMangaList()`, `getMediaLists({anime,userId?})`, `getCalendarData()`, `getGenresAndTags()`, `getBannerImages()`, `getNotifications({page})`, `search(SearchResults?)` |
| `getMutations` | `Mutations?` | `editList(Media,{customList})` / `deleteFromList(Media)` / `setProgress(Media,progress)` — each takes a `Media` carrying the desired user-list fields |
| `auth` | `ServiceAuth?` | `user` (`Rxn<ServiceUser>`), `isLoggedIn`, `login()` / `loginWithToken(t)` / `logout()` / `refreshUser()` |
| `getHomeScreen` / `getAnimeScreen` / `getMangaScreen` / `getSearchScreen` / `getDetailScreen` / `getNotificationScreen` / `getLoginScreen` / `getSettingsScreen` | `*ScreenView?` | one abstract class per screen area (`Core/Services/ServiceScreens.dart`); `build(context, …)` returns the widget |

- **`Core/Services/Api/Queries.dart` / `Mutations.dart`** — the abstract read/write surface
  (mirrors `main`'s `lib/Services/Api/`). List-shaped queries return an **insertion-ordered
  `Map<String, List<Media>>`** — key = section title to render, value = its media.
- **`Core/Services/MediaServiceController.dart`** — `RxList<MediaService> services`
  (`[AnilistService(), ExtensionService()]`), `Rx<MediaService> currentService` restored from
  `PrefName.service.value` by `id`.
- **`Core/Services/ServiceSwitcher.dart`** — `serviceSwitcher(context)` picker bottom sheet.

Per-service code goes under **`lib/Api/Services/<Service>/`**.

### AniList service (the one wired backend)

**`lib/Api/Services/Anilist/`**:

- `AnilistClient` — GraphQL POST to `graphql.anilist.co` via `NetworkManager`; rate-limit
  aware; `String Function()` token provider. Injected into `AnilistQueries`/`AnilistMutations`.
  `query()` returns the decoded `data` node (light queries + mutations); `queryRaw()` returns
  the response **string** with no main-thread decode — the big list queries
  (`initHomePage` / `getAnimeList` / `getMangaList` / `getMediaLists` / `getCalendarData` /
  `mediaDetails`) run `compute(_parseX, rawBody)` so `jsonDecode` + map→`Media` + sort are all
  off the UI thread. `anilistData(body)` is the top-level envelope decoder used inside the
  isolate. `Media.settings` is a lazy getter so `Media` is cheap to send across the boundary.
- `AnilistAuth implements ServiceAuth` (GetxController, `lazyPut`) — `token` =
  `PrefName.anilistToken.rx`, `user` = `Rxn<ServiceUser>` holding an `AnilistUser`
  (cached to prefs). `login()` runs `FlutterWebAuth2` implicit grant (`client_id 14959`,
  scheme `dantotsu`); owns `AnilistQueries queries` + `AnilistMutations mutations`.
- `AnilistQueries extends Queries` — main file + `part 'AnilistQueries/GetX.dart'` files
  (`GetUserData`, `GetHomePageData`, `GetAnimeMangaListData`, `GetMediaDetails`, `GetMediaData`,
  `GetCalendarData`, `GetGenresAndTags`, `GetBannerImages`, `GetUserMediaList`,
  `GetNotifications`, `Search`), each an `extension on AnilistQueries` — GraphQL strings ported
  from `main`'s `AnilistQueries`, map-parsed via the `AnilistMedia.dart` mappers (no
  TypeFactory / generated response models). `AnilistMutations extends Mutations` — parts
  `EditList` / `SetProgress` / `DeleteFromList`.
- `AnilistMedia extends Media` (`AnilistMedia.dart`) — the AniList-only extras (`idMal`,
  `inCustomListsOf`, `userFavOrder`); `anilistMediaFragment` / `anilistAuthorRoles` +
  `mapAnilistMedia` / `mapAnilistListEntry` / `mapAnilistDetail`. `AnilistUser implements
  ServiceUser`.
- `Screens/AnilistScreens.dart` — thin `*ScreenView` classes wiring the shared widgets to
  `AnilistAuth.queries` / `.mutations`; anime/manga tabs merge `getMediaLists` above the
  browse sections.
- `AnilistService` — the getters just return `find<AnilistAuth>()` and the view classes.

### Feature screens

Entry flow: `OnboardingScreen` (welcome / theme / sync) → `LoginScreen` (drives
`service.auth`; "continue as guest" or OAuth/token) → sets `PrefName.hasCompletedOnboarding`
→ `MainScreen`.

- **`Screen/MainScreen.dart`** — 3-tab shell; each tab is
  `service.<home|anime|manga>Screen?.build(context) ?? NotImplemented(...)`, lazy-mounted in
  an `IndexedStack` keyed by `serviceId-tab`, `FloatingBottomNavBar`.
- **`Screen/Common/`** — the service-agnostic widgets every `Queries` impl reuses:
  `MediaSectionsScreen` (pull-to-refresh `MediaSection` list from a
  `SectionsLoader = Future<Map<String,List<Media>>> Function()` + optional `reloadOn` stream;
  with `cacheId:` it paints the last result from disk on frame 1 via
  `Core/Services/SectionCache.dart` — sync read — then revalidates and patches sections
  key-by-key without a full reload; **`RouteAware`** — revalidates on `didPopNext`; subscribes
  to `RefreshController` under its `cacheId` so a mutation refreshes it),
  `DetailScreen` (`extends BaseScreen`, media art as its glass backdrop; `Queries` +
  `Mutations?`; pull-to-refresh; collapsing banner, genres, expandable synopsis, character
  strip, relation/recommendation sections; FAB → `ListEditorSheet` →
  `editList` / `deleteFromList`), `SearchScreen` (debounced, anime/manga toggle,
  infinite-scroll grid, builds a `SearchResults`), `NotificationsScreen`, `HomeHeader`
  (greeting + avatar + bell + search + account sheet).
- **`Screen/Settings/`** — data-driven, `main`-style. `Model/Setting.dart` (`SettingType`
  header/normal/switchType/slider/inputBox/custom) → `Widgets/Settings/SettingsAdaptor` (one
  card per `Setting`) + `SettingItem` renderers. `SettingsCategories.dart` holds a
  `SettingsCategory` registry + a `List<Setting>` builder per category; `SettingsScreen` is
  the category menu, each row opens `SettingsCategoryScreen`. `Widgets/Settings/SettingsListView`
  (shared) = a search field over `SettingsAdaptor` — the top screen searches every category at
  once (flat, headered), a sub-screen just its own.

**Not built yet:** watch/read (extension sources, player, reader), MAL / Simkl services
(the abstraction is ready — they're just unwritten subclasses), calendar, character/staff/
profile pages, offline.

### Models

Two model areas, both `@JsonSerializable` with committed generated code:

- **`Core/Services/Model/`** — the domain model: `Media`, `Anime`, `Manga`, `Character`,
  `Author`, `Studio`, `Review`, `User`, `Date`. Generated files in
  `Core/Services/Model/Generated/*.g.dart` — **build_runner writes `Model/*.g.dart` adjacent;
  they're then moved into `Generated/` and both `part` directives fixed** (see `git log`
  `5f039d1`). `Media` is the central type (mirrors `main`'s `DataClass/Media.dart`); detail-only
  fields (`characters`, `relations`, `review`, `users`, `settings`, `sourceData`, …) are
  `@JsonKey(includeFromJson: false, includeToJson: false)`. `Media.skeleton()` for skeleton
  loaders, `mainName` / `isAnime` / `totalUnits` getters, `extension M on Pages` for
  extension-bridge results. **A service with extra fields subclasses it** — `AnilistMedia
  extends Media`; the subclass is never serialized, only the base.
- **`Model/`** — app-level types: `SearchResults` (+ `Model/Data/SearchResults.g.dart`),
  `Setting`.

### Preferences — reactive `Pref<T>` + `PrefManager`

Isar-backed typed KV store with a synchronous in-memory cache, a **shared reactive layer**, and
**microtask-batched writes** (setters never block on disk).

- **`Core/Preferences/Pref.dart`** — `Pref<T>(key, defaultValue, PrefLocation)`. Read/write
  `pref.value`; bind `pref.rx` for a **shared** auto-persisting `Rx<T>` (every caller of
  `SomePref.rx` gets the same instance; assigning to it writes through). `enumPref(...)` /
  `jsonPref(...)` for non-primitive `T`. All keys declared once in `Preferences.dart` under
  `PrefName`. `PrefLocation` = `THEME/COMMON/PLAYER/READER/PROTECTED/OTHER` — namespaced into
  the stored key (`THEME/isOled`), so the key alone is the row identity.
- **`Core/Preferences/PrefManager.dart`** — `getVal` / `setVal` / `rxOf` / `removeVal` +
  `getCustomVal` / `setCustomVal` / `getCustomType` / `setCustomType` (all take an optional
  `location:`). `flush()` forces queued writes; a `_schemaVersion` bump triggers a one-time
  wipe (`resetAll()`). Free-function shims kept: `loadData` / `saveData` / `loadCustomData` /
  `saveCustomData` / `removeData` / `removeCustomData`.
- **`Core/Preferences/PrefBackup.dart`** — `export` / `restore` (encrypted via `Encryptor.dart`;
  integrity-checked via `Validator.dart`, which now hashes a canonicalised encoding).
- Single Isar instance `PrefManager.dartotsuPreferences` (schema = `KeyValueSchema` +
  `DartotsuExtensionBridge.isarSchema`), also handed to the bridge.
- Isar collection classes in `Core/Preferences/IsarDataClasses/**` with committed `*.g.dart`
  (`KeyValue`, `MalToken`, `MediaSettings`, `DefaultPlayerSettings`, `DefaultReaderSettings`,
  `ShowResponse`). `MediaSettings`/`ResponseToken` collections aren't opened yet.
- **`Core/Preferences/StorageManager.dart`** — `getDirectory({subPath, useCustomPath,
  useSystemPath})` is the single source of truth for on-disk paths (handles Android scoped
  storage / `MANAGE_EXTERNAL_STORAGE`, custom path, Apple sandbox). `String.fixSeparator`
  extension for Windows paths.

### Networking — `NetworkManager`

**`Core/NetworkManager/`**, built on **`rhttp`** (Rust HTTP; `Rhttp.init()` before use). The
`http` package is *not* a dependency. `NetworkManager` (GetxController) exposes `get/post/head/
download` returning `NetworkResponse<T>`, a raw `client` (`RhttpClient`) and
`compatibleClient` (a `package:http` shim for the extension bridge). DoH via `DnsManager`
(Cloudflare default) with `InternetAddress.lookup` fallback; `CookieManager` and `LogInterceptor`
are rhttp interceptors; `NetworkBridge.dart` / `AppBridgeNetwork` adapt cookies for the bridge.

### Extension system — `dartotsu_extension_bridge`

Consumed as a **local path dep**: `path: ../DartotsuExtensionBridge` (sibling worktree). Unifies
multiple extension backends (Mangayomi, Aniyomi, Sora, CloudStream, Tsundoku, iReader) behind one
interface. `DartotsuExtensionBridge.init(...)` in `main.dart` gets `StorageManager.getDirectory`,
the Isar instance, `client.compatibleClient`, and `AppBridgeNetwork`. Extension-manager UI is
**`lib/Screen/Extension/`** (`ExtensionScreen` ~860 lines, `ExtensionList`). `add-repo` deep
links are handled in `Utils/Functions/DeepLink.dart` via `find<ExtensionManager>().managers`.

### Analytics / crash reporting — Firebase

**`Core/Analytics/AnalyticsManager.dart`** (GetxController, eager). `onInit` fires
`Firebase.initializeApp` + `FirebaseCrashlytics.setCrashlyticsCollectionEnabled(!kDebugMode)`,
guarded by a `Completer` so `recordError` awaits init and silently no-ops if Firebase failed.
`Core/Analytics/FirebaseOptions.dart` is the generated `flutterfire` config. `firebase_analytics`
is a dependency but not yet used. (`main` has no Firebase — it does manual crash logging.)

### Notifications — `NotificationManager`

**`Core/NotificationManager/NotificationManager.dart`** (GetxController, `permanent`,
`.initialize()` from `DI.init`). Wraps `flutter_local_notifications` with a large typed API
(`show`, `bigText`, `inbox`, `progress`, `media`/`mediaPlayback`, `messaging`, `schedule`/
`alarm`/`periodically`, groups, channels). `NotificationChannel` enum, `NotificationIds`
constants, `NotificationOptions` builder. Timezone set up via `flutter_timezone`.

### Logging

**`lib/Logger.dart`** — `logger(msg, {logLevel, tag})` top-level fn → `Logger` static class.
Capped 5 MB rotating `appLogs.txt`, pre-init buffer, microtask-drained write queue, device-info
header. `NativeLogger` (Android `MethodChannel('native_logger')`) streams logcat and imports
native Java crash logs on next launch. `lib/Screen/Error/ErrorScreen.dart` renders crashes and
defines `handleError(e, st, {softCrash})` (called from the zone handler in `main.dart`).

### Localization

- Source: `assets/translations/app_*.arb` (43 locales; template `app_en.arb`).
- `l10n.yaml` → `flutter gen-l10n` → `lib/l10n/app_localizations*.dart` (committed).
- Access anywhere: `getString` in **`Core/ThemeManager/LanguageSwitcher.dart`**
  (`AppLocalizations.of(Get.context!)!`). Use `getString.someKey`, never hard-coded strings.
  `languageSwitcher(context)` widget + `Core/ThemeManager/language.dart` for name↔code mapping.
- The active locale lives in **`Core/ThemeManager/LocaleController.dart`**
  (`PrefName.appLocale.rx`); `setLocale` persists and calls `Get.updateLocale`.

### UI building blocks (`lib/Widgets/`, `lib/Utils/`)

- `Widgets/Components/` — `ThemedContainer` / `ThemedWidget` / `themeDropdown`
  (`ThemedContainer.dart`), `BaseScreen` + `GlassBackground`, `CustomBottomDialog` +
  `showCustomBottomDialog`, `AlertDialogBuilder`, `BuildDropdownMenu`, `CachedNetworkImage`
  wrapper (`cachedNetworkImage(...)`), `loadSvg(...)`, `ScrollConfig` / `CustomScrollConfig`
  (bouncing physics, no scrollbars, mouse+trackpad drag), `CustomElevatedButton`, `GenreItem`.
- `Widgets/Sections/Media/` — `MediaSection` + `MediaSectionState` (horizontal media rail with
  skeleton loading — `MediaSectionData.loading()` → `Skeletonizer` — and overscroll-to-load-more
  + haptics). The main reusable content widget. Cards keyed by `media.id` (+
  `findChildIndexCallback`) so a cache patch touches only what changed. The poster card shows
  the full detail set like `main`: score badge, `RELEASING` dot, `progress | next/total` info
  line, relation prefix on the title.
- `Utils/Animation/WidgetAnimations.dart` — `extension WidgetAnimations on Widget` built on
  `flutter_animate`: `animateFadeUp`, `animateDropIn`, `animatePageTransition`, `animateNav*`,
  etc. Global `kAnimationSpeed` (`<= 0` disables). Recent commits are heavy on animation polish.
- `Utils/Functions/NavigateToScreen.dart` — `navigateToPage(context, widget)` uses a
  `PageRouteBuilder` with `animatePageTransition`.
- `Utils/Functions/SnackBar.dart` — `snackString(msg, {clipboard, icon, simple, child})`.
  **Overlay-based** (not GetX/Scaffold snackbars) so it renders above bottom sheets; single
  `_snackOverlay` entry, auto-dismiss after 4 s.
- `Utils/Extensions/` — `ContextExtensions` (`isPhone` = shortestSide < 700, `textTheme`,
  `colorScheme`, …), `IntExtensions`, `NumExtensions` (`580.ms`), `StringExtensions`,
  `Responsive.dart` (`sizer` — `Sizer` wraps `GetMaterialApp` in `main.dart`; `screenType`
  mobile `<600` / tablet `<1100` / desktop, `isMobile/isTablet/isDesktop`,
  `responsive<T>(mobile:, tablet:, desktop:)` — `MediaSection` sizes its poster this way, no
  more `cardSize` factor).
- `Utils/Function.dart` — `openLinkInBrowser`, `shareLink`, `shareFile`, `loadEnv`, Kotlin-std
  `let`/`also` extensions.

## Conventions / gotchas

- **Directory casing**: top-level `lib/` folders are PascalCase (`Core`, `Api`, `Screen`,
  `Model`, `Utils`, `Widgets`). `file_names` / `non_constant_identifier_names` lints are off
  (`analysis_options.yaml`) — match the PascalCase file/identifier style. `camel_case_types`,
  `constant_identifier_names`, `deprecated_member_use`, `library_prefixes` are downgraded to
  `ignore` (the app rides bleeding-edge/forked packages). `prefer_relative_imports: true` and
  `unawaited_futures: true` are enforced — use relative imports within `lib/`.
- Resolve controllers with the `find<T>()` / `put<T>()` helpers, not `Get.find` directly. Add
  new long-lived controllers to `DI.init()`.
- Screens: extend `BaseScreen<T>` and implement `buildContent`, don't override `build`.
- Always run `build_runner` after model/Isar changes; commit the regenerated `*.g.dart`.
  There is no `build.yaml`.
- New user-facing strings → `app_en.arb` (+ `flutter gen-l10n`); use `getString.key`.
- `media_kit` (3 packages) and `flutter_discord_rpc_fork` are git deps; `flutter_web_auth_2`
  is a personal fork. `dependency_overrides` only pins `collection`. Treat `pubspec.yaml`
  changes as high-risk.
- No test suite.

## The `main` branch (current app — reference for porting)

Separate worktree:

```
/home/aayush/AndroidStudioProjects/Dartotsu        (branch: main, v1.0.0)   — this repo's CLAUDE.md there is main-focused
/home/aayush/AndroidStudioProjects/Dartotsu-rewrite-re   (branch: rewrite-re) — you are here
```

`git worktree list` shows both. `main` is the feature-complete app you port *from* — read it
whenever you need the real implementation of a screen/flow that's still a stub here.

**How `main` is organised** (~350 files):

- **`lib/main.dart`** — `MultiProvider` (`ThemeNotifier`, `MediaServiceProvider`) wrapping
  `GetMaterialApp`. `MainScreen` is a 3-tab shell (`_selectedIndex.obs`: 0=Anime, 1=Home /
  `LoginScreen`, 2=Manga).
- **Hybrid Provider + GetX** — `ChangeNotifier` for app-wide state (`ThemeNotifier` in
  `lib/Theme/ThemeProvider.dart`, `MediaServiceProvider` in `lib/Services/ServiceSwitcher.dart`),
  GetX for everything else.
- **`lib/Services/MediaService.dart`** — richer `abstract class MediaService`: services
  self-register into a static `_instances` list in their constructor (`MediaService.init()`
  just news them up), and each supplies `data` (a `BaseServiceData` of `.obs` fields) plus
  `homeScreen` / `animeScreen` / `mangaScreen` / `loginScreen` / `searchScreen` delegates
  (`lib/Services/Screens/Base*Screen.dart`). Concrete services: `AnilistService`, `MalService`,
  `SimklService`, `MangaBakaService`, `ExtensionsService`.
- **`lib/Api/<Service>/`** — per-service queries/mutations/login/screens/data. `lib/Api/TypeFactory.dart`
  is a `Map<Type, FromJson>` registry (not present in the rewrite).
- **`lib/Api/EpisodeDetails/`** — Anify / Aniskip / Jikan / Kitsu episode-metadata + ID mapping.
- **`lib/DataClass/`** — the `@JsonSerializable` models (`Media`, `Anime`, `Manga`, …) +
  per-service `Media/*Media.dart` mixins. Rewrite equivalent: `Core/Services/Model/`.
- **`lib/Screens/`** — the real UI: `Home/`, `Anime/` (+ `Anime/Player/` media_kit player),
  `Manga/` (+ `MangaReader/`, `NovelReader/`), `Detail/` (25 files: `Tabs/Info`, `Tabs/Watch`
  for both anime & manga), `Calendar/`, `Search/`, `MediaList/`, `Settings/` (15 files),
  `Character/`, `Staff/`, `Extensions/`, `WebView/`, `Login/`, `Onboarding/`, `Error/`.
- **`lib/Downloader/`** — offline downloads (no equivalent yet in the rewrite).
- **`lib/Preferences/`** — same design as the rewrite's `Core/Preferences/` (this is where the
  Isar `*.g.dart` and `PrefName` set are far more complete on `main`).
- **`lib/Theme/`** — `ThemeManager` / `ThemeProvider` / `LanguageSwitcher` / `Themes/`.
- **`lib/Functions/`** — `AppShortcuts`, `RegisterProtocol/`, extension helpers. Rewrite moved
  these under `Utils/`.
- **`lib/Api/Discord/`** — Discord RPC (ported to `lib/Api/Discord/` here too).
- **`lib/logger.dart`** — same logger design (lowercase filename on `main`, `Logger.dart` here).

**Key differences `rewrite-re` vs `main`:**

| | `main` | `rewrite-re` |
|---|---|---|
| State mgmt | Provider + GetX | pure GetX + `lib/DI.dart` locator |
| `lib/` layout | flat-ish (`Api`, `Screens`, `Services`, `DataClass`, `Functions`, `Theme`, …) | `Core/`, `Model/`, `Screen/`, `Utils/`, `Widgets/`, `Api/Services/` |
| Prefs | `Pref<T>` + manual `.obs` mirroring per controller | reactive `Pref.rx` (shared, auto-persist), batched writes |
| Theme registry | list duplicated in resolver + dropdown + `Themes/` | single `AppTheme` enum |
| Crash reporting | manual (`logger` + native) | Firebase Crashlytics (`AnalyticsManager`) + manual |
| Notifications | scattered | `Core/NotificationManager` unified API |
| `MediaService` | `BaseServiceData` + `Base*Screen` delegates + `TypeFactory` | thin `id`/`name`/`iconPath`, nullable `getQueries`/`getMutations`/`auth`/`get*Screen`, optional `NavBarProvider` |
| ext bridge | git dep | `path: ../DartotsuExtensionBridge` |
| HTTP | `rhttp` + `http` | `rhttp` only |
| Screen base | ad-hoc | `BaseScreen<T>` |
| `.env` | `SIMKL_SECRET` | `hash` |
| version | `1.0.0` | `0.0.x`, Flutter `>=3.44.0` |

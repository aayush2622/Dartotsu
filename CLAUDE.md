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

### State of the rewrite (2026-09-03)

~200 Dart files vs `main`'s ~350. The foundation layers (Preferences, Theme, DI, networking)
got a correctness/consistency pass; then a **pluggable per-service architecture** was built
(`Queries` / `Mutations` / `ServiceAuth`, see below) with a full **AniList read +
list-management slice** on it: onboarding → login → home/anime/manga sections (folding in the
viewer's status lists) → media detail → list editor → search → notifications → settings, all
on live AniList GraphQL. The service read/write surface was split into `main`-style `Queries`
/ `Mutations` part files. On 2026-09-03 the service layer went **data-only**: per-screen
`*ScreenView` classes whose methods return data (section maps, `SearchResults`, `Media`,
`List<Setting>`) — never a widget — plus a `SettingsScreenView` for a service's own settings;
`Screen/Feed/` renders them; each feature screen's components moved into a `Components/`
subfolder.
`flutter analyze` clean; `flutter build linux` + `flutter run -d linux` verified each step. `ExtensionService` has no watch/read
surface yet. MAL and Simkl are built (see their sections). The worktree usually carries large **uncommitted WIP ahead of the committed
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
read via `loadEnv(key)` in `lib/Utils/Function.dart`. (On `main` it held `SIMKL_SECRET`; this branch needs no secrets.)

### Nix

`flake.nix` packages the prebuilt Linux release zip of each channel in `channels.json` (`stable`, `prerelease`, `alpha`; refreshed by `.github/workflows/update-nix-channels.yml`) with `autoPatchelfHook`, and has a dev shell with Flutter plus every Linux build library (`nix develop`, then `flutter run -d linux`). `nix/module.nix` is both `nixosModules.default` and `homeManagerModules.default` (`programs.dartotsu.{enable,channel,package,registerLinkHandlers}`), `overlays.default` exposes `pkgs.dartotsu*`, `nix/checks.nix` (`nix flake check`) builds every channel and asserts the module output. A bundle containing `libWPEWebKit` (stable, alpha) prints a warning at launch: nixpkgs has no WPE WebKit, so its helper processes (`WPENetworkProcess`) are missing and web views crash; only the WebKitGTK 4.1 builds (prerelease and later) run fully. To test a build without disturbing a running instance, launch it under `dbus-run-session` with a throwaway `HOME` (GTK is single-instance and would hand off to the running one).

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
3. **`DI.init()`** — registers every controller in the locator (see below)
4. `Future.wait([Logger.init(), DartotsuExtensionBridge.init(...), initializeDateFormatting(),
   WindowManager.ensureInitialized() on desktop])`, then `MediaKit.ensureInitialized()` +
   system UI overlay style
5. `unawaited(_postInit(args))` — `DeepLink.init()`, `find<AppUpdater>().checkForUpdate()`

Then `runApp(MyApp())`. `MyApp` is a `StatefulWidget` wrapping `DynamicColorBuilder`
(feeds the dynamic `ColorScheme`s into `ThemeController.setDynamicSchemes`) → `Watch` →
`AppRoot` bound to `_theme.light` / `_theme.dark` / `_theme.themeMode` and
`_locale.locale` (no app-remount key — the locale is watched). It also
installs a `Listener` for the mouse back-button and a non-focusable `Focus` node feeding
`appShortcuts`, and wraps with `Dpad.wrap` (D-pad/keyboard TV nav: global
`DpadTraversalPolicy`, `onBack` (via the shared `guardedBack()` — re-entrant back presses
that used to trip `Navigator._debugLocked` are swallowed), a `DpadThemeData` with a restrained
1.03 scale + 2px border focus effect, no glow).
`home:` is gated on `PrefName.hasCompletedOnboarding`.

**D-pad layers** (`Utils/Nav/DpadLayers.dart`) — focus is organised in layers, each a `DpadRegion` with focus memory: the **shell** (the navbar lane, `shellLaneKey`), the **page** (header `DpadRow`, chips/tabs `DpadRow`, every shelf a `DpadRow`, grids a `DpadColumn`) and **overlays** (sheets/dialogs are their own route focus scope). Left/right stay inside a row (`stop` edge), up/down leave it and re-enter the next row at its remembered item. `layerBack()` (mouse back, Esc, system back) pops a route/sheet first, then moves focus from the page to the navbar, and only then lets the system exit. `DpadEnter` (wrapped around every `navigateToPage` page and `showCustomBottomDialog` sheet) puts focus on the first item when the user is navigating by keyboard. Focus looks: Material controls get theme-level states in `ThemeManager.buildAppTheme` (icon buttons a `secondaryContainer` disc, buttons/segments/switches a 2px ring, tiles/chips a tinted background — only while `usingKeyboard`), custom icons use `DpadIcon` / `dpadScaleFocus` (a little bigger), rows and tiles use `DpadTap` (background colour). `Clickable` is focusable too, so never reach for a bare `GestureDetector`.

**TV / keyboard navigation** — `Dpad.wrap` handles arrow-key directional focus + `onBack`
app-wide. Standard Material widgets participate automatically; custom tap targets are wrapped
in `DpadFocusable` (`onSelect`, auto-scroll-to-focus, focus effects): `MediaSection` cards,
`Navbar` items, `HomeHeader` avatar, `SearchScreen` result cards, `DetailScreen` synopsis,
onboarding buttons. `AppDropdown` uses `requestFocusOnTap: true` for keyboard open.

### State management — `Core/State` (our own engine)

Reactivity and DI are home-grown and live entirely in **`lib/Core/State/`**; app code imports only
`State.dart`. GetX is not used by the app any more — `GetBridge.dart` is the one file that touches it, because
the extension bridge package still exposes GetX observables and registers its managers in GetX.

- **`Live<T>`** (+ `LiveList<T>`, `LiveMap<K,V>`; build with `x.live`, `list.liveList`, `map.liveMap`) — the one
  reactive value type, on the `Reactive` mixin (listener list + dependency tracking; a value only allocates a
  `Stream` if someone asks for `.stream`). `pref.rx` is a `Live<T>` too. `onChange(live, cb)` /
  `onAnyChange([...], cb)` / `onFirstChange` return a `Disposer`. `Trigger` (`fire()` / `track()`) re-runs
  watchers after mutating non-reactive data (models, plain sets).
- **`Watch(() => widget)`** — records every `Reactive` read while its builder runs, subscribes to exactly those
  (diffing the set each build, so dropped dependencies are unsubscribed) and rebuilds on change; a change that
  lands mid-frame is deferred to the next frame. It also tracks GetX observables read inside (extension-bridge
  values such as `ExtensionManager.installed`). Reads made later, inside lazy callbacks (`itemBuilder`,
  `LayoutBuilder`, …) are not tracked: read the value into a local first. `BaseScreen` wraps `buildContent` in a
  `Watch`, so a screen only needs `Live` fields.
- **`AppController`** — base class for long-lived controllers: `onInit` once when the locator builds it,
  `onClose` on `delete`.
- **`find<T>()` / `put` / `lazyPut` / `tryFind` / `getOrPut` / `getOrLazyPut` / `delete` / `isRegistered`**
  (`Locator.dart`) — a type-keyed registry (optional `tag`, `permanent`, `fenix`); nothing is ever auto-deleted.
  A type it doesn't know falls back to the GetX registry (bridge managers).
- **`appContext` / `appOverlayContext` / `appNavigator` / `AppRoot`** (`Host.dart`) — the root `MaterialApp`
  owns the navigator key behind the context-free accessors; the locale is just a watched `Live` read by `AppRoot`.

**`StateLog`** prints `[STATE] Instance "X" has been created / initialized`, `"X" onClose() called` and `"X" deleted from memory` in debug builds (`StateLog.enabled`); set `StateLog.verbose = true` to also see every `Watch` rebuild.

**No `setState`**: a `State` keeps its mutable fields as `Live`s and builds under a `Watch` (a plain `State`
renames `build` to `_build` and returns `Watch(() => _build(context))`). `ValueNotifier`s are not used either.

**`lib/DI.dart`** is the single registration point — `DI.init()` in `init()`:

| Controller | Registration | Notes |
|---|---|---|
| `NetworkManager` | `put` (eager) | rhttp client; owns `CookieManager` |
| `AnalyticsManager` | `put` (eager) | Firebase Crashlytics |
| `NotificationManager` | `put(permanent)` + `unawaited(.initialize())` | |
| `ThemeController` | `lazyPut` | reactive theme state (no locale) |
| `LocaleController` | `lazyPut` | `PrefName.appLocale.rx`, watched by `AppRoot` |
| `MediaServiceController` | `lazyPut` | current service + list of services |
| `RefreshController` | `lazyPut` | pub/sub refresh flags (`getOrPut(key)` → `RxBool`, `.all()`); mutations signal it, screens `ever()`-subscribe. `routeObserver` (same file) is on `GetMaterialApp.navigatorObservers` |
| `AppUpdater` | `lazyPut` | AppController; GitHub-release update check + APK install |
| `BaseDiscordRPC` | `lazyPut` | `MobileRPC` on Android/iOS, else `DesktopRPC` |

Local reactive UI uses `Live` + `Watch`; `appContext` / `appOverlayContext` give context-free access
(`getString`, snackbars).

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
  tuple keeps them reactive inside `Watch`). `themeMode` / `isDarkModeActive` derive from `mode`.
  Guarded combo setters (`setTheme`, `setOled`, `setMaterialYou`, …).
- **`Core/ThemeManager/ThemeManager.dart`** — pure builders: `buildAppTheme(base, {isOled,
  glass})` applies the (colour-independent, built-once) Poppins `TextTheme` plus the
  **M3-expressive component themes** — pill buttons (`StadiumBorder`, 48px min), rounded icon
  buttons, 20px FAB, connected `SegmentedButton` group on `secondaryContainer`, stadium chips,
  28px cards/dialogs/sheets, 16px menus/inputs/snackbars, filled inputs, `InkSparkle`, and the
  updated (`year2023:false`) slider + progress indicator — then switch theme, OLED overrides
  and predictive-back transitions. **`glass`** makes the scaffold + app bars
  transparent and card/dialog/sheet surfaces translucent, so the blurred `GlassBackground`
  shows through the whole stack (not just cards); it's in `ThemeController`'s memo key so a
  glass toggle is a normal `AnimatedTheme` lerp. `deriveCardColor`. Barrel-exports `AppTheme`,
  `ThemeMode`, `Themes/DynamicThemes.dart` (`getCustom*Theme` seed themes, `getImage*Theme`),
  `Themes/material.dart`.
- **`Widgets/Components/ThemedContainer.dart`** — `ThemedContainer` / `ThemedWidget` are real
  `StatelessWidget`s (one `Watch`, no `context:` param) — glass-mode-aware card surfaces via
  `blurbox`. `themeDropdown()` lives here too.
- **`Widgets/Components/BaseScreen.dart`** — `abstract class BaseScreen<T> extends State<T>`.
  Implement `buildContent(context)` instead of `build`. Provides `SafeArea` + `Scaffold` and,
  in glass mode, a blurred `GlassBackground` behind the content (`buildContent` is built once
  and reused across glass toggles). `glassBackgroundUrl` getter is overridable
  (default `kFallbackGlassBackground`).

### `MediaService` abstraction

**A new service is one subclass with zero core edits.** `MediaService`
(`Core/Services/MediaService.dart`) is **data-only** — every getter returns data or config,
**never a widget**. Anything `null` makes that screen fall back to `NotImplemented(service,
area)`.

| Getter | Type | Purpose |
|---|---|---|
| `getQueries` | `Queries?` | raw fetch layer: `getUserData()`, `getMedia(id)`, `mediaDetails(m)`, `initHomePage()`, `getAnimeList()`, `getMangaList()`, `getMediaLists({anime,userId?})`, `getCalendarData()`, `getGenresAndTags()`, `getBannerImages()`, `getNotifications({page})`, `search(SearchResults?)` |
| `getMutations` | `Mutations?` | `editList(Media,{customList})` / `deleteFromList(Media)` / `setProgress(Media,progress)` |
| `auth` | `ServiceAuth?` | `user` (`Rxn<ServiceUser>`), `isLoggedIn`, `login()` / `loginWithToken(t)` / `logout()` / `refreshUser()` |
| `feedTypes` / `feedView` / `homeView` / `searchView` / `detailView` / `notificationView` / `settingsView` | `List<MediaType>` / `*ScreenView?` | **per-screen data views** (`Core/Services/Screens/ServiceScreens.dart`) — one abstract class per screen, grouping the `Queries` its screen needs + screen config, all returning **data, never widgets**. `feedTypes` declares the browse tabs; one `FeedScreenView` serves them all, every method parameterised by `MediaType` (`userLists(type)` / `browse(type)` / `loadMore(type, section, page)` per-section pagination / `chips(type)` / `shortcuts(type)`). `searchView.types` + `filters(type)` → `SearchFilterSpec` (filter vocab). `settingsView.build(context)` → `List<Setting>` folded into the Account category. Grow a view with methods as its screen gains features; never push screen concerns into `Queries`. |

- **`Core/Services/Api/Queries.dart` / `Mutations.dart`** — the raw read/write surface the
  views build on (mirrors `main`'s `Queries` + `Base*Screen` split). List-shaped queries
  return an **insertion-ordered `Map<String, List<Media>>`** — key = section title, value =
  its media.
- **`Api/Services/Anilist/AnilistViews.dart`** — the AniList `*ScreenView` impls, each
  delegating to `find<AnilistAuth>().queries`. `AnilistSettingsView` gives a profile link +
  "refresh from AniList".
- **`Core/Services/MediaServiceController.dart`** — `RxList<MediaService> services`
  (`[AnilistService(), ExtensionService()]`), `Live<MediaService> currentService` restored from
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
  isolate.
- `AnilistAuth implements ServiceAuth` (`AppController`, `lazyPut`) — `token` =
  `PrefName.anilistToken.rx`, `user` = `Rxn<ServiceUser>` holding an `AnilistUser`
  (cached to prefs). `login()` runs the implicit grant through `browserAuthenticate` (`client_id 14959`,
  redirect `dartotsu://anilist`); owns `AnilistQueries queries` + `AnilistMutations mutations`.
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
- `AnilistService` — `getQueries` / `getMutations` / `auth` all just return
  `find<AnilistAuth>()`'s members. No screen code (feed composition lives in `Screen/Feed/`).

### MyAnimeList service (`lib/Api/Services/MyAnimeList/`)

Uses the official MAL API and Tenrai (`api.tenrai.org/v1`, a Jikan-compatible MAL data API, no auth) together. `MalClient` (`api.myanimelist.net/v2`, bearer token or `X-MAL-CLIENT-ID` when logged out) serves login, the user's lists, media details with `my_list_status` and list writes (`MalMutations`, form-encoded PUT/DELETE). `TenraiClient` (3 requests in flight, ~150 ms apart — more than ~5 at once gets 429 — 10-minute LRU GET cache, identical in-flight requests shared, retries on 429/5xx honouring `Retry-After`; `limit` max 50) serves everything public: browse sections (`malSections`), search with filters, schedules (calendar), characters and reviews. `MalAuth` is OAuth with plain PKCE through `browserAuthenticate` (redirect `dartotsu://mal`, client id shared with `main`), refreshes the token on 401. Media ids are `anime/<id>` / `manga/<id>` because MAL ids collide between the two (`parseMalMediaId`); scores are stored 0–100 like AniList and shown with `ScoreFormat.point10`; statuses are mapped to the AniList names (`CURRENT`, `PLANNING`, …). `CalendarEntry.episode` is null for MAL (Tenrai has no episode numbers; it has no user endpoints either, so chapters read are summed from the MAL manga list). The user's lists are loaded once per type into a `LibraryCache` (`Core/Services/Api/LibraryCache.dart`: TTL, shared in-flight load, `expire()` after writes) that feeds home rows, the list screens and the chapter count; the detail page paints the MAL core first, then characters, reviews and staff as Tenrai answers.

### Simkl service (`lib/Api/Services/Simkl/`)

Movies, TV and anime (`feedTypes` = anime / movie — two tabs around Home, the second one labelled "Movies & Series" through `MediaService.feedLabel` and showing both movie and TV trending rows; media ids `anime/<simklId>`, `movies/<id>`, `tv/<id>`). `SimklClient` sends `client_id`, `app-name`, `app-version` and a `User-Agent` on every call and **leaves `Authorization` off the cached catalog and data-file calls** (Simkl asks for that). Browse rows come from the public trending files on `data.simkl.in` (section titles stay plain; the Simkl name and link live on the detail page — see `simklSections`), the calendar from the v2 calendar files, details from `/anime|tv|movies/{id}?extended=full`; the user's library is a `LibraryCache` synced the way Simkl asks: one full `/sync/all-items/all/all`, then `/sync/activities` after the 5-minute TTL and a `date_from` delta only when something moved (a full reload if a `removed_from_list` stamp moved); V2 apps have a per-user daily quota (500 requests for a free account) and 1 POST/second, so `SimklClient` queues POSTs 1.1 s apart, retries 429/5xx with backoff, and `SimklMutations.editList` folds episodes + status + rating into one `/sync/history` call. The big calendar files are decoded in an isolate. Writes: `sync/history` (anime episodes with `status`/`rating` in the same entry), `add-to-list` (status only), `sync/ratings` (1–10), `history/remove`. `DetailScreenView.sourceName` ('Simkl') turns the detail menu's "Open in browser" into "View on Simkl", which Simkl's API rules require (link to the item's own page); the detail page also ends with a "Data and artwork provided by Simkl" card.

`SimklAuth` uses **AUTH V2 only** (OAuth 2.0 + PKCE S256, scopes `media:read media:write`, 7-day access tokens renewed with the refresh token; V2 apps are public clients, so there is no secret). The client id (public, a V2 "Mobile, desktop & browser app" registered at simkl.com/settings/developer) and the redirect URL `dartotsu://simkl` are constants in `Auth.dart`; the redirect must match the registration exactly. The anime tab has eight rows (three trending files plus rows derived locally from the `*_500` trending files: airing, top rated, movies, ONA, popular — `SimklSection` filter + sort) and your library status/progress is laid over every feed row from the cached library. Characters and staff on anime pages come from MAL through the `ids.mal` Simkl returns (`SimklEntityView` reuses the MAL entity view without its media lists). Row order and visibility are user settings (`SimklPref.*Layout`, `layoutPref` / `applyLayout` in `Core/Services/LayoutPref.dart`, edited with `Widgets/Components/HomeLayoutSheet`); MAL has the same (`MalPref.*Layout`). Nothing about Simkl lives in `.env` or the CI workflows any more. V2 needs a signed-in user for search; logged out, only the trending/calendar files and catalog lookups work.

### Kitsu service (`lib/Api/Services/Kitsu/`)

Anime and manga on the public JSON:API at `kitsu.io/api/edge` (`KitsuClient`: `application/vnd.api+json` headers, bearer token when signed in, one retry on 429/5xx, 401 triggers a refresh; `Data/Mapper.dart` has `JsonApi` for `included`/relationship lookups). Media ids are `anime/<id>` / `manga/<id>`; deep links with a slug (`anime/cowboy-bebop`) resolve through `filter[slug]`. Browse rows are `/trending/*` plus sorted/filtered `/anime|manga` lists (`kitsuSections`, 20 per page); cast and staff come from `/anime/{id}/anime-characters?include=character,castings.person` (Japanese `locale: ja` voices) and `anime-staff`; the library is `/library-entries?filter[userId]&filter[kind]&include=media`, 500 per page, behind a `LibraryCache`. Scores use `ratingTwenty` (2–20) stored as 0–100; statuses map `current/planned/on_hold` to the AniList names. Writes are `POST/PATCH/DELETE /library-entries` (`NetworkManager.patch` exists for this). Kitsu has **no browser OAuth** — `KitsuAuth.login()` opens an email/password dialog and runs the password grant on `/api/oauth/token` (no client id needed), refreshing with the refresh token. The calendar is built from `nextRelease` of currently-airing anime; reviews come from `/{kind}/{id}/reviews?include=user` (spoilers dropped, score = rating × 10); Kitsu has no recommendations; the detail page also has a Reactions shelf (`/media-reactions?filter[animeId|mangaId]`, `DetailScreenView.reactions` / `canReact` / `postReaction` / `voteReaction`, `Screen/Review/ReactionsShelf`: posting needs a library entry for the title, 140 chars, votes toggle `/media-reaction-votes`; the write calls are unverified against the live API). Account options are real API settings: `KitsuAuth.refreshUser` reads the own `/users?filter[self]=true` attributes (`titleLanguagePreference`, `ratingSystem` — which also sets `KitsuUser.scoreFormat` —, `sfwFilterPreference`, `shareToGlobal`, `timeZone`, `country`, `language`) and `updateSettings` PATCHes `/users/{id}`. MAL and Simkl have no writable account API, so their settings only show account details read from the API (member since, location, time zone, account type, MAL stats). Home carries Continue/Planned plus On Hold, Completed and Dropped (anime and manga mixed). Alphabetical sort breaks `filter[text]` searches (HTTP 500), so the A–Z sort is dropped when a term is set. Social (`Screens/Social.dart`, `KitsuSocialView`): global feed = `/posts?sort=-createdAt&include=user,media`; a user's feed = `/feeds/user/{id}` and Following = `/feeds/timeline/{me}` (cursor paged — `_cursors` remembers each page's cursor), whose activities carry `foreignId: Post:<id>` that is then resolved through `/posts?filter[id]=…` (`filter[userId]` on posts is not allowed); replies = `/comments?filter[postId]`; like/unlike toggles a `/post-likes` or `/comment-likes` row (looked up by user + target), follow toggles `/follows`; posts and comments are plain POST/PATCH/DELETE. Profile counts come from `/users/{id}`, stats from `/stats?filter[userId]` (`anime|manga-amount-consumed`, `*-category-breakdown`, `*-activity-history`), favourites from `/favorites?include=item`. No stories, no direct messages (inbox/sent are empty), no mean score. Simkl has a profile-only view (`SimklSocialView`: `POST|GET /users/{id}/stats` + `/users/settings` → counts per status, episodes, minutes; `SocialScreenView.hasActivity = false` hides the Feed tab and the Activity entries). MAL (Tenrai has no user routes, the official API only serves `@me`) and MangaBaka (no public user endpoints) have no social view.

### MangaBaka service (`lib/Api/Services/MangaBaka/`)

Manga, manhwa, manhua, novels and OEL (`feedTypes` = manga only; the format filter and the type chips split them) on `api.mangabaka.org/v1`. `MangaBakaClient` is bearer-token JSON; **`/series/search` is limited to 30 uncached requests a minute** (everything else 180), so search calls go through a one-at-a-time gate that waits ~2.1 s after a Cloudflare MISS (a HIT costs nothing), identical requests are shared and cached 5–10 minutes, 429 retries honour `Retry-After`, and a 401/403 refreshes the token. Browse rows (Top Manga covers manga + manhwa + manhua through repeated `type` params, Top Novels is separate) are `/series/search` with `sort_by` (`popularity_asc` is the *most* popular — `popularity_desc` is the least —, `score_desc`, `latest`, `name_asc`), `type`, `status` and a single `genre`; `year` is not a valid filter. Series carry `content_rating` (`erotica` / `pornographic` count as adult — Berserk is `erotica`); the Hide NSFW pref (default on) adds `not_content_rating`, drops adult items everywhere and collects your adult library entries under Hidden Media like Kitsu. Detail comes from `/series/{id}` plus `/related` (relation label = the map key) and `/similar` (recommendations); authors/artists/publishers are rows, not staff shelves (no staff or character endpoints exist). Your library is `/my/library` (100 per page, `LibraryCache`), written with `POST` (create, 409 falls back to `PUT`) / `PUT` / `DELETE /my/library/{id}`; states map `plan_to_read`/`considering` → PLANNING, `paused` → PAUSED, `rereading` → REPEATING. The library `rating` scale is unverified, so `MangaBakaQueries.ratingScale` is detected from the loaded entries (any rating above 10 = 0–100, otherwise 0–10) and used when writing. `MangaBakaAuth` is OAuth2 + PKCE S256 (scopes `openid profile library.read library.write offline_access`) through `browserAuthenticate`: desktop redirect `http://localhost:43721/mangabaka`, mobile `dartotsu://callback` (the redirect registered for the shared client id); the profile is `/my/profile` plus `/auth/oauth2/userinfo` for the avatar.

When signed in, `HomeFeed` appends the service's local-list sections (`HomeScreenView.screenStreamWithLocal`, titles prefixed `localSectionPrefix`, items copied with `Media.isLocal = true`) at the bottom of Home; long-pressing one opens a remove-only sheet (`_localRemoveDialog`) instead of the list editor so it can't clash with the account entry. The editor's Remove button also shows for local entries (`LocalMutations.has`) when logged out.

### List sync (`lib/Screen/Settings/Sync/Data/`, Settings › Account › Sync lists)

Mirrors one service's list (the **main** one, any signed-in service) onto the others. A service opts in with `MediaService.syncAdapter` (`SyncAdapter`, one `Sync.dart` per service): `library(anime:)` returns `SyncItem`s (normalised status/progress/score 0–100 plus every foreign id the service knows — AniList `idMal`, Kitsu `media.mappings`, MangaBaka `source`), `targetId(native)` builds the service's `Media.id`, `write(batch)` is a **throwing** write that returns how many requests it used (AniList stacks `SaveMediaListEntry` aliases 10 per request, Simkl folds a batch into one `sync/history` + `add-to-list` per status + `ratings` + `history/remove`; MAL/Kitsu/MangaBaka go through `Mutations.saveEntry`, the throwing twin of `editList` whose `exists` flag skips lookups and leaves untouched fields alone), `limits` is the request budget (`SyncLimit(requests, per)`, several allowed — Simkl is 50/min and 450/day). Anime ids are bridged through the Fribb `anime-lists` file (`SyncIdIndex`: downloaded once, compacted to `<Dartotsu>/sync/anime-ids.json`, refreshed weekly); manga uses the foreign ids the services return. `planTarget` (pure, tested in `test/sync_test.dart`) pairs each main item with the target's entry: synced / outdated / missing / unmapped, and with *Keep further progress* a target that is ahead stays synced. `SyncController` (`lazyPut`, `startAuto()` in `_postInit`) runs Fetch (one library query per service and type, in parallel, progress bar) and Sync all (one worker per target, concurrent; waits out the budget using request timestamps persisted in `PrefLocation.CACHE`, honours `SyncRateLimited(retryAfter)`, stops on `SyncFatal` such as a 401, retries a failed batch item by item, **Stop** at any time). The whole plan — per-pair state, done/failed — is persisted (debounced) so a restart resumes where it stopped. Modelled on MAL-Sync's list sync (master/slave mirror keyed by MAL id, diff of score/progress/status/dates/rewatch count, add-missing): `SyncPair.diffs` also tracks start/finish dates and repeat count when both adapters declare `syncsDates`/`syncsRepeat` (Simkl does neither), a Completed main entry writes the *target's* own total, and `Media.malId` (Simkl `ids.mal`) supplements the Fribb file. Missing targets whose own id isn't known (manga, anime Fribb lacks) are `missing` with a null `targetId` and get resolved at sync time through `SyncAdapter.resolve` (MAL id → native id: Kitsu `/mappings`, MangaBaka `/source/my-anime-list`, AniList `idMal_in`, Simkl `/search/id?mal=`), as MAL-Sync does. *Sync changes instantly* (`PrefName.syncOnEdit`, in the Sync screen's options, not in the list editor): after a list-editor save, and after every online progress update (`OfflineMutations.onProgressSaved`, set by `SyncController.startAuto`), `SyncController.pushEdit` writes the entry to every other signed-in service (ids from `SyncAdapter.idsOf` + Fribb/resolve, within each service's budget). Auto sync (`PrefName.syncAuto`) fetches and syncs both types 45 s after launch and every 30 minutes; it reads only the main list first and skips the target queries when a fingerprint of it (`syncFingerprint`) is unchanged, nothing is pending and the last full fetch is under 6 h old. The request budget is the pure `SyncBudget` (timestamps per service, `hold` backs off 30 s doubling to 15 min on repeated `SyncRateLimited`, honouring a longer `Retry-After`); `SyncMemory` (persisted in `PrefLocation.CACHE`) keeps resolved MAL → native ids, skipped items and the fingerprints, so lookups aren't repeated and skips survive a re-fetch. *Review before syncing* (`PrefName.syncConfirm`) shows `SyncController.preview` (updates, adds, lookups, estimated requests) before Sync all; tapping a pair opens a sheet with its differences, the failure reason, Retry and Skip/Include (`SyncOpState.skipped`). Besides any signed-in service the main picker offers *Whichever is ahead* (`syncAheadId`, `SyncAhead.dart`): every service is fetched, entries are grouped by shared ids (one group never takes two entries from the same service), `mergeAhead` picks each group's winner (effective progress — a Completed entry counts as its total —, then status, rewatch count, has-a-score; a missing score is borrowed) and every service, the winner's own included, is planned against the winners, so changes flow both ways; `SyncItem.source` records where a winner came from, and in this mode the instant-sync switch applies to every service. The heavy work runs in isolates (`SyncCompute.dart`: ID expansion, fingerprint, planning/merging via the sendable `SyncTarget` spec that replaces the adapter inside `planWith`; the plan itself is stored as `<Dartotsu>/sync/plan.json`, written and read through `compute`, not in the prefs DB; `SyncController.version` lets the UI memoise its sorted list). Removals are not propagated (no adapter has a throwing delete) and, outside that mode, sync is one-way. UI: `Screen/Settings/Sync/` (`SyncScreen` + `SyncState`; `Components/SyncHeader` = main picker, type, Fetch / Sync all / Stop, progress, collapsible options; `SyncTabs` (`AppTabs`, one per target) + `SyncOverview` (tappable count tiles as filters, rate-limit/pause info, a From/To column header); `SyncPairRow`: main on the left, the target's entry — or a ghost of the main one if it's not in that list yet — on the right).

### Extra integrations (`Core/Services/Api/`)

Four public APIs, each a static client plus pure `parse*` functions (tested in `test/integrations_test.dart`): **AnimeThemes** (`AnimeThemes.dart`, by AniList id through `CommentsTarget.resolve`; the detail page's `ThemesSection` lists OP/ED with versions, plays a video or the audio through `openPlayer` with a fixed stream), **MangaUpdates** (`MangaUpdates.dart`; `MangaUpdatesSection` on manga / novel details matches the series by title ratio and year, stores the id in `MediaRecord.mangaUpdatesId`, shows status, latest chapter, rating and the recent releases with scanlation groups), **SauceNAO** (`SauceNao.dart`; the search bar's image button opens `SauceSheet` for manga / novel types and `ImageSearchSheet` (trace.moe) for anime; optional API key `PrefName.sauceNaoKey`, set from the sheet, because saucenao.com is behind Cloudflare and answers 403 to keyless requests from some clients) and **AniTrendz** (`AniTrendz.dart`; `Screen/Charts/ChartsScreen`, reached from the account sheet: top anime, female / male characters, couples, with weekly movement). **ISBN barcode search** (`IsbnLookup.dart`, `Screen/Search/Components/BarcodeSheet`): the search bar's scanner button (manga / novel) reads an EAN / UPC with `mobile_scanner` (Android, iOS, macOS; desktop types the ISBN), looks the book up on Google Books then Open Library and searches the cleaned title (`cleanBookTitle` drops volume / edition markers). **Share card** (`Screen/Share/`): `ShareCardSheet` previews a `TitleShareCard` (detail menu) or a `ListShareCard` (account sheet: top 9 of the signed-in list) inside a `RepaintBoundary`, captured at 3x and shared (`shareFile`) or saved (`FilePicker.saveFile`). **Read aloud**: `Reader/Engine/NovelSpeech` wraps `flutter_tts` (Linux uses Piper through `piper` + `pw-play` when a voice sits in `~/.local/share/piper`, else `spd-say`) for the novel reader (tap a paragraph to jump; voice, speed, pitch in `ReaderSettings`) and `SpeakButton` on every `DataSection` (synopsis). **Translation**: `Reader/Engine/NovelTranslate` translates a chapter through Google's key-less `translate_a/single` endpoint in batches of paragraphs.

### Comments, groups and image search

**Comments** (`Screen/Detail/Comments/Data/`, `Screen/Detail/Comments/`) are the Dantotsu comment server (`api.dantotsu.app`) on every title's Comments tab. They are keyed by the *AniList* media id and use the signed-in AniList token (`CommentsApi`: `/authenticate` with the token, session cached in `PrefLocation.CACHE`, re-auth on 401, 6-day lifetime). `CommentsTarget.resolve(service, media)` maps any service's entry to an AniList id (`SyncAdapter.idsOf` + `foreignIds` (Kitsu `/mappings`) + the Fribb index + AniList `idMal_in`, cached per service/media), so MAL, Simkl, Kitsu and MangaBaka pages comment on the same thread; titles that can't be matched show "unavailable", logged-out AniList shows a sign-in card. Profiles open only when the current service is AniList. `CommentsSection` (`ScreenStateHost` + `CommentsState`) holds sort (`PrefName.commentsSort`), episode/chapter tag filter + progress chip, a composer (tag, spoiler `||text||`, Klipy GIF picker, 300 chars, rules dialog on first post), paging on scroll, and `CommentTile` threads: Reddit-style lines (tap to collapse), depth capped at 3 then flattened into the parent list, optimistic votes, level colour from `total_votes`, mod/admin badges, report/delete/ban. `CommentAlerts` polls `/notification/reply` and opens the comment (`openDetail(commentId:)`) from the notification. Toggles: General › Comments.

**Groups** are on `SocialScreenView` (`hasGroups`, `groups`, `group`, `groupPosts`, `groupMembers`, `toggleGroup`, `postToGroup`, `groupScopes`, `hasGroupMembers`; models `SocialGroup`, `GroupPage`): Kitsu implements the real groups API (`/groups`, `/group-members`, `/feeds/group/{id}`, posts with `targetGroup`), MAL maps its read-only forum boards/topics/posts onto the same screens (`members == -1` hides counts). UI: `Screen/Social/GroupsScreen` (reached from the account sheet), `GroupScreen` (Posts | Members | About through the floating nav bar), `Components/GroupCard|GroupMembersTab`; posts reuse `ActivityList(groupId:)` and `ComposerKind.group`.

**Image search**: the search bar has a trace.moe button (anime/movie types): `Core/Services/Api/TraceMoe.dart` + `Screen/Search/Components/ImageSearchSheet`; the picked hit is mapped back to the current service through the Fribb index (falling back to AniList).

**Notifications** (`Screen/Notifications/`): `NotificationsScreen` = service tabs (`AppTabs`, one per signed-in service whose `notificationView` is non-null) + a bottom/side `FloatingBottomNavBar` (service notifications | Comments) + a chip row of `NotificationKind`s from `NotificationScreenView.kinds`. `NotificationFeed` (in `NotificationsState`) holds one service's paged list. The Comments section is the Dantotsu notice list, kept locally in `CommentNoticeStore` (the server delivers a reply once, like Dantotsu's own store). A `NotificationScreenView` also supplies `settings(context)` (shown with every service's rows on `NotificationSettingsScreen`, reached from the tune icon; long-press sends a test notification), `alertsPref` / `pollPref` / `mutedPref` and `unread()` for `Core/Services/ActivityAlerts`, which polls every service with alerts on and shows rich system notifications (cover, title, detail, service as subtitle, tap payload `notif:{json}` opened by `openNotification`). `notificationAlertSettings(view)` builds the shared rows. AniList and Kitsu implement it (the Kitsu feed `/feeds/notifications/{id}` is unverified). Notification log lines carry the `NOTIFICATION` tag. `ProfileScreen` uses the same floating nav bar (Profile | Feed | Stats) instead of tabs. Both alert pollers (`ActivityAlerts`, `CommentAlerts`) start at the top of `_postInit` and poll immediately; `ActivityAlerts` polls every service with alerts on in parallel. `SharedRefresh` (mixin in `ServiceAuth.dart`, on every service auth) shares one in-flight `refreshUser()` per token.

### Watch / read tab and episode metadata (`Screen/Detail/Watch/Data/`, `Screen/Detail/Watch/`)

The detail page's Watch/Read tab is `WatchSection` (`ScreenStateHost` + `WatchState`). For every service except Extensions it has a source bar (every installed source of the type through `watchSources(type)` — the Extension page's language filter and drag order apply, its loaded/muted selection does not, last-used source per title, "Wrong title?" search sheet, "Search again"); for the Extension service `media.sourceData` is the fixed source, so there is no selector and the list loads straight from `getDetail(DMedia.withUrl(shareLink))`. `SourceMatcher` searches the source by main name / romaji / synonyms with a Levenshtein + token-sort `titleRatio`, and saves the chosen match per service/source/media (`watchMatch/...`); the *Source matching* setting (closest / exact) decides whether a weak match is accepted. Episodes are renumbered by `normalizeEpisodes` (anime, same rules as `main`), chapters by `prepareChapters` (number from the name when the source gives none); `chunkUnits` splits them into ranges (`watchChunkSizePref`) and `chunkOf` opens the range with the next unit. `UnitTile` has list / grid / compact layouts (watched dimmed from `userProgress`, next highlighted, filler and recap badges, optional spoiler blur), tapping an anime episode loads its streams (`StreamSheet`, or the remembered one when *Auto select stream* is on) and opens the player, tapping a chapter opens the reader (`openReader`); the info icon / `UnitSheet` show the details with Play/Read and mark watched/unwatched (`Mutations.setProgress`, also on long press), the gear beside the source opens `SourceToolsSheet` (source preferences, open the site in the web view to clear Cloudflare, a cookie / `cf_clearance` / user-agent status read from `CookieManager` by `Screen/Detail/Watch/Data/SourceHealth`, a connection test that detects a Cloudflare challenge, clear cookies; the Extension service gets the same bar without the selector), the wrong-title sheet lists results as a `MediaSection`, the Watch tab and the player episode list are slivers (`UnitSliver`, lazy list rows that fade up as they are built; grid layouts stay a non-lazy `UnitLayout`), the title row's icon switches the episode-detail provider per title (`MediaWatchSettings.metaSource`: auto / one provider / off), `WatchOptionsSheet` is the per-title media settings (`MediaWatchSettings`: layout, reverse, hidden groups, matching mode, last source — stored under `watchSettings/<service>/<media>`). Global defaults live in Settings › Watch & read (`Categories/WatchSettings.dart`, prefs in `Screen/Detail/Watch/Data/WatchPrefs.dart`), which also holds the Player and Reader settings as sub-screens (`SubSettingsScreen`).

**Episode metadata** is a registry of `EpisodeMetaProvider`s in `Screen/Detail/Watch/Data/Providers/` (ani.zip, Kitsu GraphQL, Simkl `/anime/episodes/{id}`, AniList streaming episodes + airing schedule, Tenrai for filler/recap flags — each checked against the live API on 2026-10-10; Anify (404), Jikan (unreachable, same data as Tenrai) and TMDB (needs a key, covered by ani.zip) were dropped). The episode list itself always comes from the source: metadata only decorates units by episode number and never adds or removes one, merged field by field in the user's priority order (ani.zip's `episodeNumber` is season-relative, so episodes are keyed by `absoluteEpisodeNumber` and `S*`/`O*` specials are skipped — otherwise One Piece episode 1000 shows 109's data) by `EpisodeMetaService` (enable/disable and drag order in Settings, 30-minute in-memory cache, results stream in as each provider answers). `MediaIdResolver` turns any service's media into `MetaIds` (sync adapter ids + Fribb index; a missing Simkl id comes from Simkl's keyless `api.simkl.com/redirect?to=simkl&mal|anilist|kitsu=` redirect (`Simkl/IdLookup.dart`, which the Simkl sync adapter's `resolve` now uses too, because `/search/id` answers 401 `user_token_required` without a user token); extension media are matched to AniList by title). Anime only; manga and novels have no metadata providers. AniSkip is not ported (it is player-only).

### Per-media state — `MediaRecord` (`Screen/Detail/Watch/Data/Media/MediaRecord.dart`)

Everything the app remembers about one title lives in **one JSON document under one key** (`media/<service>/<media id>`, `MediaRecords.of(service, media)` returns the shared in-memory instance, `MediaRecords.save` writes it, `reset` drops it): the Watch tab's `MediaWatchSettings` (layout, reverse, hidden groups, matching mode, metadata provider, last source), the matched title per source (`matches[sourceId]`), per-episode `playback` positions, `StreamPrefs` (auto select + the last stream label per source), the resolved `MetaIds` (`ids`), the AniList id the comments use (`commentsId`), the per-title player overrides (`player`, only the keys that differ from the global settings) and `saveProgress`. Add new per-title state as a field here — never a new `watch…/<service>/<media>` key. (Local files that have no media keep their position in the single `localPlayback` key, `Screen/Player/Engine/LocalPlayback.dart`.)

### Player (`Screen/Player/Engine/`, `Screen/Player/`)

`PlayerScreen` (+ `PlayerState`) is the Dartotsu player on `media_kit`, with the AnymeX extras. `PlayRequest` = a list of `PlayItem`s (an episode with its `DEpisode`, or a fixed stream for local / network / torrent items) plus optional already-loaded streams; tracked requests carry `service` + `media` + `source` so progress, auto select and per-title settings work, direct ones (`PlayerLauncher.dart`: `playPaths`, `pickAndPlayFiles/Folder`, `askNetworkStream`, `askTorrent`, `playTorrent`) do not. `installPlayerLinks()` (in `_postInit`) points `DeepLink.playFiles` at it, so files opened with the app play. `PlayerEngine` wraps `Player` + `VideoController` with `Live` state (position, tracks, chapters, errors, …), applies the decoder, then the tuning overrides, then `mpv.conf`, then the scripts and shaders; magnet / `.torrent` sources go through the `TorrServerAddon` (`TorrentStream.dart`). `PlayerState` loads a stream list for the item (`source.methods.getVideoList`, preloaded for the next episode at 80 %), picks one (auto select by `bestStreamIndex` against the remembered label, otherwise the stream sheet), resumes from `playback`, saves progress every 5 s, marks the episode watched at 80 % through `Mutations.setProgress` (not in incognito, not when the title's *save progress* is off), auto-plays the next episode, and skips openings / endings / recaps from the stream's own timestamps or AniSkip (`AniSkip.dart`, MAL id; auto skip is optional and once per kind by default). UI: gestures (tap, double tap seek / pause, hold to speed up, brightness / volume swipes on mobile), keyboard shortcuts on desktop (space/K, arrows, shift+arrows frame step, F, N/P, S, M, 0–9, Enter = episode panel), sheets for speed / streams / subtitles / audio / chapters / shaders / options (`Components/PlayerSheets.dart`), and a lock. Options are `PlayerSettings` (a typed view over one map; global in the `playerSettings` key via `PlayerPrefs`, per-title overrides in the `MediaRecord`) and one data-driven row list (`Screen/Settings/Categories/PlayerSettings.dart`: `playerSettingsRows`) serves both Settings › Player and the in-player options sheet. mpv extras live in `<Dartotsu>/mpv/` (`MpvFiles.dart`): `mpv.conf` (editor sheet, parsed by `parseMpvConf`), `Shaders/` (Anime4K v4.0.1 is downloaded on demand from its GitHub release; your own `.glsl` / `.hook` files can be imported and chained, profile `CUSTOM`) and `scripts/` (Lua / JS / native plugins loaded with `load-script`, each switchable; they need a libmpv build with that support). `PlayerScreen` is YouTube-shaped: a 16:9 stage on top with compact controls (back, transport, seek bar, fullscreen), and below it the title, a *Show comments* button and the episode list — `PlayerEpisodes`, the detail page's own `UnitTile` / `RangeBar` / `UnitLayout` in the title's saved view (list / grid / compact), with plain `EpisodeTile`s for items without a `WatchUnit`. *Show comments* slides a layer up over the episode area (an `AnimatedSwitcher`) holding the inline `CommentsSection` filtered to the playing episode through its `episode` Live, with a cross to close it; streams are an icon in the stage's top bar, and the player settings (speed, subtitles, audio, shaders, chapters, resize, options) are a chip row under the title so the compact stage stays clean. The fullscreen button (`PlayerState.enterFullscreen` / `exitFullscreen`) rotates to landscape + immersive on Android / iOS (and `followOrientation` enters it when the phone is turned) and uses window fullscreen on desktop; only the fullscreen layout has the full toolbar (speed, streams, subtitles, audio, shaders, chapters, lock, episode side panel). The same `KeyedSubtree(GlobalKey)` stage moves between the two layouts so playback never restarts. The next episode's stream list is fetched once playback passes 60 % (or 3 minutes remain) and reused by `loadItem`. The system media notification / lock-screen controls are `PlayerMediaSession` (`flutter_media_session`, as on `main`; Android, iOS, macOS and Windows — the plugin has no Linux/MPRIS backend). When an episode ends and *auto play* is on, `PlayerNextCard` counts down `PlayerSettings.autoPlayDelay` seconds (Cancel / Play now; 0 = immediate). A long press on the skip button remembers *auto skip* of that kind for the title (`MediaRecord.skips`, read by `_wantsSkip`). `subtitleLanguage` and `audioLanguage` are comma-separated priority lists applied by `TrackPick.dart` (`pickTrack`: stream subtitles first, then embedded tracks, signs/forced avoided). The ✨ button in the episode header loads episode metadata inside the player (`PlayerState.loadMeta`, also run for Resume-shelf launches). Brightness on Linux goes through `screen_brightness_linux`, added in the fork `github.com/aayush2622/screen_brightness` (branch `linux-support`, a git dependency in `pubspec.yaml`; upstream is `aaassseee/screen_brightness`, clone `../screen_brightness` has remotes `upstream` (theirs) and `origin` (the fork), sync it by merging upstream `develop` into `linux-support`): systemd-logind `SetBrightness` over D-Bus with a sysfs fallback; `supportsBrightness` is true there only when a backlight device exists. Picture in picture is `Screen/Player/Engine/Pip.dart` (`PlayerPip`). Android and iOS use the `fl_pip` plugin, which shrinks the Flutter view itself into the PiP window (so media_kit's texture keeps playing): `MainActivity` extends `FlPiPActivity`, `AppDelegate` extends `FlFlutterAppDelegate` with the `audio` background mode, the player button calls `enable`, and with the *Picture in picture on leave* setting (`autoPip`, armed while playing through `enabledWhenBackground`) it enters PiP when the app goes to the background; the aspect ratio follows the video. fl_pip's README warns that iOS may freeze or blank the Flutter UI while in the background and the iOS wiring has not been run on a device (the app uses the scene lifecycle, which fl_pip's `applicationDidEnterBackground` hooks may not see). There is no desktop picture in picture. `PlayerScreen._pip` shows only the video while PiP is active. Not ported from Dartotsu / AnymeX yet: external-player hand-off, player themes, watch-together.

### Reader (`Screen/Reader/Engine/`, `Screen/Reader/`)

`openReader(ReaderRequest)` (`ReaderLauncher.dart`) opens `NovelScreen` for `format == 'novel'`; for manga / manhwa / manhua it first shows `ReaderLoadSheet` (a bottom sheet that runs `getPageList`, with retry on failure, like `main`) and then `ReaderScreen` with the pages handed over through `ReaderRequest.withPages`. Page images load through `ReaderImageLoader` (3 parallel, retries, in-memory LRU, the real failure reason shown on the page). `ReaderRequest` = service, media, source and the watch tab's `WatchUnit`s. **Manga**: `ReaderState` keeps `segments` (one `ReaderSegment` of `PageUrl`s per loaded chapter, appended forward as you near the end — `settings.preload` items ahead, or on the gap tile's button) and flattens them with `buildReaderItems` into `ReaderPage` / `ReaderSpread` (double pages in landscape) / `ReaderGap` (previous / next chapter tiles) items, so paged and scrolling modes share one model and a chapter change needs no jump. Modes (`ReaderSettings.mode`): `rtl`, `ltr`, `vertical` (a `PageView`, `ReaderPagedView`, with per-page pinch / double-tap zoom in `ReaderZoom` that locks the page swipe while zoomed) and `webtoon`, `continuous` (`ReaderWebtoonView`, a `ListView` that finds the centred item through per-item `GlobalKey`s and jumps by estimate + `Scrollable.ensureVisible`). Tap zones are the pure `tapActionFor` (default / L-shaped / Kindle-like / edges / off, RTL and invert aware); scale (fit / width / height / original / smart), background, colour filter, dim, page gap and side padding, page number, fullscreen, keep awake, orientation, preload count and auto next chapter are `ReaderSettings`. Progress: page index per chapter in `MediaRecord.playback` (debounced), the chapter is marked read through `Mutations.setProgress` when its last page or end gap is reached (not incognito, not when *save progress* is off). **Novel**: `NovelState` loads `getNovelContent`, `parseNovel` (`NovelText.dart`, pure) turns the HTML into paragraphs / headings / pictures / rules, `NovelScreen` renders them selectable with font, size, line height, paragraph spacing, margins, justify, bold and a theme (app / light / sepia / dark / black); the scroll fraction (×10000) is the saved position and ≥ 90 % marks the chapter read. Settings are `ReaderSettings` (typed view over one map, global under `readerSettings` via `ReaderPrefs`, per-title overrides in `MediaRecord.reader`), `mangaReaderRows` / `novelReaderRows` (`Screen/Settings/Categories/ReaderSettings.dart`) feed both Settings › Reader and the in-reader sheet; the row helpers (`choiceSetting`, `switchSetting`, `sliderSetting`, `colorSetting`) are shared in `Screen/Settings/Widgets/SettingRows.dart`. Crop borders (`Screen/Reader/Engine/BorderCrop.dart`: a downscaled scan for uniform white/black margins, applied in `ReaderImage` through `ReaderCropScope`), volume-key paging (Android only: `MainActivity` swallows the keys while `VolumeKeys` is enabled) and auto scroll (a timer nudging the webtoon scroll position, or turning pages every few seconds in paged modes; button in the reader's top bar, speed in the settings) are `ReaderSettings`. Bookmarks (`MediaRecord.bookmarks`, a page for manga and a scroll fraction ×10000 for novels; toggle and list buttons in both top bars, `BookmarksSheet`) are per title. Downloaded chapters are read from disk (see Downloads). Not built: text-to-speech.

### Dantotsu import (`Core/Preferences/DantotsuImport.dart`)

Settings › Backup › Restore › *Import from Dantotsu* reads a Dantotsu `.ani` (plain JSON) or `.sani` (AES-CBC, PBKDF2-SHA256 10 000 rounds, 16-byte salt first, zero IV; the typed password is padded to 16 characters with `0`, so `2006` is `2006000000000000`). `planDantotsu` turns the file into `DantotsuItem`s (AniList / MAL / Discord tokens, theme, extension repos, update / comment / notification / DNS settings, player speed and subtitle colours) that the user ticks in `DantotsuImportSheet`.

### Resume shelf (`Screen/Detail/Watch/Data/Media/ResumeStore.dart`, `Screen/Home/Components/ResumeShelf.dart`)

Home starts with a *Resume* shelf (episode thumbnail, title, `Episode N • mm:ss left` or `Chapter N • Page x of y`, progress bar, a cross to remove). `ResumeStore` keeps one `ResumeEntry` per service + kind + media (newest first, 30 max, one `resume` pref): `PlayerState._saveProgress` and `ReaderState._flushProgress` upsert it for tracked, non-incognito, *save progress* titles once an episode is 10 s in (or a chapter is past page 1) and drop it at 90 %. An entry is hidden (and removed) as soon as the title's list progress is at or above its number: `noteProgress` is called after every `setProgress`, on detail loads and after a player / reader session, and `verify` re-reads the 8 newest titles through `Queries.getMedia` in the background (once per 15 minutes). Only the current service's entries show. Tapping one calls `openResume` (`Screen/Feed/ResumeLauncher.dart`), which opens the player or reader **directly**: the entry stores the raw `DEpisode`, so the source (`installedSourceById`, after `ensureSourcesReady`) can fetch the streams / pages without the detail page. The normal `DetailScreen` is pushed first with no transition so Back lands on it, and it loads in the background untouched (`ResumeStore.endSession` makes it reload when the player / reader closes, so its progress is current). The player starts with a one-item `PlayRequest` (`resume: true` picks the remembered stream without asking) and `PlayRequest.loadItems` fills in the full episode list a moment later (`PlayerState.items` is a `LiveList`); the reader starts with a one-unit `ReaderRequest` (behind the usual loading sheet) and `loadUnits` swaps in the chapter list (`ReaderState._extend` re-bases the open segments). `Screen/Detail/Watch/Data/UnitLoader.dart` (`loadUnits`) is the headless twin of `WatchState._loadEpisodes` (saved source match, `getDetail`, the same renumbering). Entries saved before `episode` existed just open the detail page.

**Local progress** (`Screen/Detail/Watch/Data/LocalProgress.dart`): the per-unit `MediaRecord.playback` positions feed more than the player resume. `effectiveProgress(serviceProgress, units, playback)` is the greater of the service's progress and the highest locally finished (≥ 90 %) unit, and `WatchState.progress` uses it, so the Continue card, the watched dimming, the range chunk and the player's episode list all follow it even when the service hasn't been synced (un-watching a unit clears the local finished marks at or above it). Part-watched units (`partialFraction`) show a progress bar in every `UnitTile` layout, in the detail Watch tab and in the player's episode list (`PlayerState.progressTick`); `ContinueCard` sits on the title's banner / cover and shows the time left or the page of the unit it will open. The reader stores a chapter's last page as `position == count` so a finished chapter counts as finished.

### Downloads and offline (`Core/Downloads/`, `Screen/Downloads/`, `Core/Offline/`)

The logic lives in `Core/Downloads/` (engine, `DownloadQueue.dart` task building, fetchers, HLS, scanner, paths, snapshots, prefs, foreground service); `Screen/Downloads/` is UI only (picker sheets, page, rows, `DownloadConfirm.dart` = the confirm dialog every delete / cancel goes through, `DownloadStreamSheet` = the stream list with a loading bar, like the online one).

`DownloadEngine` (`AppController`, `lazyPut`, touched in `_postInit`) owns the queue: `DownloadTask`s (kind `video` / `chapter`, state, bytes, chosen stream and subtitle, a `StreamProfile` for batches, a slim media snapshot) persisted in the `downloads` pref, `parallel` slots (`downloadParallelPref`, 1 = one by one), pause / resume / cancel / retry / reorder; an interrupted task comes back `paused`. **Video**: direct files go through `fetchFile` (`FileFetcher.dart`: `.part` file + `Range`, restart if the server ignores it); expired links (401/403/410) re-resolve the stream once, network errors retry with backoff, and when `NetStatus` says there is no connection a task waits (`paused`, "Waiting for a connection") and resumes by itself. **HLS** (`Hls.dart` pure parser, `HlsFetcher.dart`): the picker (`chooseHlsMode`) offers to install the bridge's `FfmpegAddon` (mp4 output) or *Keep as folder* (`task.folder`: always the case where ffmpeg is unsupported, e.g. iOS) — a folder download keeps the segments, keys (named `keyN.ts` so mpv's `allowed_extensions` check accepts them) and a local `index.m3u8` in `<Title>/Episode 001/`, and `localVideo` plays that playlist directly (no ffmpeg needed); the chosen variant (`task.height` / `StreamProfile.height`, closest height else the best bandwidth) is downloaded segment by segment (keys and fMP4 init files included, resumable: finished files are skipped) into `.<Episode 001>/`, a local playlist is written and `FfmpegAddon.remuxPlaylist` copies it into `Episode 001.mp4` (`-c copy`, `task.finishing` while it runs); SAMPLE-AES / byte-range playlists are refused. **Torrents**: `TorrServerAddon.addForDownload` + `pickFile(episode:)` + `fileUrl` (bridge, independent of the streaming slot), then the same `fetchFile` over the local url; the torrent is released afterwards. **Manga** (`ChapterFetcher.dart`): `getPageList`, pages saved in their original format (`sniffImageExtension` decides the extension), 3 workers, resumable per page, into `Chapter 012/001.jpg`; **novels**: `getNovelContent` saved as `Chapter 013.html` with its images localised into `Chapter 013_files/`. Files live in `<Dartotsu>/downloads/<service id>/<Title>/` via `DownloadPaths` (a title folder that already exists directly under `downloads/` from before the per-service layout keeps being used; the scanner reads both) (`StorageManager`, Android public Dartotsu folder when permission is granted, `.nomedia` in the root and every title folder) with a `media.json` snapshot (media, episode list, source id — rewritten by `DownloadSnapshots` on every online detail load / unit load, `cover.jpg` refreshed when the cover url changes) and an optional `Episode 001.json` (`downloadInfoFilePref`, off by default; nothing depends on it). `DownloadScanner` (started by the engine, folder watch + pull to refresh) adopts video files dropped into a title folder that has a `media.json` (`episodeNumberOf` in `NameMatch.dart` reads `1.mkv`, `E01`, `Ep 12`, `[Group] Show - 05 [1080p]`, `S01E05`, …; any extension in `videoExtensions`, same-named subtitle files attach), lists other folders / loose files as local groups on the Done tab, and drops finished tasks whose files vanished. Picking is `DownloadPicker.dart`: stream sheet, HLS quality sheet, subtitle sheet; the resulting `StreamProfile` (label + subtitle label + height) is applied to the rest of a batch (`_resolve`: fuzzy label match, else the first stream and `fallback = true`); chapters skip the picking. UI: download icon in the Watch tab title row (next / next N / unwatched / range / all), a button in `UnitSheet`, `DownloadBadge` in `UnitTile`, `DownloadsScreen` (Queue / Done / Failed, Done grouped by title, tap plays / reads, title opens the detail page), Settings › Downloads (parallel, notifications, info file, delete watched, offline mode, pending changes). A downloaded unit plays through `localVideo(...)` (`PlayerState.fetchStreams`, `WatchSection._play`) and is read through `localPages` / `localNovel` (`ReaderLoadSheet`, `ReaderState`, `NovelState`; `ReaderRequest.source` is nullable so a downloaded chapter opens without its extension). *Delete watched downloads* (`downloadAutoDeletePref`): `markFinished` at 80 % / last page, `sweepFinished` when the player / reader closes. Notifications: on Android `DownloadService` keeps a `flutter_foreground_task` data-sync service (manifest service + permissions) alive while anything downloads and its notification carries the live progress text (`downloadNotifyPref`: live / done / off; `NotificationManager.showProgress` is the fallback when the service cannot start); elsewhere a completion notification, tap payload `downloads` opens the page (`installDownloadLinks`). **Network rules and speed**: `NetStatus` also tracks the connection kind (`connectivity_plus`: wifi / ethernet / mobile / other / none) and `metered` (Android `dartotsu/network` channel in `MainActivity`, else mobile = metered); `downloadWifiOnlyPref` and `downloadMeteredPref` make `DownloadEngine._syncNetwork` pause active tasks (marked waiting, resumed automatically) and `_pump` hold queued ones, `blockedReason` feeds a banner on the Downloads page; `downloadSpeedLimitPref` (KB/s, 0 = off) is a global pacer (`Throttle.dart`, `DownloadThrottle.take`) used by every `fetchFile` loop (video, HLS segments, manga pages, torrent). **Queue order**: the Queue tab is a `ReorderableListView` with drag handles and a *move to top* button (`reorderQueue` / `moveToTop`, pure helpers `reorderWithin` / `moveBefore` in `DownloadQueue.dart`). **Chapter keys**: a unit's key is its number (`1.0` -> `1`, `1.5` stays `1.5`, so downloads map across sources); only parts of one upload that share a number (same scanlator) get `number~hash`, other scanlators' versions of a chapter share the plain key. **HLS resume**: finished segments are skipped, a partial one continues with `Range`, progress starts at the number already on disk (`downloadHls` takes `getText` / `getFile` hooks for tests). **Archives** (`Archives.dart`): `.cbz` / `.zip` and `.epub` files found in a title folder are adopted as chapter tasks (`DownloadScanner._reading`; `Chapter 12.cbz`, `Vol 3.epub` are numbered by `episodeNumberOf`), a cbz is unpacked once into `.archives/<name>/` (`extractComic`) and read through `localPages`, an epub is flattened to one HTML document with its images extracted (`epubToHtml`, cached as `book.html`) and read through `localNovel`; folders without `media.json` become `local` tasks (service id `local`, progress saving switched off for them). **Torrents**: for a multi-file torrent the picker shows `TorrentFileSheet` (auto-match or choose a file, `task.torrentFile`), and while downloading the row shows seeds / peers from `torrentInfo` (`task.swarm`). Not built: iOS background transfers (downloads run while the app is open), per-title stream profile memory.

**Offline mode** (`Core/Offline/`): `NetStatus` probes DNS every 15 s; `OfflineMode` (`offlineModePref`: auto / off / always) decides at launch only — a connection lost mid-session never flips the mode, it just shows a snackbar (and one when it returns); an *auto* start without a connection ends by itself when it returns. Offline, `DetailState.load` paints the downloaded snapshot (`defaultDetailWidgets`), `WatchState._startOffline` lists the snapshot's episodes (also the fallback when the online load fails), a non-downloaded unit says it is not available offline, and Home and every browse tab switch to `OfflineFeed` (a grid of the service's downloaded titles, opening the snapshot detail page) with an Offline chip that opens the Downloads page; changing the mode shows a snackbar. `MediaService.getMutations` returns `OfflineMutations` for logged-in services: offline (or no connection) an edit / delete / progress is stored by `PendingWrites` (one entry per service + media, coalesced, persisted under `pendingWrites`) and shown through `PendingWrites.overlay` (applied in `DetailState.load`); `replay()` sends them in order through `apiMutations` when the connection returns, offline mode is switched off, or from the Downloads / Settings card; progress writes are dropped if the service is already at or past that value (the "saved offline" notice for automatic progress shows at most every 5 minutes); a Resume-shelf entry whose unit is downloaded opens without its source, so reading / watching history keeps working offline and is replayed when the connection returns.

**Bridge side** (`../DartotsuExtensionBridge`): `FfmpegAddon` (`Engines/Ffmpeg/`, registered in `AddonManager`; a ~4 MB remux-only build (no encoders, filters or network) produced once by `scripts/build_ffmpeg.sh` / the manual `ffmpeg.yml` workflow (artifacts only, no release, so it can't be mistaken for the app's latest release) and committed in the bridge repo's `ffmpeg/` folder; the addon downloads the raw binary from `raw.githubusercontent.com/.../master/ffmpeg/` for Linux / Windows / macOS / Android arm64, no archive; if there is no file for the platform (or the binary will not run) it falls back to the full BtbN / evermeet build; `run`, `remuxPlaylist`, `FfmpegCancel`; unsupported on iOS) and the `TorrServerAddon` download methods (`addForDownload`, `fileUrl`, `torrentInfo`, `pickFile`, `release`).

### Extension tester (`Screen/Extension/Data/SourceTester.dart`, `Screen/Extension/ExtensionTest*`)

The test icon in the Extension page's app bar opens `ExtensionTestScreen`: pick anime / manga / novel, a search term, and *Run* tests the installed sources of that type in the Extension page's own order and language filter (`watchSources`), 10 at a time in parallel (Stop at any time, per-source re-run). `SourceTester.run` walks the same calls the app makes: `search` (needs results with urls), `getDetail` on the first hit, the episode / chapter list (`getDetail().episodes`, entries need urls), then `getVideoList` / `getPageList` / `getNovelContent` for the first entry, and for anime / manga it probes the first link with a ranged GET (HTTP status, TLS, timeout). Each step has a 30 s timeout (60 s for the streams / pages step) and records time, a note and the error with the first stack lines; a failed step skips the ones after it. A failing source opens expanded with the error. The app bar has two copy buttons: the failures report plus the failure-looking log lines captured during the run (`Logger.beginCapture` taps every `logger()` message, including `[Bridge LOGS]`; `failureLogs` keeps errors, `×` requests, 4xx/5xx, timeouts, Cloudflare/FlareSolverr and their stack traces), and the full report with every captured log line.

### Feature screens

Entry flow: `OnboardingScreen` (welcome / theme / sync) → `LoginScreen` (drives
`service.auth`; "continue as guest" or OAuth/token) → sets `PrefName.hasCompletedOnboarding`
→ `MainScreen`.

- **`Screen/MainScreen.dart`** — **dynamic tab shell**. `Screen/Feed/FeedTabs.dart`
  `feedTabsFor(service)` builds the tabs from `service.feedTypes` (`List<MediaType>` —
  anime/manga/novel/movie/series) split around a centred Home
  (`[anime] Home [manga]`, `Home [novel]` for one, `[Home]` for none); `homeTabIndex` is the
  default. `IndexedStack` keyed by `serviceId-i`, lazy-built; `FloatingBottomNavBar` is handed
  the `NavItem`s (per-type icon from `FeedTab.icon`) — a service switch resets tab + `_built`.
- **`Screen/Home/HomeFeed.dart`** — Home tab: `HomeHeader` + `HomeScreenView.sections()`, no
  carousel (it's the dashboard). **`Screen/Feed/BrowseFeed.dart`** — one browse tab per
  `MediaType`: a `StackedCarousel` spotlight (`spotlight: 'Trending Now'`) + `FeedHeader` +
  `FeedScreenView.userLists(type)` merged above `browse(type)`, `onSectionLoadMore` →
  `loadMore(type, …)`. Both → `MediaSectionsScreen`, `cacheId`
  `'<service.id>/<type.name|home>'`, `reloadOn` `service.auth?.user.stream`.
- **`Screen/Feed/FeedNavigation.dart`** — `openDetail` / `openSearch(type:)` /
  `openNotifications` free functions (take a `MediaService`, push the shared screen or
  `NotImplemented`). `FeedHeader` = the browse-tab title bar.
- **`Screen/Feed/MediaSectionsScreen.dart`** — shared feed list widget:
  (pull-to-refresh `MediaSection` list from a
  `SectionsLoader = Future<Map<String,List<Media>>> Function()` + optional `reloadOn` stream;
  with `cacheId:` it paints the last result from disk on frame 1 via
  `Core/Services/SectionCache.dart` — sync read — then revalidates **once on mount** and
  patches sections key-by-key without a full reload. Kept alive; it does **not** refetch on
  route re-entry — a refresh comes only from `reloadOn`, pull-to-refresh, or a
  `RefreshController` signal under its `cacheId` (mutations fire this). `onSectionLoadMore`
  gives each rail per-section pagination — an overscroll fetches page N of that section via
  `FeedScreenView.loadMore(title, page)`. `spotlight:` renders one section as a
  `StackedCarousel` above the rails and drops it from the list.) and `ListEditorSheet`.
- **`Widgets/Shelf/StackedCarousel.dart`** — the spotlight carousel: centre card in front,
  neighbours fanned behind like a deck (`PageView` + per-page `Transform`), auto-advances +
  loops, a drag pauses it. Cards `Hero` into the detail cover. Used by `HomeFeed` /
  `BrowseFeed` via `MediaSectionsScreen.spotlight`.
- **Feature screen folders** — each screen owns its top-level components in a `Components/`
  subfolder (nothing dangling at file scope):
  - `Screen/Detail/DetailScreen.dart` (`extends BaseScreen`, `DetailScreenView` +
    `Mutations?`; pull-to-refresh; **`_hero`** = main-style fixed top — banner behind (skipped
    in glass, where the blurred bg *is* the banner), circular back/share/menu, cover
    (`Hero`, tag from `openDetail(heroTag:)`) + title + status overlapping the banner bottom;
    then stat strip, synopsis, genres, character & staff `PeopleShelf`s, relation/rec
    `MediaSection`s, FAB → `ListEditorSheet`) + `Components/{MetaPill,StatTile,InfoRow,
    ExpandableText}.dart`.
  - `Screen/Home/HomeHeader.dart` (greeting + avatar + bell + search)
    + `Components/{HeaderAvatar,BellButton,HeaderStatPill,AccountSheet}.dart`.
  - `Screen/Search/SearchScreen.dart` — one live `SearchResults`; term OR any filter drives
    it (doubles as a browser); removable active-filter chips; `Components/SearchFilterSheet`
    is a bottom sheet built entirely from `SearchScreenView.filters(anime:)` →
    `SearchFilterSpec` (sort / format / status / source / country / season / year / genres /
    tags vocab — service-defined, `SearchFilterSpec.none` hides the tune button).
  - `Screen/Notifications/NotificationsScreen.dart` (grouped, `_row` builder).
- **`Screen/Settings/`** — data-driven, `main`-style. `Model/Setting.dart` (`SettingType`
  header/normal/switchType/slider/inputBox/custom) → `Widgets/Settings/SettingsGroup` (one
  card per `Setting`) + `SettingItem` renderers. `SettingsCategories.dart` holds a
  `SettingsCategory` registry + a `List<Setting>` builder per category; `SettingsScreen` is
  the category menu, each row opens `SettingsCategoryScreen`. `Widgets/Settings/SettingsListView`
  (shared) = a search field over `SettingsGroup` — the top screen searches every category at
  once (flat, headered), a sub-screen just its own.

### Social (profiles, activity, stories)

`MediaService.socialView` (`SocialScreenView`, data-only, in `ServiceScreens.dart`; models in
`Core/Services/Model/Social.dart`) serves user profiles, favourites, follows, activity feeds,
replies, likes, posting, stats and stories; `AnilistSocialView` implements it over
`AnilistQueries`/`AnilistMutations` (`Queries/GetSocialData.dart`, `Mutations/Social.dart`,
`Data/Social.dart`). UI lives in `Screen/Social/`: `ProfileScreen` (loads through `SocialScreenView.profileBundle` — one stacked AniList request or split ones per the Query size setting; avatar `Hero` via `heroTag`; collapsing header + Profile /
Feed / Stats tabs), `ActivityFeedScreen`, `FollowScreen`, `Components/` (`ActivityCard`,
`ActivityList`, `ActivityComposer`, `RepliesSheet`, `UserListSheet`) and `Stories/`
(`StoriesRow` on Home, `StoryViewer`, `StorySeen`). Navigate with `SocialNavigation.dart`
(`openProfile(heroTag:)`, `openFollows`, `openActivityFeed`, `openAppLink`). People cards (contributors, followers, search) are `Widgets/Components/ProfileCard`; avatars are `Widgets/Components/UserAvatar` (optional `heroTag`). Studios are the third
`EntityKind` next to character and staff. `SocialScreenView.cachedProfile` paints a reopened profile
from the disk cache; `activityAlerts()` feeds `Core/Services/ActivityAlerts` (opt-in polling → local
notifications); `InboxScreen` lists received / sent messages (`ActivityScope.inbox` / `sent`).
Incognito (`Core/Preferences/Incognito.dart`: `isIncognito`, `incognitoBlocksEdits`) is checked at every
implicit save (progress, continue order, seen stories, Rich Presence, optionally list edits); new
history-style writes must check it too.

### Models

Two model areas, both `@JsonSerializable` with committed generated code:

- **`Core/Services/Model/`** — the domain model: `Media`, `Anime`, `Manga`, `Character`,
  `Author`, `Studio`, `Review`, `User`, `Date`. Generated files in
  `Core/Services/Model/Generated/*.g.dart` — **build_runner writes `Model/*.g.dart` adjacent;
  they're then moved into `Generated/` and both `part` directives fixed** (see `git log`
  `5f039d1`). `Media` is the central type (mirrors `main`'s `DataClass/Media.dart`); detail-only
  fields (`characters`, `relations`, `review`, `users`, `sourceData`, …) are
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
  `pref.value`; bind `pref.rx` for a **shared** auto-persisting `Live<T>` (every caller of
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
- The only Isar collection is `KeyValue` (`Core/Preferences/IsarDataClasses/KeyValue/`, committed
  `*.g.dart`); structured values are stored as maps through `setCustomType`.
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
are rhttp interceptors; the in-app browser (`Screen/Webview/WebView.dart`) is `webview_all` (webview_flutter API; WebKitGTK 4.1 on Linux, WebView2 on Windows) — it can't intercept requests, so page traffic no longer goes through `NetworkManager`; cookies are mirrored with `CookieManager.readCookiesFromWebView` / `applyCookiesToWebView` (name/value/domain/path only, per-domain delete = clear all + re-apply the store); `NetworkBridge.dart` / `AppBridgeNetwork` adapt cookies for the bridge.

### Extension system — `dartotsu_extension_bridge`

Consumed as a **local path dep**: `path: ../DartotsuExtensionBridge` (sibling worktree). Unifies
multiple extension backends (Mangayomi, Aniyomi, Sora, CloudStream, Tsundoku, iReader) behind one
interface. `DartotsuExtensionBridge.init(...)` in `main.dart` gets `StorageManager.getDirectory`,
the Isar instance, `client.compatibleClient`, and `AppBridgeNetwork`. Extension-manager UI is
**`lib/Screen/Extension/`** (`ExtensionScreen` ~860 lines, `ExtensionList`). `add-repo` deep
links are handled in `Utils/Functions/DeepLink.dart` via `find<ExtensionManager>().managers`.

### Analytics / crash reporting — Firebase

**`Core/Analytics/AnalyticsManager.dart`** (`AppController`, eager). `onInit` fires
`Firebase.initializeApp` + `FirebaseCrashlytics.setCrashlyticsCollectionEnabled(!kDebugMode)`,
guarded by a `Completer` so `recordError` awaits init and silently no-ops if Firebase failed.
`Core/Analytics/FirebaseOptions.dart` is the generated `flutterfire` config. `firebase_analytics`
is a dependency but not yet used. (`main` has no Firebase — it does manual crash logging.)

### Discord Rich Presence — `Api/Discord/`

`DiscordPresence` is the immutable data class (browsing / viewing / consuming factories; `live` presences
carry timestamps that shift after a pause). `BaseDiscordRPC` is just `show(presence)` / `clear()`
(`DesktopRPC` over IPC with lazy reconnect, `MobileRPC` over the headless-sessions API with the user's
Discord token). `DiscordPresenceController` (lazyPut, `start()` in `_postInit`) owns the presence stack,
debounces updates, clears on app background / `hold()` and re-shows on resume / `release()`, and goes quiet
for the `discordRpc` pref, `discordBrowsing` pref and incognito. A `BaseScreen` publishes what it is doing by overriding
`DiscordPresence? get presence` (call `refreshPresence()` when it depends on changing state); other widgets can
use `PresenceScope(presence:, child:)` directly (top of the stack wins); the player/reader should push
`DiscordPresence.consuming(...)` and call `hold()` / `release()` on pause / resume. Settings live in
Account › Discord Rich Presence sub-screen (`Screen/Settings/Categories/DiscordSettings.dart`: enable, browsing activity, activity type, covers, timer, buttons, hide titles, mobile token; the look prefs are applied by `DiscordPresence.styled`).

### Notifications — `NotificationManager`

**`Core/NotificationManager/NotificationManager.dart`** (`AppController`, `permanent`,
`.initialize()` from `DI.init`) — deliberately small: `initialize`, `requestPermission`,
`show(title, body, {id, payload})`, `cancel`, `cancelAll` and a `tapped` payload observable over
`flutter_local_notifications`. Its only caller is `Core/Services/ActivityAlerts` (unread AniList
notifications → system notifications). Add helpers only when a feature needs them.

### Deep links

**Service logins** (`Core/Services/Api/BrowserAuth.dart`: `authRedirect(name)` + `browserAuthenticate(url:, redirect:)`) open the user's real browser. On Linux/Windows the redirect is `http://localhost:43721/<service>` (`kAuthPort`) and a one-shot loopback `HttpServer` catches it — custom schemes are unreliable on desktop; an implicit-grant fragment (`#access_token=…`) is forwarded to the query by a tiny page, since fragments never reach a server — then the window is raised. Android/iOS/macOS keep `FlutterWebAuth2`'s native browser session with `dartotsu://<service>`. Services call `authRedirect('anilist' | 'mal' | 'simkl')` and send the result as `redirect_uri` (login and token exchange alike); each service has two API registrations, like Mangayomi's trackers: a mobile client id whose redirect is `dartotsu://<service>` and a desktop client id whose redirect is `http://localhost:43721/<service>`; `authClientId(mobile:, desktop:)` picks by platform (empty desktop id falls back to the mobile one), the per-service constants are `_mobileClientId` / `_desktopClientId` (`malClientId` in `MyAnimeList/Client.dart`).

`Utils/Functions/DeepLink.dart` receives every incoming URI (app_links; Android intent filters, iOS/macOS `CFBundleURLTypes`, Windows registry via `registerProtocolHandler`, Linux `x-scheme-handler` in the installer's `.desktop`) and hands it to the first matching `DeepLinkHandler` in `DeepLink.handlers` (`DeepLinkHandlers.dart`): `ExtensionRepoLinks` (`<scheme>://add-repo`) and `ServiceLinks`. A service claims links by overriding `MediaService.linkHosts` (web hosts, e.g. `anilist.co`), `linkSchemes` (own custom schemes) and, if its URLs aren't `/<kind>/<value>`, `parseUri(Uri)`; `dartotsu://<serviceId>/<kind>/<value>` always reaches that service. New features add their own handler with `DeepLink.register(...)`; the future player sets `DeepLink.playFiles` (files opened with the app, `dartotsu://play`-style handlers). Register a new scheme in `AndroidManifest.xml`, both `Info.plist`s and `scripts/install.sh`; Windows registers `appSchemes`, bridge schemes and service `linkSchemes` at startup.

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
  (`AppLocalizations.of(appContext!)!`). Use `getString.someKey`, never hard-coded strings.
  `languageSwitcher(context)` widget + `Core/ThemeManager/language.dart` for name↔code mapping.
- The active locale lives in **`Core/ThemeManager/LocaleController.dart`**
  (`PrefName.appLocale.rx`); `setLocale` persists.

### UI building blocks (`lib/Widgets/`, `lib/Utils/`)

- **`Widgets/Components/SectionCard.dart`** — **the** wrapper behind every block of content
  (synopsis, detail tables, settings rows, rails, empty states). `SectionCard({title?,
  trailing?, child, padding?, margin?})` — glass/M3 surface via `ThemedContainer`, padding +
  radius from `Dimens`, optional consistent header. `SectionHeader` = the standalone title
  (used by rails where the card *is* the row). **Use this, not a bare `Container`/`ThemedContainer`,
  for anything with text behind it.**
- **`Widgets/Shelf/PosterCard.dart`** — **the** item for every horizontal shelf: media,
  character, staff, search-grid results. Renders whatever the current **`CardStyle`**
  (`Model/CardStyle.dart`, Flutter-free) says: `CardMode` `normal` (bare poster, loose title
  below) / `onCard` (everything overlaid over a scrim) / `inCard` (poster wrapped in a rounded
  card that extends below it for the title); `CardSize` `small`/`medium`/`large`/`custom`
  (+ `customScale`); `compact` (cover + title only — hides all overlays); `aspect`, `radius`,
  `titleLines`; progress green `pill` / thin `bar` / off; score-badge corner; info line;
  airing dot. `score`/`airing` are plain params. Style comes from
  `CardStyleController.current` (DI, caches the decoded pref in a `Live`) unless a `style:`
  override is passed — `PosterCard` / `MediaSection` / `PeopleShelf` read it **inside a
  `Watch`**, so a change on the Card-style screen updates every feed live. Character/staff use
  the same style with only the `people` preset flag forced (`copyWith(preset: 'people')` —
  keeps the role line + its caption height). Presets Poster (default) / Card / Cozy /
  Compact + Custom, edited in **Settings › Appearance › Card style**
  (`Screen/Settings/CardStyleScreen.dart` — live preview + live feed). `CardStyleMetrics`
  (`Utils/Extensions/`) derives `itemWidth`/`itemHeight` from `Dimens.cardW`; `MediaSection` /
  `PeopleShelf` / search grid size off it.
- **`Widgets/Components/ColorPickerView.dart`** — the app's own colour picker (saturation/value square, hue bar, hex field, swatches); `showColorPickerDialog` wraps it. `flex_color_picker` is no longer a dependency.
- **`Widgets/Components/AppControls.dart`** — the shared form controls, **use these not the
  bare Material widgets**: `AppSegmented<T>` (+ `AppSegment<T>`), `LabeledSlider`,
  `AppChoiceChips<T>`, `LabeledField` (label above a child). Used by the card-style screen,
  search Anime/Manga toggle, settings theme-mode, list editor.
- **`Widgets/Components/AniHtml.dart`** — **the** renderer for any AniList-style rich text
  (bios, activities, replies, character/staff/media descriptions, story text). Feed it the
  service's *HTML* (`about(asHtml: true)`, aliased `html:` next to the raw markdown that edits
  need). Handles images (px / % widths), links, spoilers (inline + block), headings, lists, code,
  quotes, `<center>`, YouTube/video tiles, media-link cards (`aniLinkCards(service)`) and a
  built-in "Read more" via `collapsedHeight`. `MarkupText` stays only for raw markdown (composer
  preview, services without HTML).
- **`Widgets/Charts/`** — `DonutChart`, `ColumnChart`, `LineChart`, `RadarChart`, `ActivityHeatmap`
  (custom-painted, animated, hover/tap tooltips); used by the profile Stats tab.
- **`Widgets/Shelf/ShelfFrame.dart`** — the panel + title row every horizontal shelf sits
  in (trending media, the viewer's lists, characters, staff, relations, recommendations). One
  chrome so a feed / detail page reads as a single stack. `MediaSection` and `PeopleShelf`
  both route through it.
- **`Widgets/Shelf/PeopleShelf.dart`** — `PeopleShelf({title, people: List<ShelfPerson>})`
  = `ShelfFrame` + a horizontal list of `PosterCard`s pinned to `CardStyle.people`.
  Characters & staff on the detail page — same card, same frame as media shelves.
- `Widgets/Components/` — `ThemedContainer` / `ThemedWidget` / `themeDropdown`
  (`ThemedContainer.dart`) — low-level glass/M3 surface, prefer `SectionCard` over it,
  `BaseScreen` + `GlassBackground`, `CustomBottomDialog` + `showCustomBottomDialog`,
  `AlertDialogBuilder`, `AppDropdown` (owns its trailing `FocusNode`), `CachedNetworkImage`
  wrapper (`cachedNetworkImage(...)`), `loadSvg(...)`, `ScrollConfig` / `CustomScrollConfig`
  (bouncing physics, no scrollbars; only touch drags — mouse/trackpad use the wheel, so a slightly-moved click never loses to the scroller), `AppButton` (→ `FilledButton`),
  `NotImplemented`.
- `Widgets/Shelf/` — `MediaSection` (horizontal media shelf in
  a `ShelfFrame` with skeleton loading — `MediaSectionData.loading()` → `Skeletonizer` — and
  overscroll-to-load-more + haptics; every titled shelf gets a → arrow (and a tappable title) that opens `Screen/Feed/ShelfScreen` — a full-page `PosterCard` grid that keeps paging through the section's `onLoadMore` as you scroll; opt out with `MediaSectionData(fullPage: false)`). `PosterCard` items in a `SuperSliverList`, keyed by
  `media.id` (+ `findChildIndexCallback`) so a cache patch touches only what changed.
- `Utils/Animation/WidgetAnimations.dart` — `extension WidgetAnimations on Widget` built on
  `flutter_animate`: `animateFadeUp`, `animateStagger(index)`, `animateFadeIn`, `animateDropIn`, `animatePageTransition`, `animateNav*`,
  etc., plus `AppSwitcher` / `AppSize` and `animDuration(ms)` / `animDelay(d)` for raw `Animated*` widgets, tab controllers, sheets and routes. Global `kAnimationSpeed` (`<= 0` disables); every animation in the app scales with it. Recent commits are heavy on animation polish.
- `Utils/Functions/NavigateToScreen.dart` — `navigateToPage(context, widget)` uses a
  `PageRouteBuilder` with `animatePageTransition`.
- `Utils/Functions/SnackBar.dart` — `snackString(msg, {clipboard, icon, simple, child})`.
  **Overlay-based** (not GetX/Scaffold snackbars) so it renders above bottom sheets; single
  `_snackOverlay` entry, auto-dismiss after 4 s.
- `Utils/Extensions/` — `ContextExtensions` (`isPhone` = shortestSide < 700, `textTheme`,
  `colorScheme`, …), `IntExtensions`, `NumExtensions` (`580.ms`), `StringExtensions`,
  `Responsive.dart` — `screenType` (mobile `<600` / tablet `<1100` / desktop, fed from
  `MediaQuery` by the app builder in `main.dart`), `isMobile/isTablet/isDesktop`,
  `responsive<T>(mobile:, tablet:, desktop:)`, and **`Dimens`** — the single spacing / radius /
  rail-size scale (`gapXs…gapXl`, `pagePad`, `cardPad`, `radius*`, `railItemW/railImageH/
  railItemH/railGap`, `detailPoster*`), all layout-class aware. **Use `Dimens.*` for padding /
  gaps / card sizes, not raw pixel constants.**
- Memory: `main.dart` caps Flutter's `ImageCache` (96 MB mobile / 192 MB desktop, 400 images); `cachedNetworkImage` decodes at `width × devicePixelRatio` (1440 px max when unsized, width only so aspect is kept); `DetailCache` and the `AniMediaCard` cache are `Utils/Lru` maps.
- `Utils/Function.dart` — `openLinkInBrowser`, `shareLink`, `shareFile`, `loadEnv`, Kotlin-std
  `let`/`also` extensions.

## Conventions / gotchas

- **Reuse shared UI** — `CONSISTENCY.md` lists the shared app bar / tabs / empty state / sheet
  components and rules; read it before building any screen chrome.
- **Directory casing**: top-level `lib/` folders are PascalCase (`Core`, `Api`, `Screen`,
  `Model`, `Utils`, `Widgets`). `file_names` / `non_constant_identifier_names` lints are off
  (`analysis_options.yaml`) — match the PascalCase file/identifier style. `camel_case_types`,
  `constant_identifier_names`, `deprecated_member_use`, `library_prefixes` are downgraded to
  `ignore` (the app rides bleeding-edge/forked packages). `prefer_relative_imports: true` and
  `unawaited_futures: true` are enforced — use relative imports within `lib/`.
- Never import `package:get` outside `Core/State` (only `GetBridge.dart` may); no `setState`. Resolve controllers with the `find<T>()` / `put<T>()` helpers. Add
  new long-lived controllers to `DI.init()`.
- Screens: extend `BaseScreen<T>` and implement `buildContent`, don't override `build`. **Every screen is two files**: `FooScreen.dart` (widget + a thin `State` that only builds) and `FooState.dart` (`class FooState extends ScreenState` from `Widgets/Components/ScreenState.dart`: the `Live` fields, controllers, timers, loading/paging/mutation logic and anything derived). The UI `State` mixes in `ScreenStateHost<FooScreen, FooState>`, implements `FooState buildState()` (pass the widget's params in) and reads everything through `state.x`; the mixin calls `onInit` / `onClose` and gives the state `context`, `mounted`, `vsync` (when the UI State has a ticker mixin) and `pop()`. Keep widgets, `Watch` builders and navigation targets in the UI file; keep anything that could be unit-tested in the state. Small leaf widgets (cards, tiles, charts) don't need one.
- Always run `build_runner` after model/Isar changes; commit the regenerated `*.g.dart`.
  There is no `build.yaml`.
- New user-facing strings → `app_en.arb` (+ `flutter gen-l10n`); use `getString.key` (never `const` around it; parameters get ICU placeholders, counts use `plural`). Section titles that double as identifiers (`'Trending Now'`, `'Continue Watching'`, …) stay English in the data layer and are translated at render time by `sectionLabel()` (`Core/Services/SectionTitles.dart`) — add a key + a case there for a new title. Locale files other than `app_en.arb` fall back to English for keys they lack.
- `media_kit` (3 packages) and `flutter_discord_rpc_fork` are git deps; `flutter_web_auth_2`
  is a personal fork. `dependency_overrides` only pins `collection`. Treat `pubspec.yaml`
  changes as high-risk.
- Tests: `flutter test` runs `test/core_state_test.dart` (the `Core/State` engine); there is no UI test suite.

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
| State mgmt | Provider + GetX | own `Live` / `Watch` engine + locator in `Core/State`, `lib/DI.dart` registrations |
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
| version | `1.0.0` | `1.0.1`+, Flutter `>=3.44.0` (`version:` in `pubspec.yaml` is the only place) |

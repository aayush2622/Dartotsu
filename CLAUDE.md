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

Early stage. ~155 Dart files vs `main`'s ~350. Infrastructure (DI, prefs, theme, network,
notifications, analytics, logger, extension screen, updater, webview, deep links, i18n) is
ported and working — the foundation layers (Preferences, Theme, DI, networking) had a
correctness/consistency pass on 2026-09-01 (`flutter analyze` clean, `flutter build linux` +
`flutter run -d linux` verified). **Feature screens are mostly stubs** — `MainScreen` renders a
placeholder body, there is no real Home/Anime/Manga/Detail/Player/Reader/Search/Settings UI
yet, and only two `MediaService`s exist as id/name/icon shells (`AnilistService`,
`ExtensionService`) with no API layer wired in. The worktree usually carries large
**uncommitted WIP ahead of the committed branch** — run `git status` before reasoning about
current state.

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
installs a `Listener` for the mouse back-button and a `Focus` node feeding `appShortcuts`, and
wraps with `Dpad.wrap` for TV/remote navigation. `home:` is gated on
`PrefName.hasCompletedOnboarding`.

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
| `RefreshController` | `lazyPut` | pub/sub refresh flags; `RefreshManager<T>` state mixin re-runs `onRefresh` on route re-entry |
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
- **`Core/ThemeManager/ThemeManager.dart`** — pure builders: `buildAppTheme(base, {isOled})`
  applies the (colour-independent, built-once) Poppins `TextTheme`, switch theme, OLED
  overrides and predictive-back transitions. `deriveCardColor`. Barrel-exports `AppTheme`,
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

- **`Core/Services/MediaService.dart`** — `abstract class MediaService { String get id;
  String get name; String get iconPath; }` (much thinner than `main`'s — no `BaseServiceData`,
  no `Base*Screen` delegates yet). `id` is the stable persistence key (`'anilist'`,
  `'extension'`); `name` is display-only. Barrel-exports `Features/NavbarProvider.dart`.
- **`Core/Services/MediaServiceController.dart`** — GetxController holding `services`
  (`RxList<MediaService>`) and `currentService` (`Rx<MediaService>`). `onInit`:
  `services.assignAll([AnilistService(), ExtensionService()])`, restores last choice from
  `PrefName.service.value` (by `id`). `switchService(id)` persists. `get<T>()` /
  `getAnyValue<T>(selector)` for cross-service lookups.
- **`Core/Services/Features/NavbarProvider.dart`** — optional `abstract interface class
  NavBarProvider { List<NavItem> get navBarItems; }`. A service *may* implement it to customise
  the nav bar (`AnilistService` does); otherwise `FloatingBottomNavBar` falls back to the
  default Anime/Home/Manga items.
- **`Core/Services/ServiceSwitcher.dart`** — `serviceSwitcher(context)` shows the picker
  bottom sheet (`CustomBottomDialog`).
- **`Core/Services/Api/Queries.dart` + `Mutations.dart`** — `abstract class Queries` /
  `Mutations` describing the per-service API surface (`getMedia`, `initHomePage`,
  `getMediaLists`, `search`, …). No concrete implementation exists on this branch yet.

Per-service code goes under **`lib/Api/Services/<Service>/`** (note: `Api/Services/`, not
`main`'s `Api/<Service>/`).

### Models

Two model areas, both `@JsonSerializable` with committed generated code:

- **`Core/Services/Model/`** — the domain model: `Media`, `Anime`, `Manga`, `Character`,
  `Author`, `Studio`, `Review`, `User`, `Date`. Generated files in
  `Core/Services/Model/Generated/*.g.dart`. `Media` is the central type (mirrors `main`'s
  `DataClass/Media.dart`) and has `Media.skeleton()` for skeleton loaders + `extension M on
  Pages` to convert extension-bridge results.
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
  skeleton loading and overscroll-to-load-more + haptics). The main reusable content widget.
- `Utils/Animation/WidgetAnimations.dart` — `extension WidgetAnimations on Widget` built on
  `flutter_animate`: `animateFadeUp`, `animateDropIn`, `animatePageTransition`, `animateNav*`,
  etc. Global `kAnimationSpeed` (`<= 0` disables). Recent commits are heavy on animation polish.
- `Utils/Functions/NavigateToScreen.dart` — `navigateToPage(context, widget)` uses a
  `PageRouteBuilder` with `animatePageTransition`.
- `Utils/Functions/SnackBar.dart` — `snackString(msg, {clipboard, icon, simple, child})`.
  **Overlay-based** (not GetX/Scaffold snackbars) so it renders above bottom sheets; single
  `_snackOverlay` entry, auto-dismiss after 4 s.
- `Utils/Extensions/` — `ContextExtensions` (`isPhone` = shortestSide < 700, `textTheme`,
  `colorScheme`, …), `IntExtensions`, `NumExtensions` (`580.ms`), `StringExtensions`.
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
| `MediaService` | `BaseServiceData` + `Base*Screen` delegates + `TypeFactory` | thin `id`/`name`/`iconPath`, optional `NavBarProvider`, `Api/Queries`+`Mutations` interfaces |
| ext bridge | git dep | `path: ../DartotsuExtensionBridge` |
| HTTP | `rhttp` + `http` | `rhttp` only |
| Screen base | ad-hoc | `BaseScreen<T>` |
| `.env` | `SIMKL_SECRET` | `hash` |
| version | `1.0.0` | `0.0.x`, Flutter `>=3.44.0` |

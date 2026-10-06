# Main-branch parity

What `main` has that `rewrite-re` does not yet. Compared by file tree, pref names, settings screens and
spot-checked features. Update the status column as items land.

Rule for everything below: nothing is hard-coded to a service or extension manager. Screens read data
from the service views (`ServiceScreens.dart`) and the extension bridge, with empty/`null` defaults, so
switching services or extension managers never errors.

## 1. Small UI gaps (batch 1)

| Item | Status |
|---|---|
| Scroll-to-top button on Anime / Manga / Home feeds (`ScreenWidgetList`) (main: `buildScrollToTopButton`) | done |
| Trending season chips (This / Next / Previous season) above the anime carousel, driven by `FeedScreenView.chips` / `chipMedia` | done |
| Service switcher and settings icon in the feed header (main: `ServiceSwitcherBar`) | done |
| Trailer button on the detail page | done (menu entry "trailer" in `DetailHeader`) |
| Share / open the log file from About settings | done |
| Per-source extension settings page (main: `SourcePreferenceScreen`), in the shared settings UI | done |
| Genres card and Top-score card (main: tap handler empty for Genres; Calendar card needs the Calendar page) | blocked on pages below |

## 2. Pages not built

- Calendar screen (query exists: `GetCalendarData`).
- Character page and Staff page: done (`Screen/Entity`, service-driven via `EntityScreenView`; AniList implements it). Tapping character/staff cards on the detail page and in search opens them.
- Studio page: done (`EntityKind.studio`, service-driven like character and staff; reachable from search, the detail page's studio chip and favourites).
- User profile: done. `Screen/Social/ProfileScreen` (Profile / Feed / Stats tabs, follow, followers and following, anime and manga lists of that user, favourites), activity feed (following and global, filter, post, edit, delete, likes, replies, subscribe), markdown composer and stories (home row, viewer with seen state). All of it reads `MediaService.socialView` (`SocialScreenView`), so another service only has to implement that view.

## 3. Watching and reading (largest chunk)

- Anime player (media_kit): MPV config, subtitle styling, speed, resize mode, skip button, brightness and
  volume gestures, libass, GPU-next, thumbless seek bar, cursed speed, auto-play next.
- Manga reader and novel reader (direction, layout, spaced pages, hide page number, hide scrollbar).
- Detail Watch / Read tabs: episode and chapter lists, source selector, wrong-title fix, continue card.
- Episode metadata: Aniskip, Anify, Jikan, Kitsu, ID mapping.
- Offline downloads (`Downloader/`).
- Chapter filters for extension sources (`ListTileChapterFilter`).
- Settings screens: Player, Reader, per-anime player settings, automatic source selection.

## Library import and export

Done: Settings › Extensions › Lists imports Aniyomi, Mihon / Tachiyomi (`.tachibk`) and Kotatsu (`.zip`)
backups into the local lists, and exports the local lists back out (`Core/Backup/ExternalLists`, hand-written
protobuf codec, no generated code). Categories become the list status (Watching / Plan / Completed ...);
sources are not mapped, so imported titles carry no extension source until they are opened through search.

## 4. Other services

- MyAnimeList, Simkl, MangaBaka, Kitsu: login, home, anime and manga screens, list editors.
- Discord login (only presence exists).
- Per-service home layout sheets for MAL and Simkl (AniList has one).

## 5. Behaviour to verify in main before porting

- Incognito and Offline mode: stored as prefs here, nothing reads them. Check whether main actually uses
  them.
- Comments tab on the detail page: probably a stub in main.
- Feed filter prefs `adultOnly`, `includeAnimeList`, `includeMangaList`, `recentlyListOnly`: used by main's
  AniList queries, not exposed as saved prefs here.
- Notification settings row: stub in main, nothing to port.

## Already covered or better here

Settings (account, appearance, general with network and backup, extensions, addons, updates), search with
six types and a filter sheet, list editor with long-press quick edit and skeleton, detail header with glass
mode, Following shelf, section types (carousel / list / banner), home banner header, stat pills opening
lists, extension manager sheet and source browse, follow-cover theme, custom glass background, onboarding,
web view, deep links, updater.

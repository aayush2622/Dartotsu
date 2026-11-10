
### 🎉 New Features
* [4ac32da0](https://github.com/aayush2622/Dartotsu/commit/4ac32da0): feat: editable keyboard shortcuts for the app, player and reader with a settings screen and per group switches
* [51b1a2d7](https://github.com/aayush2622/Dartotsu/commit/51b1a2d7): feat: community lists, disable skips, hoster grouping, Simkl movies & series mode
* [5d387f41](https://github.com/aayush2622/Dartotsu/commit/5d387f41): feat: add Anime-Planet service, private-aware list sync and prequel/sequel cards
* [5a5a3731](https://github.com/aayush2622/Dartotsu/commit/5a5a3731): feat: finished videos move into the chosen folder and play through a file descriptor
* [00421b14](https://github.com/aayush2622/Dartotsu/commit/00421b14): feat: ask for a folder whenever something needs saving and no storage permission or folder is set
* [6ef84d60](https://github.com/aayush2622/Dartotsu/commit/6ef84d60): feat: pick a storage folder with the system picker instead of all-files access, finished downloads, backups and screenshots are copied there; content:// files open
* [3cffd5c7](https://github.com/aayush2622/Dartotsu/commit/3cffd5c7): feat: stream links reach the player, watch and download pickers as providers find them
* [4d6961be](https://github.com/aayush2622/Dartotsu/commit/4d6961be): feat: offline fallback for AniList via static media index CDN (#175)
* [dfd3d7fd](https://github.com/aayush2622/Dartotsu/commit/dfd3d7fd): feat: external players get the stream's subtitles and audio tracks
* [d07d1117](https://github.com/aayush2622/Dartotsu/commit/d07d1117): feat: player keyboard shortcuts follow the mouse, player or page
* [d97fd820](https://github.com/aayush2622/Dartotsu/commit/d97fd820): feat: DASH streams download with quality and audio choice instead of failing as HLS
* [7f6164ed](https://github.com/aayush2622/Dartotsu/commit/7f6164ed): feat: add frostnova721's contributor banner
* [385a8e59](https://github.com/aayush2622/Dartotsu/commit/385a8e59): feat: app version and build in the log header
* [f2811aa5](https://github.com/aayush2622/Dartotsu/commit/f2811aa5): feat: subtitle outline width setting and a live subtitle preview in player settings
* [bf7662af](https://github.com/aayush2622/Dartotsu/commit/bf7662af): feat: option to hide 18+ sources from the extension feeds and source picker
* [47dff820](https://github.com/aayush2622/Dartotsu/commit/47dff820): feat: download several subtitles and audio tracks per episode
* [861ddccb](https://github.com/aayush2622/Dartotsu/commit/861ddccb): feat: select several downloads and delete them together
* [d1b85ee0](https://github.com/aayush2622/Dartotsu/commit/d1b85ee0): feat: ask for the app language in onboarding, preselecting the device language
* [7c3eaa19](https://github.com/aayush2622/Dartotsu/commit/7c3eaa19): feat: not-in-list search filter for AniList and chapter counts on search cards
* [c351332c](https://github.com/aayush2622/Dartotsu/commit/c351332c): feat: placeholder rows for extensions that are still converting
* [800c783a](https://github.com/aayush2622/Dartotsu/commit/800c783a): feat: drag the score badge, airing dot and unread counter onto separate poster corners
* [f8b9a1c7](https://github.com/aayush2622/Dartotsu/commit/f8b9a1c7): feat: Discord settings overhaul with live preview, account sign-in on desktop, status control, text/image/button options and synced token
* [56fe3a94](https://github.com/aayush2622/Dartotsu/commit/56fe3a94): feat: Android 16 Live Update progress notification for downloads
* [3cc17a7f](https://github.com/aayush2622/Dartotsu/commit/3cc17a7f): feat: fade the main screen in on app open
* [857fc05c](https://github.com/aayush2622/Dartotsu/commit/857fc05c): feat: comment cards use the episode entrance animation
* [4703649a](https://github.com/aayush2622/Dartotsu/commit/4703649a): feat: tidier What to sync panel with grouped changed settings, colour swatches and a show-all toggle
* [7b0f037c](https://github.com/aayush2622/Dartotsu/commit/7b0f037c): feat: move gist sync from General to Account settings
* [d0ae4a7b](https://github.com/aayush2622/Dartotsu/commit/d0ae4a7b): feat: resume shelf shows the episode thumbnail, falling back to the cover, with a live player frame on close
* [01b44448](https://github.com/aayush2622/Dartotsu/commit/01b44448): feat: unread counter only on continue shelves, status corner setting and calendar button on every browse tab
* [ccd1bc0f](https://github.com/aayush2622/Dartotsu/commit/ccd1bc0f): feat: UPI pay link on the donate sheet
* [d641ae1c](https://github.com/aayush2622/Dartotsu/commit/d641ae1c): feat: auto subtitle selection with language matching and a visible selection
* [2943f03d](https://github.com/aayush2622/Dartotsu/commit/2943f03d): feat: resume thumbnails fall back to the cover and sync their urls
* [eebdea99](https://github.com/aayush2622/Dartotsu/commit/eebdea99): feat: per-device sync switches for subtitle look, picture colours and theme colours
* [4694b8ff](https://github.com/aayush2622/Dartotsu/commit/4694b8ff): feat: open the site in the web view from failed manga pages and chapters
* [8f81fea2](https://github.com/aayush2622/Dartotsu/commit/8f81fea2): feat: unread counter in the card style and the last retrieved chapter count
* [d268eae3](https://github.com/aayush2622/Dartotsu/commit/d268eae3): feat: add unread/unwatched counter badges and manga release calendar (#173)

### 🛠️ Bug Fixes & Improvements
* [211f4e22](https://github.com/aayush2622/Dartotsu/commit/211f4e22): fix: android compiles notification plugins against sdk 37 and keeps androidx core on 1.18 elsewhere [build.apk]
* [2320a4f5](https://github.com/aayush2622/Dartotsu/commit/2320a4f5): fix: cargokit plugins stay on compile sdk 36 so their build script can read it [build.apk]
* [b73e2139](https://github.com/aayush2622/Dartotsu/commit/b73e2139): fix: android plugins compile against sdk 37 for androidx core 1.19
* [90184d5b](https://github.com/aayush2622/Dartotsu/commit/90184d5b): fix: the lock screen fits landscape and every scroll view uses the shared scroll config
* [f458235c](https://github.com/aayush2622/Dartotsu/commit/f458235c): fix: the scroll to top button hides while idle and glass page transitions are shorter
* [c038c380](https://github.com/aayush2622/Dartotsu/commit/c038c380): fix: blur and page transitions are lighter, the top bar only blurs once collapsed and settings pages skip their entrance animation
* [6dde0fd2](https://github.com/aayush2622/Dartotsu/commit/6dde0fd2): fix: the reply buttons wrap instead of being cut off in deep comment threads
* [af39c564](https://github.com/aayush2622/Dartotsu/commit/af39c564): fix: instant sync only looks up ids a target is missing and logs why a push was skipped
* [dc2adcd0](https://github.com/aayush2622/Dartotsu/commit/dc2adcd0): fix: reader pages blocked by Cloudflare retry after clearing, streams that won't open skip to the next one and the source in use is the only one that opens the challenge page
* [643029e4](https://github.com/aayush2622/Dartotsu/commit/643029e4): fix: the Windows web view keeps keyboard focus, the Anime-Planet read-only note only shows when signed out and Kotatsu repositories can import a jar file
* [c61445d9](https://github.com/aayush2622/Dartotsu/commit/c61445d9): fix: circular clips use the best edge smoothing
* [d3b123e3](https://github.com/aayush2622/Dartotsu/commit/d3b123e3): fix: home stat buttons are smaller and quieter and the banner header leaves less empty space
* [81fda763](https://github.com/aayush2622/Dartotsu/commit/81fda763): fix: detail followers labels are sentence case, empty scores are hidden and TV formats keep their case
* [3a1b906b](https://github.com/aayush2622/Dartotsu/commit/3a1b906b): fix: primary and secondary containers lean toward the theme primary
* [8f3208d4](https://github.com/aayush2622/Dartotsu/commit/8f3208d4): fix: navbar d-pad focus is a pill sized like the selected item
* [6159fc06](https://github.com/aayush2622/Dartotsu/commit/6159fc06): fix: drop colour glows and the hue gradient, lower heavy weights, snap radii to the 4px grid, trim exclamation copy
* [316e0bd6](https://github.com/aayush2622/Dartotsu/commit/316e0bd6): fix: Saikou secondary colours are purple and the selected navbar item follows the theme primary
* [6ce6f8c8](https://github.com/aayush2622/Dartotsu/commit/6ce6f8c8): fix: auto sync runs when the app resumes and instant sync updates the sync plan
* [462c1dfe](https://github.com/aayush2622/Dartotsu/commit/462c1dfe): fix: default audio and subtitle tracks are selected explicitly and shown as active
* [b6087ec2](https://github.com/aayush2622/Dartotsu/commit/b6087ec2): fix: AniList requests queue and retry on rate limits, split mode stacks two rows per request, hidden tabs reload only when shown
* [3579c803](https://github.com/aayush2622/Dartotsu/commit/3579c803): fix: resolve CodeFactor issues and move custom list filters into tabs
* [1399d0fa](https://github.com/aayush2622/Dartotsu/commit/1399d0fa): fix: chosen-folder storage logs every step and falls back to app storage when the folder is unreachable
* [838db4ef](https://github.com/aayush2622/Dartotsu/commit/838db4ef): fix: local files stay out of Resume
* [cefeab3a](https://github.com/aayush2622/Dartotsu/commit/cefeab3a): fix: player falls back to the first sub/audio track, studio and author open from Details, notification toggles refresh, novel images follow the book's sizing, no disk demuxer cache on mobile
* [03aeb4c6](https://github.com/aayush2622/Dartotsu/commit/03aeb4c6): fix: AniList stale-data flag lives on AnilistMedia instead of the shared Media
* [3901c95e](https://github.com/aayush2622/Dartotsu/commit/3901c95e): fix: synopsis divider, manga chapter count, copy on long press for title and synonyms
* [e909a9bb](https://github.com/aayush2622/Dartotsu/commit/e909a9bb): fix: start year filter applies to manga and novel searches
* [9eb07e6d](https://github.com/aayush2622/Dartotsu/commit/9eb07e6d): fix: search filter chips fade at the edge instead of clipping
* [70b07c76](https://github.com/aayush2622/Dartotsu/commit/70b07c76): fix: novel translation no longer throws a RangeError when pages are rebuilt
* [11154c17](https://github.com/aayush2622/Dartotsu/commit/11154c17): fix: sources without a website no longer open or probe a NONE address
* [7efe4707](https://github.com/aayush2622/Dartotsu/commit/7efe4707): fix: a preference write that collides with another Isar write is retried instead of lost
* [83a5a993](https://github.com/aayush2622/Dartotsu/commit/83a5a993): fix: extension feeds never open the Cloudflare challenge page on their own
* [7c5607b2](https://github.com/aayush2622/Dartotsu/commit/7c5607b2): fix: share card shows the app logo and placeholder sources are hidden from the source lists
* [24dfea5a](https://github.com/aayush2622/Dartotsu/commit/24dfea5a): fix: media lists remember their sort order and direction
* [0f756cb6](https://github.com/aayush2622/Dartotsu/commit/0f756cb6): fix: shelves use PosterCard.item and skip the card entrance animation when built mid-scroll
* [33a0ad0d](https://github.com/aayush2622/Dartotsu/commit/33a0ad0d): fix: every media card is built from the same shelf item through PosterCard.item
* [5ca3ab9d](https://github.com/aayush2622/Dartotsu/commit/5ca3ab9d): fix: saved frames, share cards, list exports and backups go to the default storage folder instead of asking for a path
* [731a380c](https://github.com/aayush2622/Dartotsu/commit/731a380c): fix: search cards use the same item mapping as the shelves
* [c7733b15](https://github.com/aayush2622/Dartotsu/commit/c7733b15): fix: selected navbar item follows the theme's primary colour
* [79015c18](https://github.com/aayush2622/Dartotsu/commit/79015c18): fix: build the home feed a screen and a half ahead to avoid the first-scroll hitch
* [acfd3e22](https://github.com/aayush2622/Dartotsu/commit/acfd3e22): fix: port window handling to window_manager 0.6, keep fl_pip on 3.x and give the dev shell libXi and a hook-visible pkg-config
* [59a26ca3](https://github.com/aayush2622/Dartotsu/commit/59a26ca3): fix: make the banner carousel fade fully opaque before its bottom edge
* [f2d24e9c](https://github.com/aayush2622/Dartotsu/commit/f2d24e9c): fix: a failing search term falls through to the next term when matching a source
* [6e38cb68](https://github.com/aayush2622/Dartotsu/commit/6e38cb68): fix: a reader page that cannot be decoded shows the failure card instead of the error screen
* [5f0739de](https://github.com/aayush2622/Dartotsu/commit/5f0739de): fix: the picture sheet scrolls in landscape and the preferred audio track is picked once late-listed tracks appear
* [2908e19d](https://github.com/aayush2622/Dartotsu/commit/2908e19d): fix: reader load sheet error state no longer overflows
* [ac6e5616](https://github.com/aayush2622/Dartotsu/commit/ac6e5616): fix: Discord preview uses the app name without an account and the member row matches Discord
* [c5d5db96](https://github.com/aayush2622/Dartotsu/commit/c5d5db96): fix: call the Android 16 promoted-notification builder methods by reflection so CI's SDK compiles
* [05b61a6a](https://github.com/aayush2622/Dartotsu/commit/05b61a6a): fix: contributors skeleton shows bones for avatar and text instead of one block
* [daeeef03](https://github.com/aayush2622/Dartotsu/commit/daeeef03): fix: make the glass theme cheap — blur only on floating surfaces, one-widget cards, native background decode
* [0ccc564f](https://github.com/aayush2622/Dartotsu/commit/0ccc564f): fix: report an unreachable plugin index and silence Windows noise warnings

### 🔧 Refactors
* [7edde87a](https://github.com/aayush2622/Dartotsu/commit/7edde87a): refactor: move download transport and title/HLS/source-test helpers to the extension bridge
* [f626ab41](https://github.com/aayush2622/Dartotsu/commit/f626ab41): refactor: group list entries by status in one shared helper
* [c3de800b](https://github.com/aayush2622/Dartotsu/commit/c3de800b): refactor: share one reverse image search sheet between trace.moe and SauceNAO

### 🚀 Performance Improvements
* [65fcbec9](https://github.com/aayush2622/Dartotsu/commit/65fcbec9): perf: story backgrounds use the cached pre-blurred bitmap instead of live blur
* [09ce3c20](https://github.com/aayush2622/Dartotsu/commit/09ce3c20): perf: cheaper download cover and latest-unit lookup
* [d84d5b9d](https://github.com/aayush2622/Dartotsu/commit/d84d5b9d): perf: read only the MediaQuery aspect each widget needs
* [5830b23f](https://github.com/aayush2622/Dartotsu/commit/5830b23f): perf: compile regexes once instead of on every call
* [f95d7781](https://github.com/aayush2622/Dartotsu/commit/f95d7781): perf: build long lists lazily in downloads, notifications, sheets and settings
* [59aa319d](https://github.com/aayush2622/Dartotsu/commit/59aa319d): perf: comment thread is a sliver so the detail page and player scroll without lag

### 🧹 Chores & Documentation
* [2aadb0b5](https://github.com/aayush2622/Dartotsu/commit/2aadb0b5): chore: pub upgrade [build.all]
* [0411d542](https://github.com/aayush2622/Dartotsu/commit/0411d542): chore: version bump
* [b8486cb3](https://github.com/aayush2622/Dartotsu/commit/b8486cb3): chore: update dependencies
* [994f8d22](https://github.com/aayush2622/Dartotsu/commit/994f8d22): chore: update the extension bridge
* [b94f8c68](https://github.com/aayush2622/Dartotsu/commit/b94f8c68): chore: bump nix channels.json
* [b4e1b4c9](https://github.com/aayush2622/Dartotsu/commit/b4e1b4c9): chore: build all [build.all]
* [6bfd7d4e](https://github.com/aayush2622/Dartotsu/commit/6bfd7d4e): chore: update the extension bridge
* [d2338b4b](https://github.com/aayush2622/Dartotsu/commit/d2338b4b): chore: bump nix channels.json
* [24eabb8e](https://github.com/aayush2622/Dartotsu/commit/24eabb8e): chore: build all [build.all]
* [d0ca6edf](https://github.com/aayush2622/Dartotsu/commit/d0ca6edf): chore: bump nix channels.json
* [a49bb11d](https://github.com/aayush2622/Dartotsu/commit/a49bb11d): chore: build all [build.all]
* [5a876663](https://github.com/aayush2622/Dartotsu/commit/5a876663): chore: build all [build.all]
* [33d2763a](https://github.com/aayush2622/Dartotsu/commit/33d2763a): chore: bump nix channels.json
* [8ad97712](https://github.com/aayush2622/Dartotsu/commit/8ad97712): chore: build all [build.all]
* [8588adae](https://github.com/aayush2622/Dartotsu/commit/8588adae): chore: update dependencies
* [ea0040a4](https://github.com/aayush2622/Dartotsu/commit/ea0040a4): chore: build all [build.all]
* [6e94bd72](https://github.com/aayush2622/Dartotsu/commit/6e94bd72): chore: remove the chosen-folder storage and keep all-files access
* [21273ec7](https://github.com/aayush2622/Dartotsu/commit/21273ec7): chore: build all [build.all]
* [0ece8840](https://github.com/aayush2622/Dartotsu/commit/0ece8840): chore: bridge with latest plugins [build.all]
* [2427b891](https://github.com/aayush2622/Dartotsu/commit/2427b891): chore: bridge with streamed video links
* [b291549a](https://github.com/aayush2622/Dartotsu/commit/b291549a): chore: bridge with the iOS embedded jar fix
* [c99c8730](https://github.com/aayush2622/Dartotsu/commit/c99c8730): chore: bridge with faster CloudStream link loading
* [3400a06a](https://github.com/aayush2622/Dartotsu/commit/3400a06a): chore: bump nix channels.json
* [bb20cdde](https://github.com/aayush2622/Dartotsu/commit/bb20cdde): chore: build all [build.all]
* [4fef4381](https://github.com/aayush2622/Dartotsu/commit/4fef4381): chore: bridge with DASH downloads
* [d6b294f0](https://github.com/aayush2622/Dartotsu/commit/d6b294f0): chore: bump nix channels.json
* [54b2ebf8](https://github.com/aayush2622/Dartotsu/commit/54b2ebf8): ci: build every Android ABI on alpha again
* [0c86bb6f](https://github.com/aayush2622/Dartotsu/commit/0c86bb6f): ci: keep a warm Android compile across lockfile changes
* [7580a534](https://github.com/aayush2622/Dartotsu/commit/7580a534): chore: build all [build.all]
* [19869c72](https://github.com/aayush2622/Dartotsu/commit/19869c72): chore: bridge with iOS classpath fix, Windows trust store, wider converter stamp and month-name dates
* [da3580b1](https://github.com/aayush2622/Dartotsu/commit/da3580b1): chore: bump nix channels.json
* [c839c406](https://github.com/aayush2622/Dartotsu/commit/c839c406): chore: build all [build.all]
* [f83a2c9b](https://github.com/aayush2622/Dartotsu/commit/f83a2c9b): chore: bridge with CloudStream conversion fixes and dynamic iOS runtime jar
* [c51eac40](https://github.com/aayush2622/Dartotsu/commit/c51eac40): chore: bump nix channels.json
* [6e4089fe](https://github.com/aayush2622/Dartotsu/commit/6e4089fe): ci: keep Android Flutter cache and prune stale Actions caches
* [6c6504b8](https://github.com/aayush2622/Dartotsu/commit/6c6504b8): chore: bump nix channels.json
* [402f7ba3](https://github.com/aayush2622/Dartotsu/commit/402f7ba3): chore: build with multi-audio downloads and the window_manager 0.6 port [build.all]
* [ab9e2d92](https://github.com/aayush2622/Dartotsu/commit/ab9e2d92): chore: update the extension bridge for multi-audio HLS downloads
* [ecfbe93f](https://github.com/aayush2622/Dartotsu/commit/ecfbe93f): chore: add strings for the not-in-list filter and the onboarding language step
* [92df5660](https://github.com/aayush2622/Dartotsu/commit/92df5660): chore: bump nix channels.json
* [9e2d80dc](https://github.com/aayush2622/Dartotsu/commit/9e2d80dc): chore: build with the CloudStream plugin change stream [build.all]
* [394da76d](https://github.com/aayush2622/Dartotsu/commit/394da76d): chore: use the bridge that streams CloudStream plugin changes
* [ef0ff3aa](https://github.com/aayush2622/Dartotsu/commit/ef0ff3aa): chore: bump nix channels.json
* [62354fc3](https://github.com/aayush2622/Dartotsu/commit/62354fc3): chore: use the bridge that fetches Aniyomi pages through the extension's own client [build.all]
* [18dad2b6](https://github.com/aayush2622/Dartotsu/commit/18dad2b6): chore: bump nix channels.json
* [ee70177f](https://github.com/aayush2622/Dartotsu/commit/ee70177f): chore: use the bridge with Flutter-backed source WebViews [build.all]
* [c371aa22](https://github.com/aayush2622/Dartotsu/commit/c371aa22): chore: use the pushed bridge with the toolkit and downloads libraries [build.all]
* [ee77f493](https://github.com/aayush2622/Dartotsu/commit/ee77f493): chore: document the Discord overhaul, bridge downloads and card badge editor in CLAUDE.md
* [45e7ff83](https://github.com/aayush2622/Dartotsu/commit/45e7ff83): chore: Flutter 3.47 and Dart 3.13 minimums
* [28e05cd3](https://github.com/aayush2622/Dartotsu/commit/28e05cd3): chore: bump nix channels.json
* [e4fdfc53](https://github.com/aayush2622/Dartotsu/commit/e4fdfc53): chore: remove the test folder and build all [build.all]
* [8ea9223f](https://github.com/aayush2622/Dartotsu/commit/8ea9223f): docs: update CLAUDE.md for the card counter, subtitle matching and media-kit
* [a3e7f577](https://github.com/aayush2622/Dartotsu/commit/a3e7f577): chore: use Predidit's media-kit
* [273600f1](https://github.com/aayush2622/Dartotsu/commit/273600f1): ci: use gh download URLs for release Discord links
* [e21781cb](https://github.com/aayush2622/Dartotsu/commit/e21781cb): chore: bump nix channels.json


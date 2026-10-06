# Consistency rules

Small, easy-to-forget rules for keeping this codebase from growing duplicate/parallel
implementations of things that already exist. Read this before adding a new screen, sheet,
dialog, or helper. If you're about to write something that feels like it should already exist
— grep first, it probably does.

## Before writing new code

Scan the project for an existing helper/widget before writing a new one. This codebase has
dedicated wrappers for almost everything UI-adjacent (see below) — a raw `Navigator.push`,
`showModalBottomSheet`, `showDialog`, `TextStyle(fontSize: ...)`, or `getApplicationDocumentsDirectory()`
call is usually a sign a wrapper was skipped, not that one doesn't exist.

## Navigation

- Push: `navigateToPage(context, widget)` — never `Navigator.push(MaterialPageRoute(...))`.
- Pop: `popPage(context, [result])` — never `Navigator.of(context).pop()` / `Get.back()`.
  Both live in `Utils/Functions/NavigateToScreen.dart`. The point of routing every push/pop
  through these two functions is so the navigation backend (Navigator vs GetX vs anything else)
  can be swapped in one place later instead of chasing call sites.

## Sheets & dialogs

- Bottom sheet chrome (drag handle, title, scroll body, optional checkbox + negative/positive
  button row) → `CustomBottomDialog` / `showCustomBottomDialog<T>()`
  (`Widgets/Components/CustomBottomDialog.dart`). Don't hand-roll a `ThemedContainer` +
  manual drag handle + manual title `Text` — that's exactly what this widget is.
- A selectable row inside a sheet (language picker, font picker, any "pick one of these"
  list) → `SheetTile` (`Widgets/Components/SheetTile.dart`), not a bare `ListTile`. It already
  handles the selected-pill background, M3 colors, and the trailing check icon.
- Switches in sheets and cards → `SwitchListTile` (radius 14 in sheets, `contentPadding: zero`
  in cards).
- A modal with title/message/buttons (confirm, radio choice, checkbox list, reorderable list)
  → `AlertDialogBuilder` (`Widgets/Components/AlertDialogBuilder.dart`).

## Screen chrome

All in `Widgets/Components/AppBars.dart`:

- App bar with a back button → `AppScreenBar(title:, actions:, bottom:)`. The nested `Scaffold`
  inside `BaseScreen` does not imply a back button, so a bare `AppBar` has no way back.
- Back button anywhere → `AppBackButton`. Collapsing header in a `CustomScrollView` →
  `AppSliverBar(title:)`. Title text → `AppScreenTitle`.
- Tabs → `AppTabs` (label / count / icon-builder items; follows the controller and shows the
  D-pad focus colour). Use `AppTabBar` + `AppTab` only when each tab needs its own `Obx`.
  Never a stock `TabBar` + `Tab`.
- Tab icons are builders (`(color) => widget`) so SVGs get tinted; an SVG ignores `IconTheme`.

## Empty / error states and loading

- "Nothing here" / "couldn't load" → `EmptyState(icon:, title:, message:, failed:, onAction:)`
  (`Widgets/Components/EmptyState.dart`). Don't draw an icon + text column by hand.
- Loading → `Skeletonizer` over the real widget built from `Media.skeleton()` / placeholder
  items, not a spinner, wherever the final layout is known. Keep chrome with `Skeleton.keep`.

## Scrolling

Every scrollable (list, grid, `TabBarView`, tab bar) is wrapped in `ScrollConfig(context, child:)`
or built with `CustomScrollConfig`, so mouse/trackpad drags work and scrollbars stay off.

## Tiles inside coloured containers

A `ListTile` / `SwitchListTile` / `CheckboxListTile` paints on the nearest `Material`. Inside a
coloured `Container`/`ThemedContainer` that hides ink and logs "ListTile background color…
invisible". `CustomBottomDialog` and `AlertDialogBuilder` already provide a transparent `Material`;
anywhere else, wrap the group in `Material(color: …)` instead of a decorated `Container`.

## Paths / storage

- Any on-disk path this app owns (fonts, cache, exports, downloads, tmp files) goes through
  `StorageManager` (`Core/Preferences/StorageManager.dart`) —
  `StorageManager.getDirectory(subPath: ...)` or `StorageManager.getTmpDirectory()`.
  Never call `path_provider` (`getApplicationDocumentsDirectory`, `getTemporaryDirectory`, …)
  directly in feature code — `StorageManager` is what resolves platform differences (Android
  scoped storage, custom user path, Apple sandbox) and keeps everything under one `Dartotsu`
  root.
  - The one legitimate exception: reading from a path a *third-party package/tool* owns and
    controls the layout of — e.g. `google_fonts`' own on-disk cache in
    `getApplicationSupportDirectory()` (`CustomFontLoader`), or the XDG config file an external
    tool (pywal, a custom script, …) writes to (`~/.config/dartotsu/theme.json`, read live by
    `CustomJsonTheme`) — that's not "our" storage, so `StorageManager` doesn't apply to the read
    side, only to wherever a result then gets copied into our own app directory.

## Other controllers / managers — use the existing singleton

- Network: `find<NetworkManager>()`, not a fresh `RhttpClient`/raw `http` call, except for
  genuinely one-off probes (e.g. the network-settings "test connection" buttons, which
  intentionally build a scratch client with custom proxy/TLS settings that shouldn't touch the
  app's real client).
- Theme: `find<ThemeController>()` / `ThemeManager.dart` builders. Don't read `Theme.of(context)`
  raw when a `ThemeController` field already models the same state reactively.
- Snackbars: `snackString(msg, ...)` (`Utils/Functions/SnackBar.dart`) — overlay-based, renders
  above bottom sheets. Don't use `ScaffoldMessenger`/GetX snackbars.
- Locale/strings: `getString.someKey` (`Core/ThemeManager/LanguageSwitcher.dart`). Never
  hard-code user-facing strings; add new ones to `app_en.arb` + `flutter gen-l10n`.

## Text styling — always derive from the theme's text styles

Never write `TextStyle(fontSize: .., fontWeight: ..)` from scratch. Start from
`context.textTheme.<scale>` (`titleMedium`, `bodyLarge`, `labelLarge`, …) and `.copyWith(...)`
only the parts you need to change (color, weight):

```dart
// wrong — hardcodes a font, silently drops the app's font family/custom font
style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)

// right — inherits fontFamily (incl. the user's custom/Google font) from the theme
style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)
```

`ThemeManager.buildAppTheme` sets `fontFamily` once, in one place, on the whole `TextTheme` so
the custom-font feature (Settings → Appearance → Font) can retarget every piece of text in the
app by changing that one value. A raw `TextStyle(...)` literal bypasses that entirely and will
silently keep rendering in the platform default font even after the user picks a custom font.
The same logic applies to colors — prefer `context.colorScheme.*` over a hardcoded `Color`.

## Layout constants

Use `Dimens.*` (`Utils/Extensions/Responsive.dart`) for padding/gaps/card sizes — `gapXs`…
`gapXl`, `pagePad`, `cardPad`, `radius*` — not raw pixel literals. It's layout-class aware
(phone/tablet/desktop), a raw `16.0` isn't.

## Shared form controls

`Widgets/Components/AppControls.dart` — `AppSegmented<T>`, `LabeledSlider`, `AppChoiceChips<T>`,
`LabeledField`. Use these instead of bare `SegmentedButton`/`Slider`/`ChoiceChip` when building
a settings row or filter control.

## Content containers

`Widgets/Components/SectionCard.dart` is the wrapper behind every block of content with a
title/body (synopsis, detail tables, settings rows, rails, empty states). Use it instead of a
bare `Container`/`ThemedContainer` for anything with text behind it.

## Comments

Default to none. Well-named identifiers already say what code does; don't restate that in a
comment. Only write one when the *why* is genuinely non-obvious from reading the code — a
hidden constraint, a workaround for a specific bug, a subtle invariant — and keep it to a
single line where possible. Don't add dartdoc blocks to new classes/methods by default, and
don't reference the current task/PR/issue in a comment (it rots as the code moves on).

## Commits

No `Co-Authored-By` / AI-attribution trailers in commit messages for this repo.

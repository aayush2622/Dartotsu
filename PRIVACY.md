# Privacy Policy

Dartotsu is a free, open-source tracking and media-management app. It has no accounts of its own and no server that stores your data. Everything below describes what the app keeps on your device and which third-party services it talks to.

Last updated: 2026-11-18

## What stays on your device

- Your settings, watch and read progress, downloads, local lists and cached data are stored locally in the app's own storage.
- Sign-in tokens for the services you connect (AniList, MyAnimeList, Simkl, Kitsu, Trakt, MangaBaka, MangaUpdates, Anime-Planet, Comick, Discord) are stored locally in the app's protected storage. They are only sent to the service they belong to.
- Dartotsu never sees your passwords for OAuth services: you sign in on the service's own page in your browser.
- Removing a service in the app, or uninstalling the app, deletes its tokens from the device. You can also revoke Dartotsu from each service's own account settings.

## Services the app talks to

Only the services you use are contacted.

- **Tracking services** (AniList, MyAnimeList, Simkl, Kitsu, Trakt, MangaBaka, MangaUpdates, Anime-Planet, Comick): the app reads and, when you edit or watch something, writes your lists, progress and ratings on that service. Their own privacy policies apply to that data.
- **Trakt** specifically: with your permission, Dartotsu reads your Trakt profile, watchlist, watched history and ratings, and writes history, watchlist entries and ratings when you change them. Dartotsu uses Trakt but is not endorsed or certified by Trakt.
- **Metadata and mapping sources** (for example ani.zip, Kitsu, Simkl, Tenrai, AniSkip, AnimeThemes, trace.moe): the app sends titles or public ids to fetch episode details, skip times and similar data. No account data is sent.
- **Comments** use the Dantotsu comment server (`api.dantotsu.app`), which is given your AniList token to authenticate you.
- **Discord Rich Presence** (optional, off unless you enable it) shares what you are watching or reading with Discord.
- **Settings sync** (optional) stores your settings in a private GitHub Gist in your own GitHub account.
- **Update checks** contact GitHub to look for new releases.
- **Crash reports**: release builds send crash reports through Firebase Crashlytics. They contain technical information such as the error, device model and OS version, not your lists or tokens.
- **Extensions**: Dartotsu can load third-party extensions that you choose to install. Each extension contacts its own sites, and those sites' policies apply. Dartotsu does not host or provide any media.

## What we do not do

- We do not sell your data and we do not run advertising.
- We do not collect your tokens, lists or viewing history on any server of ours.

## Your choices

- Disconnect any service, turn off Discord presence, settings sync or alerts, and clear the cache or downloads from the app's settings.
- Use incognito mode to stop the app from saving history while you watch or read.

## Contact

Questions or requests: open an issue at https://github.com/aayush2622/Dartotsu/issues or join the Discord linked in the README.

## Changes

If this policy changes, the updated version is published here with a new date.

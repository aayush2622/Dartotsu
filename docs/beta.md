# Build Workflow Triggers

This document describes how to trigger different build workflows in Dartotsu using specific commit message patterns.

## General Format
Add one of the following tags in your commit message square brackets to trigger builds:

- `[build]` - Triggers Android and Windows builds
- `[build.all]` - Triggers builds for all platforms
- `[build.apk]` - Triggers Android build only
- `[build.windows]` - Triggers Windows build only 
- `[build.linux]` - Triggers Linux build only
- `[build.ios]` - Triggers iOS build only
- `[build.macos]` - Triggers macOS build only

## Examples

```bash
# Build for all platforms
git commit -m "feat: add new feature [build.all]"

# Build only for Android
git commit -m "fix: crash on startup [build.apk]"

# Build for Windows and Android
git commit -m "chore: dependency updates [build]"

# Build only for Linux
git commit -m "feat: improve linux support [build.linux]"
```

## Special Tags

 - `[Ping]` - Adding this tag will ping the development team on Discord when the build completes

 ## Multiple Triggers

 You can combine build triggers in a single comment

 ```bash
 git commit -m "feat: cross-platform improvements [build.linux][build.windows]"
 ```

 

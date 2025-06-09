# Triggering Release Workflow

## Prepare for Release

1. Update versions in `pubspec.yaml`:

   a. Main application version:
   ```yaml
   version: 1.2.3+123  # Increment version number and build number
   ```
   - First part (`1.2.3`) is the semantic version
   - Second part (`123`) is the build number

   b. Inno Bundle version (at the bottom of pubspec.yaml):
   ```yaml
   inno_bundle:
     # ...other settings...
     version: 1.2.3    # Must match the semantic version above (without build number)
   ```

2. Commit the version changes:
   ```bash
   git add pubspec.yaml
   git commit -m "chore: bump version to 1.2.3"
   ```

## Via Git Tags

To create and push a new version tag using git:

```bash
# Create a new tag locally
git tag v1.2.3

# Push the tag to GitHub
git push origin v1.2.3
```

> **Note**: Tag format must follow `v*.*.*` pattern (e.g. v1.0.0, v2.1.3)

## Via GitHub UI

1. Navigate to the [Releases page](https://github.com/aayush2622/Dartotsu/releases)
2. Click "Draft a new release" 
3. In "Choose a tag" field:
   - Type a new version tag (e.g. `v1.2.3`)
   - Select "Create new tag on publish"
4. Fill in release title and description
5. Click "Publish release"

## Workflow Actions

When triggered, the workflow will:

- [x] Build platform-specific apps:
  - Android (APK files)
  - Windows (Installer)
  - Linux (AppImage + ZIP)
  - iOS (IPA file)
  - macOS (DMG file)
- [x] Generate changelog from commit history
- [x] Create GitHub release with built assets
- [x] Post notifications to:
  - Discord channel
  - Telegram channel
- [x] Update repository [`CHANGELOG.md`](CHANGELOG.md)

## Release Artifacts

All built applications will be available for download on the [Releases page](https://github.com/aayush2622/Dartotsu/releases) after workflow completion.

> **Important**: Tags must follow the semantic versioning format `v*.*.*` (e.g. v1.0.0) to trigger the workflow successfully.

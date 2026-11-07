import 'package:flutter/material.dart';

import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import 'Media/MediaRecord.dart';
import 'WatchPrefs.dart';

enum TrackChoice { service, local, none }

Future<TrackChoice> confirmTracking(
  BuildContext? context, {
  required bool anime,
  required String name,
  MediaService? service,
  Media? media,
}) async {
  final record = service != null && media != null
      ? MediaRecords.of(service, media)
      : null;
  final stored = TrackChoice.values
      .where((c) => c.name == record?.trackChoice)
      .firstOrNull;
  if (stored != null) return stored;
  final pref = anime ? trackAnimePref : trackMangaPref;
  final mode = pref.value;
  if (mode == 'always') return TrackChoice.service;
  if (mode == 'never') return TrackChoice.local;
  if (mode == 'off') return TrackChoice.none;
  final host = context ?? appContext;
  if (host == null || !host.mounted) return TrackChoice.service;
  final remember = false.live;
  final picked = await showCustomBottomDialog<TrackChoice>(
    host,
    _TrackSheet(
      anime: anime,
      name: name,
      signedIn: service?.isLoggedIn ?? true,
      remember: record == null ? null : remember,
    ),
  );
  final choice = picked ?? TrackChoice.none;
  if (picked != null && record != null && remember.value) {
    record.trackChoice = choice.name;
    MediaRecords.save(service!, media!);
  }
  return choice;
}

class _TrackSheet extends StatelessWidget {
  final bool anime;
  final String name;
  final bool signedIn;
  final Live<bool>? remember;

  const _TrackSheet({
    required this.anime,
    required this.name,
    required this.signedIn,
    required this.remember,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return AppSheet(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gap,
          Dimens.pagePad,
          Dimens.gapLg,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: scheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Icon(
                    Icons.bookmark_added_rounded,
                    color: scheme.onPrimaryContainer,
                    size: 28,
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimens.gap),
            Text(
              getString.trackProgressTitle,
              textAlign: TextAlign.center,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: Dimens.gapXs),
            Text(
              signedIn
                  ? (anime
                        ? getString.trackProgressAnime(name)
                        : getString.trackProgressManga(name))
                  : (anime
                        ? getString.trackProgressAnimeLocal(name)
                        : getString.trackProgressMangaLocal(name)),
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            SizedBox(height: Dimens.gapSm),
            if (remember != null)
              Material(
                color: Colors.transparent,
                child: Watch(
                  () => SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    title: Text(
                      getString.trackProgressRememberSeries,
                      style: context.textTheme.bodyMedium,
                    ),
                    value: remember!.value,
                    onChanged: (v) => remember!.value = v,
                  ),
                ),
              ),
            SizedBox(height: Dimens.gapSm),
            FilledButton(
              onPressed: () => popPage(context, TrackChoice.service),
              child: Text(getString.trackProgressYes),
            ),
            if (signedIn) ...[
              SizedBox(height: Dimens.gapSm),
              FilledButton.tonal(
                onPressed: () => popPage(context, TrackChoice.local),
                child: Text(getString.trackProgressLocal),
              ),
            ],
            SizedBox(height: Dimens.gapXs),
            TextButton(
              onPressed: () => popPage(context, TrackChoice.none),
              child: Text(getString.trackProgressNo),
            ),
          ],
        ),
      ),
    );
  }
}

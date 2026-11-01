import 'package:flutter/material.dart';

import '../../Core/Services/Api/IdMapper.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/ScoreFormat.dart';
import '../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../Screen/Detail/Watch/Data/Media/MediaRecord.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Extensions/StringExtensions.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../Components/CachedNetworkImage.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';

class MediaRowFacts {
  final Media media;

  MediaRowFacts(this.media);

  bool get isAnime => media.anime != null;

  int? get total => media.anime?.totalEpisodes ?? media.manga?.totalChapters;

  String get unit => isAnime ? 'eps' : 'ch';

  String? get status => media.status?.replaceAll('_', ' ').titleCase;

  double? get score =>
      (media.meanScore ?? 0) > 0 ? media.meanScore! / 10 : null;

  String? get format => media.format?.replaceAll('_', ' ').titleCase;

  String? get year =>
      (media.anime?.seasonYear ?? media.startDate?.year)?.toString();

  String? get season => media.anime?.season?.titleCase;

  String? get count => total == null ? null : '$total $unit';

  String? get duration {
    final d = media.anime?.episodeDuration;
    return d == null || d <= 0 ? null : '${d}m';
  }

  String? get airing {
    final anime = media.anime;
    final ep = anime?.nextAiringEpisode;
    final secs = anime?.nextAiringEpisodeTime;
    if (ep == null || ep <= 0 || secs == null) return null;
    final d = secs ~/ 86400;
    final h = (secs % 86400) ~/ 3600;
    final m = (secs % 3600) ~/ 60;
    final left = d > 0 ? '${d}d ${h}h' : (h > 0 ? '${h}h ${m}m' : '${m}m');
    return getString.epIn(ep, left);
  }

  late final ({int? count, bool estimated}) _latest = _findLatest();

  int? get released => _latest.count;

  bool get estimated => _latest.estimated;

  String? get estimate => estimated ? counts : null;

  ({int? count, bool estimated}) _findLatest() {
    if (isAnime) {
      final next = media.anime?.nextAiringEpisode;
      if (next != null) {
        return (count: next > 1 ? next - 1 : null, estimated: false);
      }
    }
    final known = total;
    if (known != null && known > 0) return (count: known, estimated: false);
    final service = tryFind<MediaServiceController>()?.currentService.value;
    if (service == null) return (count: null, estimated: false);
    final key = '${service.id}/${media.id}';
    final saved = MediaRecords.of(service, media).latestUnit;
    final sub = tryFind<SourceSubscriptions>()?.byKey(key)?.lastValue.floor();
    final index = isAnime
        ? null
        : IdMapper.cachedChapters(service.id, media.id);
    final best = [saved, sub, index].nonNulls
        .where((v) => v > 0)
        .fold<int?>(null, (a, b) => a == null || b > a ? b : a);
    return (count: best, estimated: best != null);
  }

  late final int? unread = _unread();

  int? _unread() {
    final done = media.userProgress;
    final latest = released;
    if (done == null || latest == null) return null;
    final left = latest - done;
    return left > 0 ? left : null;
  }

  String get counts {
    final latest = released;
    final all = total;
    if (latest != null && all != null && latest != all) return '$latest | $all';
    return (all ?? latest)?.toString() ?? '~';
  }

  String get listed => '${media.userProgress ?? '~'} | $counts';

  String get listedShort =>
      '${media.userProgress ?? '~'} · ${total ?? released ?? '~'}';

  double? get progress {
    final done = media.userProgress ?? 0;
    final t = total ?? released;
    if (done <= 0 || t == null || t <= 0) return null;
    return (done / t).clamp(0.0, 1.0);
  }

  String? get progressText {
    final done = media.userProgress;
    if (done == null || done <= 0) return null;
    return '$done / ${total ?? released ?? '?'}';
  }

  List<String> get meta => [
    ?format,
    if (season != null && year != null) '$season $year' else ?year,
    ?count,
    ?duration,
  ];
}

CardStyle _style() => tryFind<CardStyleController>()?.current ?? CardStyle.cozy;

Color _fill(BuildContext context) {
  final scheme = context.colorScheme;
  return find<ThemeController>().useGlassMode.value
      ? scheme.surface.withValues(alpha: 0.35)
      : scheme.surfaceContainerLow;
}

class _Chip extends StatelessWidget {
  final String text;
  final Color? background;
  final Color? foreground;

  const _Chip(this.text, {this.background, this.foreground});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final fg = foreground ?? scheme.onSurfaceVariant;
    return DecoratedBox(
      decoration: BoxDecoration(
        color:
            background ?? scheme.surfaceContainerHighest.withValues(alpha: .6),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: context.textTheme.labelSmall?.copyWith(
                color: fg,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;

  const _Stat(this.icon, this.text, {this.color});

  @override
  Widget build(BuildContext context) {
    final c = color ?? context.colorScheme.onSurfaceVariant;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: c),
        const SizedBox(width: 3),
        Text(
          text,
          style: context.textTheme.labelMedium?.copyWith(
            color: c,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

String _compact(int n) => n >= 1000000
    ? '${(n / 1000000).toStringAsFixed(1)}M'
    : n >= 1000
    ? '${(n / 1000).toStringAsFixed(1)}k'
    : '$n';

class _Cover extends StatelessWidget {
  final Media media;
  final String tag;
  final double width;
  final double height;
  final double radius;
  final bool airing;

  const _Cover({
    required this.media,
    required this.tag,
    required this.width,
    required this.height,
    required this.radius,
    required this.airing,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Hero(
              tag: tag,
              flightShuttleBuilder: (_, _, _, _, toContext) =>
                  (toContext.widget as Hero).child,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(radius),
                child: cachedNetworkImage(
                  imageUrl: media.cover,
                  fit: BoxFit.cover,
                  placeholder: (_, _) =>
                      ColoredBox(color: scheme.surfaceContainerHighest),
                ),
              ),
            ),
          ),
          if (airing)
            PositionedDirectional(
              top: -3,
              end: -3,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: const Color(0xFF37DFA0),
                  shape: BoxShape.circle,
                  border: Border.all(color: scheme.surface, width: 1.5),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _Progress extends StatelessWidget {
  final MediaRowFacts facts;

  const _Progress(this.facts);

  @override
  Widget build(BuildContext context) {
    final p = facts.progress;
    if (p == null) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: p,
                minHeight: 4,
                backgroundColor: scheme.onSurface.withValues(alpha: 0.12),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            facts.progressText ?? '',
            style: context.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _Genres extends StatelessWidget {
  final Media media;
  final int max;

  const _Genres(this.media, {this.max = 3});

  @override
  Widget build(BuildContext context) {
    if (media.genres.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Wrap(
        spacing: 6,
        runSpacing: 4,
        children: [for (final g in media.genres.take(max)) _Chip(g)],
      ),
    );
  }
}

class _ScoreChip extends StatelessWidget {
  final double score;
  final bool highlight;

  const _ScoreChip(this.score, {this.highlight = false});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: highlight
            ? scheme.primaryContainer
            : scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star_rounded,
              size: 13,
              color: highlight ? scheme.onPrimaryContainer : scheme.primary,
            ),
            const SizedBox(width: 2),
            Text(
              highlight ? score.userScoreLabel : score.toStringAsFixed(1),
              style: context.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w800,
                color: highlight ? scheme.onPrimaryContainer : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MediaListTile extends StatelessWidget {
  final Media media;
  final String tag;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const MediaListTile({
    super.key,
    required this.media,
    required this.tag,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final style = _style();
    final facts = MediaRowFacts(media);
    final thumbW = 76 * style.scale;
    final thumbH = thumbW * style.aspect;
    final meta = facts.meta;

    return DpadTap(
      scale: true,
      borderRadius: BorderRadius.circular(style.radius),
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: _fill(context),
          borderRadius: BorderRadius.circular(style.radius),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Cover(
              media: media,
              tag: tag,
              width: thumbW,
              height: thumbH,
              radius: style.radius - 4,
              airing: style.showAiring && media.status == 'RELEASING',
            ),
            const SizedBox(width: 12),
            Expanded(
              child: SizedBox(
                height: thumbH,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            media.mainName,
                            maxLines: style.lines,
                            overflow: TextOverflow.ellipsis,
                            style: text.titleSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        if (style.showScore && facts.score != null) ...[
                          const SizedBox(width: 8),
                          _ScoreChip(
                            facts.score!,
                            highlight: (media.userScore ?? 0) > 0,
                          ),
                        ],
                      ],
                    ),
                    if (meta.isNotEmpty) ...[
                      const SizedBox(height: 3),
                      Text(
                        meta.join(' · '),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: text.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                    if (facts.airing != null) ...[
                      const SizedBox(height: 3),
                      Text(
                        facts.airing!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: text.labelMedium?.copyWith(
                          color: scheme.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                    if (!style.compact) _Genres(media),
                    const Spacer(),
                    if (facts.status != null)
                      Text(
                        facts.status!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: text.labelMedium?.copyWith(
                          color: scheme.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    if (style.showProgress) _Progress(facts),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MediaBannerTile extends StatelessWidget {
  final Media media;
  final String tag;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const MediaBannerTile({
    super.key,
    required this.media,
    required this.tag,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final style = _style();
    final facts = MediaRowFacts(media);
    final fill = _fill(context);
    final thumbW = 112 * style.scale;
    final thumbH = thumbW * style.aspect;
    final meta = facts.meta;

    return DpadTap(
      scale: true,
      borderRadius: BorderRadius.circular(style.radius),
      onTap: onTap,
      onLongPress: onLongPress,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(style.radius),
        child: Stack(
          children: [
            Positioned.fill(child: ColoredBox(color: fill)),
            PositionedDirectional(
              start: 0,
              end: 0,
              top: 0,
              height: thumbH * 0.8,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  cachedNetworkImage(
                    imageUrl: media.banner ?? media.cover,
                    fit: BoxFit.cover,
                    placeholder: (_, _) => const SizedBox.shrink(),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [fill.withValues(alpha: 0.2), fill],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _Cover(
                    media: media,
                    tag: tag,
                    width: thumbW,
                    height: thumbH,
                    radius: style.radius - 4,
                    airing: style.showAiring && media.status == 'RELEASING',
                  ),
                  SizedBox(width: Dimens.gap),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: thumbH * 0.45),
                        Text(
                          media.mainName,
                          maxLines: style.lines,
                          overflow: TextOverflow.ellipsis,
                          style: text.titleMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Wrap(
                          spacing: 10,
                          runSpacing: 4,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            if (facts.status != null)
                              _Chip(
                                facts.status!,
                                background: scheme.primaryContainer,
                                foreground: scheme.onPrimaryContainer,
                              ),
                            if (style.showScore && facts.score != null)
                              _Stat(
                                Icons.star_rounded,
                                facts.score!.toStringAsFixed(1),
                                color: scheme.primary,
                              ),
                            if (!style.compact && media.favourites != null)
                              _Stat(
                                Icons.favorite_rounded,
                                _compact(media.favourites!),
                              ),
                            if (!style.compact && media.popularity != null)
                              _Stat(
                                Icons.people_alt_rounded,
                                _compact(media.popularity!),
                              ),
                          ],
                        ),
                        if (meta.isNotEmpty) ...[
                          const SizedBox(height: 6),
                          Text(
                            meta.join(' · '),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: text.bodySmall?.copyWith(
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                        if (facts.airing != null) ...[
                          const SizedBox(height: 3),
                          Text(
                            facts.airing!,
                            style: text.labelMedium?.copyWith(
                              color: scheme.primary,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                        if (!style.compact) _Genres(media, max: 4),
                        if (style.showProgress) _Progress(facts),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

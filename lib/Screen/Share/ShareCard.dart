import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Model/Social.dart';
import '../../Core/Services/Screens/EntityHost.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';

const shareCardWidth = 360.0;

const _ink = Color(0xFF0E0E12);
const _text = Colors.white;
const _muted = Color(0xB3FFFFFF);

String _score(int? value) => value == null || value <= 0
    ? ''
    : (value / 10).toStringAsFixed(value % 10 == 0 ? 0 : 1);

String statusLabel(String? status, bool anime) => switch (status) {
  'CURRENT' => anime ? 'Watching' : 'Reading',
  'REPEATING' => anime ? 'Rewatching' : 'Rereading',
  'COMPLETED' => 'Completed',
  'PAUSED' => 'On hold',
  'DROPPED' => 'Dropped',
  'PLANNING' => 'Planned',
  _ => '',
};

class _Backdrop extends StatelessWidget {
  final String? image;
  final Widget child;

  const _Backdrop({this.image, required this.child});

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(28),
    child: ColoredBox(
      color: _ink,
      child: Stack(
        children: [
          if (image != null)
            Positioned.fill(
              child: ImageFiltered(
                imageFilter: ui.ImageFilter.blur(sigmaX: 28, sigmaY: 28),
                child: cachedNetworkImage(imageUrl: image, fit: BoxFit.cover),
              ),
            ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    _ink.withValues(alpha: 0.45),
                    _ink.withValues(alpha: 0.88),
                  ],
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    ),
  );
}

class _Footer extends StatelessWidget {
  final String service;
  final String? link;

  const _Footer(this.service, {this.link});

  @override
  Widget build(BuildContext context) => Row(
    children: [
      const Icon(Icons.auto_awesome_rounded, size: 14, color: _muted),
      const SizedBox(width: 6),
      const Text(
        'Dartotsu',
        style: TextStyle(
          color: _text,
          fontWeight: FontWeight.w800,
          fontSize: 12,
          letterSpacing: 0.4,
        ),
      ),
      const Spacer(),
      Flexible(
        child: Text(
          link == null
              ? service
              : link!.replaceFirst(RegExp(r'^https?://(www\.)?'), ''),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: _muted, fontSize: 11),
        ),
      ),
    ],
  );
}

Widget _pill(String label, {Color? fill, IconData? icon}) => Container(
  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  decoration: BoxDecoration(
    color: fill ?? Colors.white.withValues(alpha: 0.16),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      if (icon != null) ...[
        Icon(icon, size: 13, color: _text),
        const SizedBox(width: 4),
      ],
      Text(
        label,
        style: const TextStyle(
          color: _text,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  ),
);

class TitleShareCard extends StatelessWidget {
  final Media media;
  final String service;

  const TitleShareCard({super.key, required this.media, required this.service});

  @override
  Widget build(BuildContext context) {
    final anime = media.isAnime;
    final mean = _score(media.meanScore);
    final mine = _score(media.userScore);
    final status = statusLabel(media.userStatus, anime);
    final total = media.totalUnits;
    final progress = media.userProgress;
    final meta = [
      if (media.format != null && media.format!.isNotEmpty)
        media.format!.replaceAll('_', ' '),
      if (media.startDate?.year != null) '${media.startDate!.year}',
      if (media.status != null && media.status!.isNotEmpty)
        media.status!.replaceAll('_', ' '),
    ].join(' · ');
    return SizedBox(
      width: shareCardWidth,
      child: _Backdrop(
        image: media.cover,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 28, 24, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 190,
                height: 274,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x99000000),
                      blurRadius: 28,
                      offset: Offset(0, 12),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: cachedNetworkImage(
                    imageUrl: media.cover,
                    fit: BoxFit.cover,
                    width: 190,
                    height: 274,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Text(
                media.mainName,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: _text,
                  fontSize: 22,
                  height: 1.2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (meta.isNotEmpty) ...[
                const SizedBox(height: 6),
                Text(
                  meta,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: _muted, fontSize: 12.5),
                ),
              ],
              const SizedBox(height: 16),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8,
                runSpacing: 8,
                children: [
                  if (mean.isNotEmpty)
                    _pill(
                      mean,
                      icon: Icons.star_rounded,
                      fill: const Color(0x66FFB300),
                    ),
                  if (mine.isNotEmpty)
                    _pill(
                      'You $mine',
                      icon: Icons.favorite_rounded,
                      fill: const Color(0x66E91E63),
                    ),
                  if (status.isNotEmpty)
                    _pill(
                      progress != null && progress > 0
                          ? '$status $progress${total != null && total > 0 ? '/$total' : ''}'
                          : status,
                    ),
                ],
              ),
              if (media.genres.isNotEmpty) ...[
                const SizedBox(height: 12),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    for (final g in media.genres.take(4))
                      Text(
                        '#${g.replaceAll(' ', '')}',
                        style: const TextStyle(color: _muted, fontSize: 12),
                      ),
                  ],
                ),
              ],
              const SizedBox(height: 22),
              _Footer(service),
            ],
          ),
        ),
      ),
    );
  }
}

class ListShareCard extends StatelessWidget {
  final String name;
  final String? avatar;
  final String service;
  final String? link;
  final bool anime;
  final List<Media> top;
  final int count;
  final int completed;
  final double? mean;

  const ListShareCard({
    super.key,
    required this.name,
    this.avatar,
    required this.service,
    this.link,
    required this.anime,
    required this.top,
    required this.count,
    required this.completed,
    this.mean,
  });

  Widget _stat(String value, String label) => Expanded(
    child: Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: _text,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(label, style: const TextStyle(color: _muted, fontSize: 11)),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    final cells = top.take(9).toList();
    return SizedBox(
      width: shareCardWidth,
      child: _Backdrop(
        image: cells.isEmpty ? null : cells.first.cover,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (avatar != null) ...[
                    ClipOval(
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: cachedNetworkImage(
                          imageUrl: avatar,
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                  ],
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: _text,
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          '${getString.shareCardTop} · ${anime ? 'Anime' : 'Manga'}',
                          style: const TextStyle(color: _muted, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _stat('$count', anime ? getString.anime : getString.manga),
                  _stat('$completed', getString.completed),
                  _stat(
                    mean == null ? '–' : mean!.toStringAsFixed(1),
                    getString.meanScore,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.66,
                children: [
                  for (final (i, m) in cells.indexed)
                    Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: cachedNetworkImage(
                            imageUrl: m.cover,
                            fit: BoxFit.cover,
                          ),
                        ),
                        PositionedDirectional(
                          start: 6,
                          top: 6,
                          child: _pill('${i + 1}'),
                        ),
                        if (_score(m.userScore).isNotEmpty)
                          PositionedDirectional(
                            end: 6,
                            bottom: 6,
                            child: _pill(
                              _score(m.userScore),
                              icon: Icons.star_rounded,
                              fill: const Color(0xAA000000),
                            ),
                          ),
                      ],
                    ),
                ],
              ),
              const SizedBox(height: 16),
              _Footer(service, link: link),
            ],
          ),
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final String? image;
  final double size;

  const _Avatar(this.image, this.size);

  @override
  Widget build(BuildContext context) => ClipOval(
    child: SizedBox(
      width: size,
      height: size,
      child: image == null
          ? const ColoredBox(color: Color(0x33FFFFFF))
          : cachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              width: size,
              height: size,
            ),
    ),
  );
}

String _clock(int minutes) {
  final days = minutes / 1440;
  return days >= 1
      ? '${days.toStringAsFixed(1)}d'
      : '${(minutes / 60).toStringAsFixed(0)}h';
}

class EntityShareCard extends StatelessWidget {
  final EntityProfile profile;
  final String service;

  const EntityShareCard({
    super.key,
    required this.profile,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    final facts = profile.facts.take(4).toList();
    return SizedBox(
      width: shareCardWidth,
      child: _Backdrop(
        image: profile.image,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 28, 24, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 170,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x99000000),
                      blurRadius: 28,
                      offset: Offset(0, 12),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: cachedNetworkImage(
                    imageUrl: profile.image,
                    fit: BoxFit.cover,
                    width: 170,
                    height: 240,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                profile.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: _text,
                  fontSize: 22,
                  height: 1.2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (profile.nativeName != null &&
                  profile.nativeName!.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  profile.nativeName!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: _muted, fontSize: 13),
                ),
              ],
              if (profile.subtitle != null && profile.subtitle!.isNotEmpty) ...[
                const SizedBox(height: 6),
                Text(
                  profile.subtitle!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: _muted, fontSize: 12.5),
                ),
              ],
              if (profile.favourites != null || facts.isNotEmpty) ...[
                const SizedBox(height: 14),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    if (profile.favourites != null)
                      _pill(
                        '${profile.favourites}',
                        icon: Icons.favorite_rounded,
                        fill: const Color(0x66E91E63),
                      ),
                    for (final f in facts) _pill('${f.$1}: ${f.$2}'),
                  ],
                ),
              ],
              const SizedBox(height: 20),
              _Footer(service, link: profile.url),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileShareCard extends StatelessWidget {
  final SocialUser user;
  final String service;
  final String? link;

  const ProfileShareCard({
    super.key,
    required this.user,
    required this.service,
    this.link,
  });

  Widget _stat(String value, String label) => Expanded(
    child: Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            color: _text,
            fontSize: 19,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(color: _muted, fontSize: 11)),
      ],
    ),
  );

  Widget _panel(String title, List<Widget> stats) => Container(
    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
    decoration: BoxDecoration(
      color: Colors.white.withValues(alpha: 0.1),
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: _muted,
            fontSize: 11,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Row(children: stats),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: shareCardWidth,
      child: _Backdrop(
        image: user.banner ?? user.avatar,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 28, 20, 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _Avatar(user.avatar, 84),
              const SizedBox(height: 12),
              Text(
                user.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _text,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                '${user.followers} followers · ${user.following} following',
                style: const TextStyle(color: _muted, fontSize: 12.5),
              ),
              const SizedBox(height: 18),
              _panel('ANIME', [
                _stat('${user.animeCount}', 'Titles'),
                _stat('${user.episodesWatched}', 'Episodes'),
                _stat(_clock(user.minutesWatched), 'Watched'),
                _stat(
                  user.animeMeanScore > 0
                      ? user.animeMeanScore.toStringAsFixed(1)
                      : '–',
                  'Mean',
                ),
              ]),
              const SizedBox(height: 10),
              _panel('MANGA', [
                _stat('${user.mangaCount}', 'Titles'),
                _stat('${user.chaptersRead}', 'Chapters'),
                _stat('${user.volumesRead}', 'Volumes'),
                _stat(
                  user.mangaMeanScore > 0
                      ? user.mangaMeanScore.toStringAsFixed(1)
                      : '–',
                  'Mean',
                ),
              ]),
              const SizedBox(height: 18),
              _Footer(service, link: link),
            ],
          ),
        ),
      ),
    );
  }
}

class UnitShareCard extends StatelessWidget {
  final Media media;
  final String label;
  final String title;
  final String? thumbnail;
  final String meta;
  final bool watched;
  final bool anime;
  final String service;

  const UnitShareCard({
    super.key,
    required this.media,
    required this.label,
    required this.title,
    this.thumbnail,
    this.meta = '',
    required this.watched,
    required this.anime,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    final image = thumbnail ?? media.cover;
    return SizedBox(
      width: shareCardWidth,
      child: _Backdrop(
        image: image,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: anime && thumbnail != null ? 16 / 9 : 1.4,
                  child: cachedNetworkImage(
                    imageUrl: image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _pill(label, fill: const Color(0x66673AB7)),
                  if (watched) ...[
                    const SizedBox(width: 8),
                    _pill(
                      anime ? 'Watched' : 'Read',
                      icon: Icons.done_all_rounded,
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 12),
              Text(
                title,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _text,
                  fontSize: 20,
                  height: 1.2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                media.mainName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: _muted, fontSize: 13.5),
              ),
              if (meta.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(meta, style: const TextStyle(color: _muted, fontSize: 12)),
              ],
              const SizedBox(height: 18),
              _Footer(service),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityShareCard extends StatelessWidget {
  final Activity activity;
  final String service;

  const ActivityShareCard({
    super.key,
    required this.activity,
    required this.service,
  });

  String get _text_ {
    final raw = activity.text ?? '';
    final plain = raw
        .replaceAll(RegExp(r'<[^>]*>'), '')
        .replaceAll(RegExp(r'!?\[[^\]]*\]\([^)]*\)'), '')
        .replaceAll(RegExp(r'[~_*`#>]+'), '')
        .trim();
    return plain;
  }

  @override
  Widget build(BuildContext context) {
    final media = activity.media;
    final user = activity.user;
    final status = [
      if (activity.status != null && activity.status!.isNotEmpty)
        activity.status!,
      if (activity.progress != null && activity.progress!.isNotEmpty)
        activity.progress!,
    ].join(' ');
    final body = _text_;
    return SizedBox(
      width: shareCardWidth,
      child: _Backdrop(
        image: media?.cover ?? user?.avatar,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _Avatar(user?.avatar, 40),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      user?.name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: _text,
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              if (media != null)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: cachedNetworkImage(
                        imageUrl: media.cover,
                        fit: BoxFit.cover,
                        width: 84,
                        height: 120,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (status.isNotEmpty)
                            Text(
                              status,
                              style: const TextStyle(
                                color: _muted,
                                fontSize: 13,
                              ),
                            ),
                          const SizedBox(height: 4),
                          Text(
                            media.mainName,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: _text,
                              fontSize: 18,
                              height: 1.2,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              if (body.isNotEmpty) ...[
                SizedBox(height: media == null ? 0 : 14),
                Text(
                  body,
                  maxLines: 9,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: _text,
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),
              ],
              const SizedBox(height: 16),
              Row(
                children: [
                  _pill(
                    '${activity.likeCount}',
                    icon: Icons.favorite_rounded,
                    fill: const Color(0x66E91E63),
                  ),
                  const SizedBox(width: 8),
                  _pill(
                    '${activity.replyCount}',
                    icon: Icons.chat_bubble_rounded,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _Footer(service, link: activity.siteUrl),
            ],
          ),
        ),
      ),
    );
  }
}

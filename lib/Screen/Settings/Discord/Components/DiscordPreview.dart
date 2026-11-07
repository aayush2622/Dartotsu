import 'package:flutter/material.dart';

import '../../../../Api/Discord/DiscordAccount.dart';
import '../../../../Api/Discord/DiscordPresence.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';

class _D {
  static const blurple = Color(0xFF5865F2);
  static const card = Color(0xFF111214);
  static const panel = Color(0xFF1E1F22);
  static const text = Color(0xFFF2F3F5);
  static const muted = Color(0xFFB5BAC1);
  static const button = Color(0xFF4E5058);
}

String _clock(Duration d) {
  final s = d.inSeconds < 0 ? 0 : d.inSeconds;
  final h = s ~/ 3600;
  final sec = (s % 60).toString().padLeft(2, '0');
  final m = s % 3600 ~/ 60;
  return h > 0 ? '$h:${m.toString().padLeft(2, '0')}:$sec' : '$m:$sec';
}

String _verb(PresenceType type) => switch (type) {
  PresenceType.playing => 'Playing',
  PresenceType.listening => 'Listening',
  PresenceType.watching => 'Watching',
  PresenceType.competing => 'Competing',
};

IconData _typeIcon(PresenceType type) => switch (type) {
  PresenceType.playing => Icons.sports_esports_rounded,
  PresenceType.listening => Icons.headphones_rounded,
  PresenceType.watching => Icons.tv_rounded,
  PresenceType.competing => Icons.emoji_events_rounded,
};

class DiscordPreview extends StatelessWidget {
  final DiscordProfile? profile;
  final DiscordStatus status;
  final String customStatus;
  final DiscordPresence? presence;
  final DateTime now;

  const DiscordPreview({
    super.key,
    required this.profile,
    required this.status,
    required this.customStatus,
    required this.presence,
    required this.now,
  });

  @override
  Widget build(BuildContext context) {
    final name = profile?.displayName ?? 'Dartotsu user';
    final accent = profile?.accentColor == null
        ? _D.blurple
        : Color(0xFF000000 | profile!.accentColor!);
    final banner = profile?.bannerUrl();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: _D.card,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: 84,
                    width: double.infinity,
                    child: banner == null
                        ? ColoredBox(color: accent)
                        : cachedNetworkImage(
                            imageUrl: banner,
                            fit: BoxFit.cover,
                          ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: -36,
                    child: _Avatar(
                      url: profile?.avatarUrl(256),
                      size: 76,
                      status: status,
                      ring: _D.card,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 44, 16, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: _D.text,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (profile != null)
                      Text(
                        profile!.username,
                        style: const TextStyle(color: _D.muted, fontSize: 13),
                      ),
                    if (customStatus.trim().isNotEmpty) ...[
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: _D.panel,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          customStatus.trim(),
                          style: const TextStyle(color: _D.text, fontSize: 13),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _D.panel,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: presence == null
                    ? Text(
                        getString.dcLiveNothing,
                        style: const TextStyle(color: _D.muted, fontSize: 13),
                      )
                    : _Activity(presence: presence!, now: now),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        _MemberRow(
          name: name,
          avatar: profile?.avatarUrl(64),
          status: status,
          presence: presence,
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  final String? url;
  final double size;
  final DiscordStatus status;
  final Color ring;

  const _Avatar({
    required this.url,
    required this.size,
    required this.status,
    required this.ring,
  });

  @override
  Widget build(BuildContext context) {
    final dot = size * 0.3;
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Container(
            width: size,
            height: size,
            padding: EdgeInsets.all(size * 0.07),
            decoration: BoxDecoration(shape: BoxShape.circle, color: ring),
            child: ClipOval(
              child: ColoredBox(
                color: _D.blurple,
                child: url == null
                    ? Icon(
                        Icons.person_rounded,
                        color: Colors.white,
                        size: size * 0.5,
                      )
                    : cachedNetworkImage(
                        imageUrl: url,
                        width: size,
                        height: size,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: dot,
              height: dot,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: status.color,
                border: Border.all(color: ring, width: size * 0.05),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Activity extends StatelessWidget {
  final DiscordPresence presence;
  final DateTime now;

  const _Activity({required this.presence, required this.now});

  @override
  Widget build(BuildContext context) {
    final p = presence;
    final named = p.type != PresenceType.playing;
    final ms = now.millisecondsSinceEpoch;
    final start = p.start;
    final end = p.end;
    Widget? time;
    if (start != null && end != null && end > start) {
      final total = end - start;
      final done = (ms - start).clamp(0, total);
      time = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: done / total,
              minHeight: 4,
              backgroundColor: Colors.white12,
              color: _D.text,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _clock(Duration(milliseconds: done)),
                style: const TextStyle(color: _D.muted, fontSize: 11),
              ),
              Text(
                _clock(Duration(milliseconds: total)),
                style: const TextStyle(color: _D.muted, fontSize: 11),
              ),
            ],
          ),
        ],
      );
    } else if (start != null) {
      time = _TimerLine(
        type: p.type,
        text: _clock(Duration(milliseconds: ms - start)),
      );
    } else if (end != null) {
      time = _TimerLine(
        type: p.type,
        text: '${_clock(Duration(milliseconds: end - ms))} left',
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                named ? '${_verb(p.type)} ${p.name}' : _verb(p.type),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: _D.text,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Icon(Icons.more_horiz_rounded, color: _D.muted, size: 20),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (p.largeImage != null)
              SizedBox(
                width: 64,
                height: 64,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: cachedNetworkImage(
                        imageUrl: p.largeImage,
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                        placeholder: (_, _) => const _CoverFallback(),
                        errorWidget: (_, _, _) => const _CoverFallback(),
                      ),
                    ),
                    if (p.smallImage != null)
                      Positioned(
                        right: -6,
                        bottom: -6,
                        child: Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: _D.panel, width: 3),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: cachedNetworkImage(
                            imageUrl: p.smallImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            if (p.largeImage != null) const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    named ? p.details : p.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: _D.text,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (!named)
                    Text(
                      p.details,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: _D.text, fontSize: 13),
                    ),
                  if (p.state != null)
                    Text(
                      p.state!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: _D.muted, fontSize: 13),
                    ),
                  ?time,
                ],
              ),
            ),
          ],
        ),
        for (final b in p.buttons.take(2)) ...[
          const SizedBox(height: 8),
          Container(
            height: 32,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _D.button,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              b.label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: _D.text,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _MemberRow extends StatelessWidget {
  final String name;
  final String? avatar;
  final DiscordStatus status;
  final DiscordPresence? presence;

  const _MemberRow({
    required this.name,
    required this.avatar,
    required this.status,
    required this.presence,
  });

  @override
  Widget build(BuildContext context) {
    final p = presence;
    final shown = p == null
        ? null
        : switch (p.statusDisplay) {
            1 => p.state ?? p.name,
            2 => p.details,
            _ => p.name,
          };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: _D.card,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          _Avatar(url: avatar, size: 36, status: status, ring: _D.card),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: _D.text,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (p != null)
                  Row(
                    children: [
                      Icon(_typeIcon(p.type), color: _D.muted, size: 14),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          shown ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: _D.muted, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Text(
            getString.dcMemberList,
            style: const TextStyle(color: Colors.white38, fontSize: 11),
          ),
        ],
      ),
    );
  }
}

class _CoverFallback extends StatelessWidget {
  const _CoverFallback();

  @override
  Widget build(BuildContext context) => const ColoredBox(
    color: Color(0xFF3F4147),
    child: Center(
      child: Icon(Icons.image_outlined, color: Color(0xFF80848E), size: 24),
    ),
  );
}

class _TimerLine extends StatelessWidget {
  final PresenceType type;
  final String text;

  const _TimerLine({required this.type, required this.text});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 3),
    child: Row(
      children: [
        Icon(_typeIcon(type), color: _D.muted, size: 15),
        const SizedBox(width: 5),
        Text(text, style: const TextStyle(color: _D.muted, fontSize: 12)),
      ],
    ),
  );
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/ThemedContainer.dart';
import '../SocialNavigation.dart';
import 'UserAvatar.dart';

class UserCard extends StatefulWidget {
  final MediaService service;
  final UserBrief user;
  final bool skeleton;
  final bool wide;

  const UserCard({
    super.key,
    required this.service,
    required this.user,
    this.skeleton = false,
    this.wide = false,
  });

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  SocialScreenView get _view => widget.service.socialView!;
  bool _busy = false;

  UserBrief get _u => widget.user;
  bool get _canFollow =>
      !widget.skeleton && _view.canInteract && _u.id != _view.currentUserId;

  Future<void> _toggle() async {
    setState(() => _busy = true);
    unawaited(HapticFeedback.selectionClick());
    final next = await _view.toggleFollow(_u.id);
    if (!mounted) return;
    setState(() => _busy = false);
    if (next == null) return snackString('Could not update follow');
    setState(() => _u.isFollowing = next);
  }

  String get _relation {
    if (_u.isFollowing && _u.isFollower) return 'Mutual';
    if (_u.isFollowing) return 'Following';
    if (_u.isFollower) return 'Follows you';
    return '';
  }

  Widget _wide(BuildContext context) {
    final scheme = context.colorScheme;
    final banner = _u.banner ?? _u.avatar;
    return Clickable(
      onTap: widget.skeleton
          ? null
          : () => openProfile(context, widget.service, id: _u.id, user: _u),
      onLongPress: _canFollow && !_busy ? _toggle : null,
      child: ThemedContainer(
        blur: false,
        padding: EdgeInsets.zero,
        borderRadius: BorderRadius.circular(24),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: SizedBox(
            height: 92,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ColoredBox(color: scheme.secondaryContainer),
                if (banner != null)
                  cachedNetworkImage(
                    imageUrl: banner,
                    fit: BoxFit.cover,
                    cacheWidth: 720,
                  ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        scheme.surfaceContainerHigh.withValues(alpha: 0.96),
                        scheme.surfaceContainerHigh.withValues(alpha: 0.72),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      UserAvatar(url: _u.avatar, name: _u.name, size: 58),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _u.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            if (_relation.isNotEmpty)
                              Text(
                                _relation,
                                style: context.textTheme.labelMedium?.copyWith(
                                  color: _u.isFollowing && _u.isFollower
                                      ? scheme.primary
                                      : scheme.onSurfaceVariant,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (_canFollow) _followButton(scheme),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.wide) return _wide(context);
    final scheme = context.colorScheme;
    final banner = _u.banner ?? _u.avatar;
    return Clickable(
      onTap: widget.skeleton
          ? null
          : () => openProfile(context, widget.service, id: _u.id, user: _u),
      onLongPress: _canFollow && !_busy ? _toggle : null,
      child: ThemedContainer(
        blur: false,
        padding: EdgeInsets.zero,
        borderRadius: BorderRadius.circular(24),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 62,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ColoredBox(color: scheme.secondaryContainer),
                    if (banner != null)
                      cachedNetworkImage(
                        imageUrl: banner,
                        fit: BoxFit.cover,
                        cacheWidth: 480,
                      ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            scheme.surfaceContainerHigh.withValues(alpha: 0.9),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -22),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: scheme.surfaceContainerHigh,
                                width: 3,
                              ),
                            ),
                            child: UserAvatar(
                              url: _u.avatar,
                              name: _u.name,
                              size: 54,
                            ),
                          ),
                          const Spacer(),
                          if (_canFollow) _followButton(scheme),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _u.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            _relation.isEmpty ? ' ' : _relation,
                            style: context.textTheme.labelSmall?.copyWith(
                              color: _u.isFollowing && _u.isFollower
                                  ? scheme.primary
                                  : scheme.onSurfaceVariant,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _followButton(ColorScheme scheme) {
    final following = _u.isFollowing;
    return SizedBox(
      height: 32,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 220),
        child: following
            ? OutlinedButton(
                key: const ValueKey('unfollow'),
                style: OutlinedButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  minimumSize: const Size(0, 32),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                ),
                onPressed: _busy ? null : _toggle,
                child: const Text('Following'),
              )
            : FilledButton(
                key: const ValueKey('follow'),
                style: FilledButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  minimumSize: const Size(0, 32),
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                ),
                onPressed: _busy ? null : _toggle,
                child: const Text('Follow'),
              ),
      ),
    );
  }
}

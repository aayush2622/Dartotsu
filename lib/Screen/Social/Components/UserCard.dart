import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/ProfileCard.dart';
import '../SocialNavigation.dart';

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
  String get _tag => 'user-${_u.id}';
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

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final mutual = _u.isFollowing && _u.isFollower;
    return ProfileCard(
      name: _u.name,
      avatar: _u.avatar,
      banner: _u.banner ?? _u.avatar,
      skeleton: widget.skeleton,
      wide: widget.wide,
      heroTag: widget.skeleton ? null : _tag,
      onTap: () => openProfile(
        context,
        widget.service,
        id: _u.id,
        user: _u,
        heroTag: _tag,
      ),
      onLongPress: _canFollow && !_busy ? _toggle : null,
      chip: _relation.isEmpty
          ? null
          : ProfilePill(
              _relation,
              color: mutual ? scheme.primary : scheme.onSurfaceVariant,
            ),
      action: _canFollow ? _followButton(scheme) : null,
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

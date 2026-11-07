import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/CopyToClip.dart';
import 'TogetherBackend.dart';
import 'TogetherChat.dart';
import 'TogetherController.dart';
import 'TogetherLink.dart';

class TogetherRoomView extends StatelessWidget {
  final TogetherController session;
  final VoidCallback? onClose;
  final Widget? stage;
  final List<Widget> leading;
  final ScrollController? scroll;

  const TogetherRoomView({super.key, required this.session, this.onClose})
    : stage = null,
      leading = const [],
      scroll = null;

  const TogetherRoomView.inline({
    super.key,
    required this.session,
    required Widget this.stage,
    this.leading = const [],
    this.scroll,
    this.onClose,
  });

  TogetherController get s => session;

  void _invite() => copyToClipboard(
    roomLink(s.room, s.serverLabel, s.client.defaultServer),
    message: getString.togetherInviteCopied,
  );

  void _share() => shareText(
    getString.togetherShareText(
      roomLink(s.room, s.serverLabel, s.client.defaultServer),
    ),
  );

  @override
  Widget build(BuildContext context) =>
      Watch(() => stage == null ? _room(context) : _inline(context));

  Widget _inline(BuildContext context) => Column(
    children: [
      Expanded(
        child: CustomScrollView(
          controller: scroll,
          slivers: [
            SliverToBoxAdapter(child: stage),
            for (final item in leading) SliverToBoxAdapter(child: item),
            SliverToBoxAdapter(child: _header(context)),
            SliverToBoxAdapter(child: _members(context)),
            SliverToBoxAdapter(child: _nowPlaying(context)),
            TogetherChatSliver(session: s),
          ],
        ),
      ),
      TogetherComposer(session: s, scroll: scroll),
    ],
  );

  Widget _room(BuildContext context) => Column(
    children: [
      _header(context),
      _members(context),
      _nowPlaying(context),
      Expanded(child: TogetherChatPanel(session: s)),
    ],
  );

  Widget _header(BuildContext context) {
    final scheme = context.colorScheme;
    final connecting = s.status.value == TogetherStatus.connecting;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gapXs,
        Dimens.pagePad,
        Dimens.gapSm,
      ),
      child: Material(
        color: scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(28),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 8, 10),
          child: Row(
            children: [
              Icon(Icons.groups_rounded, color: scheme.primary),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      s.room,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      connecting
                          ? getString.togetherConnecting
                          : '${getString.togetherWatchingCount(s.users.length)} · ${s.latency.value} ms',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton.filledTonal(
                tooltip: getString.togetherCopyInvite,
                icon: const Icon(Icons.link_rounded),
                onPressed: _invite,
              ),
              IconButton.filledTonal(
                tooltip: getString.togetherShareInvite,
                icon: const Icon(Icons.share_rounded),
                onPressed: _share,
              ),
              IconButton(
                tooltip: getString.togetherLeave,
                color: scheme.error,
                icon: const Icon(Icons.logout_rounded),
                onPressed: () {
                  unawaited(s.leave());
                  onClose?.call();
                },
              ),
              if (onClose != null)
                IconButton(
                  icon: const Icon(Icons.close_rounded),
                  onPressed: onClose,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _members(BuildContext context) => SizedBox(
    height: 76,
    child: ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      children: [for (final u in s.users) _member(context, u)],
    ),
  );

  Widget _member(BuildContext context, TogetherUser u) {
    final scheme = context.colorScheme;
    final mine = u.name == s.client.username;
    final host = u.isHost || (mine && s.isHost);
    return Padding(
      padding: EdgeInsetsDirectional.only(end: Dimens.gap),
      child: SizedBox(
        width: 68,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Badge(
              isLabelVisible: host,
              backgroundColor: scheme.tertiary,
              label: Icon(
                Icons.star_rounded,
                size: 10,
                color: scheme.onTertiary,
              ),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: mine
                    ? scheme.primaryContainer
                    : scheme.secondaryContainer,
                child: Text(
                  u.name.isEmpty ? '?' : u.name[0].toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: mine
                        ? scheme.onPrimaryContainer
                        : scheme.onSecondaryContainer,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              mine ? getString.togetherYou : u.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: context.textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget _nowPlaying(BuildContext context) {
    final scheme = context.colorScheme;
    final host = s.hostUser;
    final other =
        host ??
        s.users
            .where((u) => !u.file.isEmpty && u.name != s.client.username)
            .firstOrNull;
    if (other == null || other.file.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        0,
        Dimens.pagePad,
        Dimens.gapSm,
      ),
      child: Material(
        color: scheme.secondaryContainer.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 8, 10),
          child: Row(
            children: [
              Icon(
                Icons.smart_display_rounded,
                color: scheme.onSecondaryContainer,
              ),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getString.togetherNowPlaying,
                      style: context.textTheme.labelSmall?.copyWith(
                        color: scheme.onSecondaryContainer,
                      ),
                    ),
                    Text(
                      other.file.name ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: scheme.onSecondaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              if (s.isGuest && s.hostTag != null)
                IconButton.filled(
                  tooltip: getString.togetherOpenHost,
                  icon: const Icon(Icons.play_arrow_rounded),
                  onPressed: s.openHost,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

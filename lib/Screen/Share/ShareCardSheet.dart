import '../../Widgets/Components/ScrollConfig.dart';

import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/AppSheet.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'ShareCard.dart';
import 'ShareCardState.dart';

Future<void> showShareCard(
  BuildContext context,
  MediaService service,
  Media media,
) => showCustomBottomDialog<void>(
  context,
  ShareCardSheet(service: service, media: media),
);

Future<void> showShareList(
  BuildContext context,
  MediaService service, {
  int? userId,
  String? name,
  String? avatar,
  SocialUser? user,
}) => showCustomBottomDialog<void>(
  context,
  ShareCardSheet(
    service: service,
    userId: userId,
    name: name,
    avatar: avatar,
    user: user,
  ),
);

Future<void> showShareWidget(
  BuildContext context,
  MediaService service, {
  required Widget card,
  required String fileName,
  String? link,
}) => showCustomBottomDialog<void>(
  context,
  ShareCardSheet(service: service, card: card, fileName: fileName, link: link),
);

class ShareCardSheet extends StatefulWidget {
  final MediaService service;
  final Media? media;
  final int? userId;
  final String? name;
  final String? avatar;
  final SocialUser? user;
  final Widget? card;
  final String? fileName;
  final String? link;

  const ShareCardSheet({
    super.key,
    required this.service,
    this.media,
    this.userId,
    this.name,
    this.avatar,
    this.user,
    this.card,
    this.fileName,
    this.link,
  });

  @override
  State<ShareCardSheet> createState() => _ShareCardSheetState();
}

class _ShareCardSheetState extends State<ShareCardSheet>
    with ScreenStateHost<ShareCardSheet, ShareCardState> {
  @override
  ShareCardState buildState() => ShareCardState(
    widget.service,
    widget.media,
    userId: widget.userId,
    name: widget.name,
    picture: widget.avatar,
    user: widget.user,
    custom: widget.card,
    customName: widget.fileName,
    customLink: widget.link,
  );

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final busy = state.busy.value;
    return AppSheet(
      title: state.isList ? getString.shareCardList : getString.shareCard,
      child: ScrollConfig(
        context,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            0,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (state.isList)
                Padding(
                  padding: EdgeInsets.only(bottom: Dimens.gap),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: AppChoiceChips<int>(
                      value: state.mode,
                      onChanged: state.setMode,
                      options: [
                        AppSegment(0, label: getString.anime),
                        AppSegment(1, label: getString.manga),
                        if (state.user != null)
                          AppSegment(2, label: getString.profile),
                      ],
                    ),
                  ),
                ),
              _card(context),
              SizedBox(height: Dimens.gapLg),
              Row(
                children: [
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: busy || !state.ready
                          ? null
                          : () => unawaited(state.share()),
                      icon: const Icon(Icons.ios_share_rounded),
                      label: Text(getString.share),
                    ),
                  ),
                  SizedBox(width: Dimens.gap),
                  Expanded(
                    child: FilledButton.tonalIcon(
                      onPressed: busy || !state.ready
                          ? null
                          : () => unawaited(state.save()),
                      icon: const Icon(Icons.download_rounded),
                      label: Text(getString.save),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card(BuildContext context) {
    if (state.isCustom) {
      return Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: RepaintBoundary(key: state.boundary, child: state.custom),
        ),
      );
    }
    if (state.isStats) {
      return Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: RepaintBoundary(
            key: state.boundary,
            child: ProfileShareCard(
              user: state.user!,
              service: widget.service.name,
              link: state.profileLink,
            ),
          ),
        ),
      );
    }
    if (state.isList) {
      if (state.loading.value) {
        return const Padding(
          padding: EdgeInsets.all(48),
          child: Center(child: CircularProgressIndicator()),
        );
      }
      if (!state.ready) {
        return EmptyState(
          icon: Icons.inbox_rounded,
          title: getString.shareCardListEmpty,
        );
      }
    }
    final card = state.isList
        ? ListShareCard(
            name: state.userName,
            avatar: state.avatar,
            service: widget.service.name,
            link: state.profileLink,
            anime: state.anime.value,
            top: state.top,
            count: state.count,
            completed: state.completed,
            mean: state.mean,
          )
        : TitleShareCard(media: widget.media!, service: widget.service.name);
    return Center(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: RepaintBoundary(key: state.boundary, child: card),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaService.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/ProfileCard.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Nav/DpadLayers.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'FollowState.dart';

class FollowScreen extends StatefulWidget {
  final MediaService service;
  final String userId;
  final bool followers;
  final String? userName;

  const FollowScreen({
    super.key,
    required this.service,
    required this.userId,
    required this.followers,
    this.userName,
  });

  @override
  State<FollowScreen> createState() => _FollowScreenState();
}

class _FollowScreenState extends BaseScreen<FollowScreen>
    with ScreenStateHost<FollowScreen, FollowState> {
  @override
  FollowState buildState() => FollowState(
    service: widget.service,
    userId: widget.userId,
    followers: widget.followers,
    userName: widget.userName,
  );

  @override
  Widget buildContent(BuildContext context) {
    final title = state.title;
    final loading = state.loading;
    final users = state.visible;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: state.barTitle,
        actions: [
          IconButton(
            tooltip: state.wide.value
                ? getString.gridView
                : getString.fullWidth,
            icon: Icon(
              state.wide.value
                  ? Icons.grid_view_rounded
                  : Icons.view_agenda_rounded,
            ),
            onPressed: state.toggleWide,
          ),
        ],
      ),
      body: state.failed.value
          ? EmptyState(
              icon: Icons.cloud_off_rounded,
              failed: true,
              title: getString.couldntLoadTitle(title),
              onAction: state.load,
            )
          : Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    Dimens.pagePad,
                    Dimens.gapSm,
                    Dimens.pagePad,
                    Dimens.gapSm,
                  ),
                  child: TextField(
                    onChanged: state.onQueryChanged,
                    decoration: InputDecoration(
                      hintText: state.searchHint,
                      prefixIcon: const Icon(Icons.search_rounded),
                    ),
                  ),
                ),
                if (state.canFilter)
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      Dimens.pagePad,
                      0,
                      Dimens.pagePad,
                      Dimens.gapSm,
                    ),
                    child: AppChoiceChips<FollowFilter>(
                      scrollable: true,
                      value: state.filter.value,
                      onChanged: state.setFilter,
                      options: [
                        AppSegment(FollowFilter.all, label: getString.all),
                        AppSegment(
                          FollowFilter.mutual,
                          label: getString.followsMutual,
                        ),
                        AppSegment(
                          FollowFilter.notMutual,
                          label: getString.followsNotMutual,
                        ),
                      ],
                    ),
                  ),
                Expanded(
                  child: !loading && users.isEmpty
                      ? EmptyState(
                          icon: Icons.group_outlined,
                          title: !state.filtering
                              ? getString.nobodyHereYet
                              : getString.noMatches,
                        )
                      : NotificationListener<ScrollNotification>(
                          onNotification: state.onScroll,
                          child: ScrollConfig(
                            context,
                            child: Skeletonizer(
                              enabled: loading,
                              child: state.wide.value
                                  ? ListView.separated(
                                      padding: EdgeInsets.fromLTRB(
                                        Dimens.pagePad,
                                        Dimens.gapSm,
                                        Dimens.pagePad,
                                        Dimens.gapXl,
                                      ),
                                      itemCount: users.length,
                                      separatorBuilder: (_, _) =>
                                          SizedBox(height: Dimens.gapSm),
                                      itemBuilder: (_, i) => state.card(
                                        users[i],
                                        i,
                                        loading,
                                        wide: true,
                                      ),
                                    )
                                  : DpadColumn(
                                      child: GridView.builder(
                                        padding: EdgeInsets.fromLTRB(
                                          Dimens.pagePad,
                                          Dimens.gapSm,
                                          Dimens.pagePad,
                                          Dimens.gapXl,
                                        ),
                                        gridDelegate:
                                            ProfileCard.gridDelegate(),
                                        itemCount: users.length,
                                        itemBuilder: (_, i) =>
                                            state.card(users[i], i, loading),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                ),
                if (state.loadingMore.value)
                  const LinearProgressIndicator(minHeight: 3),
              ],
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Api/Services/MangaBaka/Community.dart';
import '../../Api/Services/MangaBaka/Data/Community.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import 'Components/StackCard.dart';
import 'StackScreen.dart';
import 'StacksState.dart';

class StacksScreen extends StatefulWidget {
  final String? owner;
  final String? ownerName;

  const StacksScreen({super.key, this.owner, this.ownerName});

  @override
  State<StacksScreen> createState() => _StacksScreenState();
}

void openStacksBy(BuildContext context, StackOwner owner) => navigateToPage(
  context,
  StacksScreen(owner: owner.username, ownerName: owner.label),
);

class _StacksScreenState extends BaseScreen<StacksScreen>
    with ScreenStateHost<StacksScreen, StacksState> {
  @override
  StacksState buildState() => StacksState(owner: widget.owner);

  String _label(StackScope scope) => switch (scope) {
    StackScope.all => getString.stacksAll,
    StackScope.featured => getString.stacksFeatured,
    StackScope.mine => getString.stacksMine,
    StackScope.saved => getString.stacksSaved,
    StackScope.following => getString.stacksFollowing,
  };

  @override
  Widget buildContent(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppScreenBar(
      title: widget.owner == null
          ? getString.stacks
          : getString.userStacks(widget.ownerName ?? widget.owner!),
    ),
    body: Watch(() => _body(context)),
  );

  Widget _body(BuildContext context) {
    final skeleton = state.first.value && state.loading.value;
    final items = state.items.toList();
    final scopes = state.scopes;
    return Column(
      children: [
        if (scopes.length > 1)
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.pagePad,
              vertical: Dimens.gapSm,
            ),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: ScrollConfig(
                context,
                child: ScrollConfig(context, child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: AppChoiceChips<StackScope>(
                    value: state.scope.value,
                    onChanged: state.setScope,
                    options: [
                      for (final s in scopes) AppSegment(s, label: _label(s)),
                    ],
                  ),
                )),
              ),
            ),
          ),
        Expanded(
          child: state.needsScope.value
              ? EmptyState(
                  icon: Icons.lock_outline_rounded,
                  title: getString.stacksScopeNeeded,
                  actionLabel: getString.stacksSignInAgain,
                  onAction: state.signInAgain,
                )
              : state.failed.value && items.isEmpty
              ? EmptyState(
                  icon: Icons.cloud_off_rounded,
                  failed: true,
                  title: getString.stacksCouldntLoad,
                  actionLabel: getString.retry,
                  onAction: () => state.load(reset: true),
                )
              : !skeleton && items.isEmpty && !state.loading.value
              ? EmptyState(
                  icon: Icons.collections_bookmark_rounded,
                  title: getString.stacksEmpty,
                )
              : RefreshIndicator(
                  onRefresh: () => state.load(reset: true),
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (n) {
                      if (n.metrics.extentAfter < 600) {
                        state.load();
                      }
                      return false;
                    },
                    child: ScrollConfig(
                      context,
                      child: Skeletonizer(
                        enabled: skeleton,
                        child: ListView.separated(
                          physics: const AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.fromLTRB(
                            Dimens.pagePad,
                            Dimens.gapSm,
                            Dimens.pagePad,
                            120,
                          ),
                          itemCount: skeleton ? 6 : items.length,
                          separatorBuilder: (_, _) =>
                              SizedBox(height: Dimens.gapSm),
                          itemBuilder: (context, i) {
                            if (skeleton) {
                              return StackCard(
                                stack: MangaBakaStack.placeholder,
                              );
                            }
                            final stack = items[i];
                            final card = StackCard(
                              key: ValueKey(stack.id),
                              stack: stack,
                              onTap: () => navigateToPage(
                                context,
                                StackScreen(stack: stack),
                              ),
                              onOwner:
                                  widget.owner == null &&
                                      stack.owner.username.isNotEmpty
                                  ? () => openStacksBy(context, stack.owner)
                                  : null,
                            );
                            return i < 10 ? card.animateStagger(i) : card;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}

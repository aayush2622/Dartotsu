import 'package:flutter/material.dart';
import '../../../Widgets/Components/AppBars.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Widgets/Components/ProfileCard.dart';
import 'Components/DeveloperCard.dart';
import 'Developer.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'DeveloperState.dart';

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends BaseScreen<DeveloperPage>
    with ScreenStateHost<DeveloperPage, DeveloperState> {
  @override
  DeveloperState buildState() => DeveloperState();

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder<List<Developer>>(
        future: state.future,
        builder: (context, snapshot) => Watch(() {
          final loading = snapshot.connectionState != ConnectionState.done;
          final items = state.itemsFor(loading: loading, list: snapshot.data);

          return CustomScrollConfig(
            context,
            children: [
              AppSliverBar(
                title: getString.contributors,
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
              if (!loading && items.isEmpty)
                SliverFillRemaining(child: _empty(context))
              else
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(
                    Dimens.pagePad,
                    Dimens.gapXs,
                    Dimens.pagePad,
                    Dimens.gapXl,
                  ),
                  sliver: state.wide.value
                      ? SliverList.separated(
                          itemCount: items.length,
                          separatorBuilder: (_, _) =>
                              SizedBox(height: Dimens.gapSm),
                          itemBuilder: (context, i) => DeveloperCard(
                            developer: items[i],
                            skeleton: loading,
                            wide: true,
                          ),
                        )
                      : SliverGrid(
                          gridDelegate: ProfileCard.gridDelegate(),
                          delegate: SliverChildBuilderDelegate(
                            (context, i) => DeveloperCard(
                              developer: items[i],
                              skeleton: loading,
                            ),
                            childCount: items.length,
                          ),
                        ),
                ),
            ],
          );
        }),
      ),
    );
  }

  Widget _empty(BuildContext context) => EmptyState(
    icon: Icons.cloud_off_rounded,
    title: getString.contributorsLoadFailed,
    failed: true,
  );
}

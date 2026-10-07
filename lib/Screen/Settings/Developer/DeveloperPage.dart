import 'package:flutter/material.dart';
import '../../../Widgets/Components/AppBars.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Widgets/Components/ProfileCard.dart';
import 'Components/DeveloperCard.dart';
import 'Developer.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Core/State/State.dart';

const _skeletonDeveloper = Developer(
  name: 'Loading name',
  githubId: '',
  pfp: '',
  banner: '',
  uri: '',
  role: 'Loading role',
);

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends BaseScreen<DeveloperPage> {
  late final _future = loadDevelopers();
  late final _wide =
      (PrefManager.getCustomVal<bool>('followWide') ?? false).live;

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FutureBuilder<List<Developer>>(
        future: _future,
        builder: (context, snapshot) {
          final loading = snapshot.connectionState != ConnectionState.done;
          final developers = snapshot.data ?? const [];
          final items = loading
              ? List.filled(8, _skeletonDeveloper)
              : developers;

          final grid = CustomScrollConfig(
            context,
            children: [
              AppSliverBar(
                title: getString.contributors,
                actions: [
                  IconButton(
                    tooltip: _wide.value ? 'Grid view' : 'Full width',
                    icon: Icon(
                      _wide.value
                          ? Icons.grid_view_rounded
                          : Icons.view_agenda_rounded,
                    ),
                    onPressed: () {
                      _wide.value = !_wide.value;
                      PrefManager.setCustomVal<bool>('followWide', _wide.value);
                    },
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
                  sliver: _wide.value
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

          return loading ? Skeletonizer(child: grid) : grid;
        },
      ),
    );
  }

  Widget _empty(BuildContext context) => EmptyState(
    icon: Icons.cloud_off_rounded,
    title: getString.contributorsLoadFailed,
    failed: true,
  );
}

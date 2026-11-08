import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/LoadSvg.dart';
import '../../../Widgets/Components/SectionCard.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../ExtensionBrowserState.dart';

void showExtensionReposSheet(
  BuildContext context,
  ExtensionBrowserState state,
  ItemType type,
) {
  final manager = find<ExtensionManager>();
  showCustomBottomDialog(
    context,
    AppSheet(
      title: getString.repositoriesTitle(type.name.capitalizeFirst),
      child: Builder(
        builder: (sheet) => Watch(() {
          final ext = manager[type].state(type);
          final repos = ext.repos.value;
          final active = ext.activeRepo.value;
          return ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
            children: [
              _progress(
                sheet,
                ext.loadingRepo.value,
                ext.repoLoadProgress.value,
              ),
              if (repos.isEmpty)
                EmptyState(
                  icon: Icons.storage_rounded,
                  title: getString.noRepositories,
                )
              else
                for (var i = 0; i < repos.length; i++)
                  _repoTile(
                    sheet,
                    state,
                    type,
                    repos[i],
                    active?.url == repos[i].url,
                    groupedRadius(i, repos.length),
                  ),
              if (ext.loadingRepo.value)
                Skeletonizer(
                  child: SheetTile(
                    tinted: true,
                    radius: groupedRadius(0, 1),
                    leading: const Bone.circle(size: 36),
                    title: const Text('Repository name'),
                    subtitle: const Text(
                      'https://example.com/repo/index.min.json',
                    ),
                  ),
                ),
              const SizedBox(height: 12),
              FilledButton.icon(
                onPressed: () => state.addRepository(type),
                icon: const Icon(Icons.add_rounded),
                label: Text(getString.addRepository),
              ),
              if (manager[type].importExtensions.isNotEmpty) ...[
                const SizedBox(height: 8),
                OutlinedButton.icon(
                  onPressed: () => state.importRepositoryFile(type),
                  icon: const Icon(Icons.upload_file_rounded),
                  label: Text(getString.importRepositoryFile),
                ),
              ],
              const SizedBox(height: 16),
            ],
          );
        }),
      ),
    ),
  );
}

Widget _progress(BuildContext context, bool loading, double? progress) {
  final scheme = context.colorScheme;
  return AnimatedSwitcher(
    duration: animDuration(220),
    transitionBuilder: (child, animation) => FadeTransition(
      opacity: animation,
      child: SizeTransition(
        sizeFactor: animation,
        axisAlignment: -1,
        child: child,
      ),
    ),
    child: !loading
        ? const SizedBox.shrink(key: ValueKey('idle'))
        : Padding(
            key: const ValueKey('loading'),
            padding: const EdgeInsets.only(bottom: 12),
            child: SectionCard(
              child: Row(
                children: [
                  Icon(
                    Icons.cloud_download_rounded,
                    color: scheme.primary,
                    size: 22,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getString.downloadingRepository,
                          style: context.textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: LinearProgressIndicator(
                            value: progress,
                            minHeight: 6,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (progress != null) ...[
                    const SizedBox(width: 12),
                    Text(
                      '${(progress * 100).toStringAsFixed(0)}%',
                      style: context.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: scheme.primary,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
  );
}

Widget _repoTile(
  BuildContext context,
  ExtensionBrowserState state,
  ItemType type,
  Repo repo,
  bool selected,
  BorderRadius radius,
) {
  final scheme = context.colorScheme;
  return SheetTile(
    tinted: true,
    radius: radius,
    selected: selected,
    onTap: () async {
      if (!selected) await state.selectRepo(type, repo);
    },
    onLongPress: () => copyToClipboard(repo.url),
    leading: repo.iconUrl != null
        ? ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              repo.iconUrl!,
              width: 36,
              height: 36,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => const Icon(Icons.storage_rounded),
            ),
          )
        : loadSvg(
            'assets/svg/github.svg',
            width: 28,
            height: 28,
            color: scheme.primary,
          ),
    title: Text(repo.name ?? Uri.tryParse(repo.url)?.host ?? repo.url),
    subtitle: Text(
      '${repo.url}\n${getString.repoExtensionsCount(repo.extensions ?? '?')}',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ),
    trailing: IconButton(
      icon: const Icon(Icons.delete_rounded),
      onPressed: () => state.removeRepo(type, repo.url),
    ),
  );
}

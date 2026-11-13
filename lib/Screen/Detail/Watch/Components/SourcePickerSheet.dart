import 'dart:async';

import '../../../../Widgets/Components/Clickable.dart';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../Api/Services/Extension/LocalSource.dart';
import '../../../../Api/Services/Extension/Services.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/AppSpinner.dart';
import '../../../../Widgets/Components/AppTabs.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../../Widgets/Components/LoadSvg.dart';
import '../../../../Widgets/Components/SheetTile.dart';

Future<Source?> showSourcePicker(
  BuildContext context, {
  required ItemType type,
  required Source? current,
}) => showCustomBottomDialog<Source>(
  context,
  AppSheet(
    title: getString.watchSource,
    heightFactor: 0.8,
    child: _SourcePicker(type: type, current: current),
  ),
);

class _SourcePicker extends StatefulWidget {
  final ItemType type;
  final Source? current;

  const _SourcePicker({required this.type, required this.current});

  @override
  State<_SourcePicker> createState() => _SourcePickerState();
}

class _SourcePickerState extends State<_SourcePicker> {
  late final services = extensionServicesFor(widget.type);
  late final selected = (extensionServiceFor(widget.type)?.id).live;
  final loading = false.live;
  final query = ''.live;
  int _run = 0;

  Future<void> _select(String id) async {
    if (selected.value == id) return;
    final run = ++_run;
    selected.value = id;
    loading.value = true;
    await setExtensionService(widget.type, id);
    await ensureSourcesReady(widget.type);
    if (!mounted || run != _run) return;
    selected.value = extensionServiceFor(widget.type)?.id;
    loading.value = false;
    findBuilt<RefreshController>()?.all();
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _tabs() => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.symmetric(horizontal: Dimens.gapSm),
    child: Row(
      children: [
        for (final service in services)
          Clickable(
            press: false,
            onTap: () => unawaited(_select(service.id)),
            child: AppTab(
              label: service.name,
              selected: selected.value == service.id,
              icon: (color) => ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: assetIcon(service.icon, size: 18),
              ),
            ),
          ),
      ],
    ),
  );

  Widget _search(BuildContext context) => Padding(
    padding: EdgeInsets.fromLTRB(Dimens.pagePad, 0, Dimens.pagePad, 8),
    child: TextField(
      onChanged: (v) => query.value = v.trim().toLowerCase(),
      decoration: InputDecoration(
        hintText: getString.searchExtensions,
        prefixIcon: const Icon(Icons.search_rounded),
        isDense: true,
      ),
    ),
  );

  Widget _list(BuildContext context) {
    final scheme = context.colorScheme;
    final names = <String, int>{};
    final all = watchSources(widget.type);
    for (final s in all) {
      names[s.name ?? ''] = (names[s.name ?? ''] ?? 0) + 1;
    }
    final term = query.value;
    final sources = [
      for (final s in all)
        if (term.isEmpty || (s.name ?? '').toLowerCase().contains(term)) s,
    ];
    final preparing =
        extensionServiceFor(widget.type)
            ?.state(widget.type)
            .loadingInstalled
            .value ??
        false;
    if (sources.isEmpty && preparing) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppSpinner(),
            SizedBox(height: Dimens.gap),
            Text(
              getString.extensionsLoading,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }
    if (sources.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            getString.noInstalledSourcesYet(widget.type.name),
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
      itemCount: sources.length,
      itemBuilder: (_, i) {
        final s = sources[i];
        return SheetTile(
          tinted: true,
          radius: groupedRadius(i, sources.length),
          selected: s.id == widget.current?.id,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 36,
              height: 36,
              child: cachedNetworkImage(
                imageUrl: s.iconUrl ?? '',
                width: 36,
                height: 36,
                fit: BoxFit.cover,
                errorWidget: (_, _, _) => Icon(
                  s is LocalSource
                      ? Icons.folder_rounded
                      : Icons.extension_rounded,
                  color: scheme.onSurfaceVariant,
                  size: 20,
                ),
              ),
            ),
          ),
          title: Text(s.name ?? ''),
          subtitle: (s.lang ?? '').isEmpty
              ? null
              : Text((s.lang ?? '').toUpperCase()),
          onTap: () => popPage(context, s),
        );
      },
    );
  }

  Widget _build(BuildContext context) => Column(
    children: [
      if (services.length > 1) _tabs(),
      _search(context),
      Expanded(
        child: loading.value
            ? const Center(child: AppSpinner())
            : _list(context),
      ),
    ],
  );
}

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../Engine/MpvFiles.dart';
import '../Engine/PlayerSettings.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/SheetTile.dart';

typedef ShaderPick = Future<void> Function(
  String profile,
  String name,
  List<String>? custom,
);

class ShaderSheet extends StatefulWidget {
  final PlayerSettings Function() settings;
  final ShaderPick onPick;
  final Future<void> Function()? onPreview;
  final bool embedded;
  final List<Widget> header;
  final Live<String?>? problem;

  const ShaderSheet({
    super.key,
    required this.settings,
    required this.onPick,
    this.onPreview,
    this.embedded = false,
    this.header = const [],
    this.problem,
  });

  @override
  State<ShaderSheet> createState() => _ShaderSheetState();
}

class _ShaderSheetState extends State<ShaderSheet> {
  final _profile = 'MID-END'.live;
  final _chosen = ''.live;
  final _custom = <String>[].liveList;
  final _files = <String>[].liveList;
  final _installed = false.live;
  Disposer? _sub;

  @override
  void initState() {
    super.initState();
    final s = widget.settings();
    _profile.value = s.shaderProfile;
    _chosen.value = s.shaders ? s.shader : '';
    _custom.value = s.customShaders;
    _sub = onChange(MpvFiles.shadersVersion, (_) => _refresh());
    _refresh();
  }

  @override
  void dispose() {
    _sub?.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    final files = await MpvFiles.shaders();
    final ok = await MpvFiles.anime4kInstalled();
    if (!mounted) return;
    _files.value = files;
    _installed.value = ok;
  }

  Future<void> _install() async {
    try {
      await MpvFiles.installAnime4K();
    } catch (e) {
      snackString(getString.playerShadersFailed(e.toString()));
    }
  }

  Future<void> _import() async {
    final picked = await FilePicker.pickFile(type: FileType.any);
    final path = picked?.path;
    if (path == null) return;
    final ext = path.toLowerCase();
    if (!ext.endsWith('.glsl') && !ext.endsWith('.hook')) {
      snackString(getString.playerShadersBadFile);
      return;
    }
    await MpvFiles.importShader(path);
  }

  Future<void> _choose(
    String profile,
    String name, {
    List<String>? custom,
  }) async {
    _chosen.value = name;
    _profile.value = profile;
    await widget.onPick(profile, name, custom);
  }

  void _toggleCustom(String file) {
    final next = [..._custom];
    next.contains(file) ? next.remove(file) : next.add(file);
    _custom.value = next;
    _choose(
      customShaderProfile,
      next.isEmpty ? '' : getString.playerShadersCustom,
      custom: next,
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final body = Watch(() {
      final installed = _installed.value;
      final profile = _profile.value;
      final chosen = _chosen.value;
      final problem = widget.problem?.value;
      final installing = MpvFiles.installing.value;
      final progress = MpvFiles.installProgress.value;
      final files = _files.toList();
      final custom = _custom.toList();
      return ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        children: [
          ...widget.header,
          if (widget.onPreview != null && installed) ...[
            FilledButton.tonalIcon(
              onPressed: widget.onPreview,
              icon: const Icon(Icons.preview_rounded),
              label: Text(getString.playerShadersPreview),
            ),
            const SizedBox(height: 12),
          ],
          if (!installed) ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: scheme.secondaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getString.playerShadersMissing,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: scheme.onSecondaryContainer,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    getString.playerShadersMissingDesc,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSecondaryContainer,
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (installing)
                    LinearProgressIndicator(
                      value: progress > 0 ? progress : null,
                    )
                  else
                    FilledButton.icon(
                      onPressed: _install,
                      icon: const Icon(Icons.download_rounded),
                      label: Text(getString.playerShadersDownload),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ] else ...[
            AppSegmented<String>(
              value: profile == customShaderProfile ? 'MID-END' : profile,
              onChanged: (v) => _profile.value = v,
              segments: [
                for (final key in shaderProfiles.keys)
                  AppSegment(key, label: key),
              ],
            ),
            const SizedBox(height: 12),
            SheetTile(
              tinted: true,
              radius: BorderRadius.circular(20),
              leading: const Icon(Icons.blur_off_rounded),
              title: Text(getString.playerShadersOff),
              selected: chosen.isEmpty,
              onTap: () => _choose(profile, ''),
            ),
            const SizedBox(height: 8),
            for (final (i, name)
                in (shaderProfiles[profile == customShaderProfile
                            ? 'MID-END'
                            : profile] ??
                        const {})
                    .keys
                    .indexed)
              SheetTile(
                tinted: true,
                radius: BorderRadius.vertical(
                  top: Radius.circular(i == 0 ? 20 : 6),
                  bottom: Radius.circular(
                    i ==
                            (shaderProfiles[profile == customShaderProfile
                                        ? 'MID-END'
                                        : profile]!
                                    .length -
                                1)
                        ? 20
                        : 6,
                  ),
                ),
                leading: const Icon(Icons.photo_filter_rounded),
                title: Text(name),
                subtitle:
                    problem != null &&
                        chosen == name &&
                        profile != customShaderProfile
                    ? Text(
                        problem,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.bodySmall?.copyWith(
                          color: scheme.error,
                        ),
                      )
                    : null,
                selected: chosen == name && profile != customShaderProfile,
                onTap: () => _choose(
                  profile == customShaderProfile ? 'MID-END' : profile,
                  name,
                ),
              ),
          ],
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Text(
                  getString.playerShadersCustomFiles,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: _import,
                icon: const Icon(Icons.add_rounded),
                label: Text(getString.playerShadersImport),
              ),
            ],
          ),
          if (files.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                getString.playerShadersNone,
                style: context.textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            )
          else
            for (final file in files.where((f) => !f.startsWith('Anime4K_')))
              SheetTile(
                tinted: true,
                radius: BorderRadius.circular(16),
                leading: Icon(
                  custom.contains(file)
                      ? Icons.check_box_rounded
                      : Icons.check_box_outline_blank_rounded,
                ),
                title: Text(file),
                selected: custom.contains(file),
                trailing: IconButton(
                  icon: const Icon(Icons.delete_outline_rounded),
                  onPressed: () => MpvFiles.deleteShader(file),
                ),
                onTap: () => _toggleCustom(file),
              ),
        ],
      );
    });
    return widget.embedded
        ? body
        : AppSheet(
            title: getString.playerShaders,
            heightFactor: 0.8,
            child: body,
          );
  }
}

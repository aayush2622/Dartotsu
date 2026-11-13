import 'package:flutter/material.dart';

import '../../../Api/Discord/DiscordAccount.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppBars.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/BaseScreen.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import 'Components/DiscordConnection.dart';
import 'Components/DiscordPanels.dart';
import 'Components/DiscordPreview.dart';
import 'DiscordSettingsState.dart';

class DiscordSettingsScreen extends StatefulWidget {
  const DiscordSettingsScreen({super.key});

  @override
  State<DiscordSettingsScreen> createState() => _DiscordSettingsScreenState();
}

class _DiscordSettingsScreenState extends BaseScreen<DiscordSettingsScreen>
    with ScreenStateHost<DiscordSettingsScreen, DiscordSettingsState> {
  @override
  DiscordSettingsState buildState() => DiscordSettingsState();

  static const _variables = [
    'title',
    'unit',
    'number',
    'total',
    'progress',
    'position',
    'duration',
    'paused',
  ];

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, box) {
          final wide = box.maxWidth >= 920;
          final pad = EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapXs,
            Dimens.pagePad,
            Dimens.gapXl,
          );
          if (!wide) {
            return CustomScrollConfig(
              context,
              children: [
                AppSliverBar(title: getString.discord),
                SliverPadding(
                  padding: pad,
                  sliver: SliverList.list(
                    children: [_preview(context), ..._panels(context)],
                  ),
                ),
              ],
            );
          }
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 400,
                child: CustomScrollConfig(
                  context,
                  children: [
                    AppSliverBar(title: getString.discord),
                    SliverPadding(
                      padding: pad,
                      sliver: SliverList.list(children: [_preview(context)]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: CustomScrollConfig(
                  context,
                  children: [
                    SliverPadding(
                      padding: pad.copyWith(
                        top: MediaQuery.paddingOf(context).top + 64,
                      ),
                      sliver: SliverList.list(children: _panels(context)),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _preview(BuildContext context) => Watch(() {
    state.track();
    final at = state.now.value;
    final profile = state.account.profile.value;
    final status = state.account.tokenSaved.value
        ? DiscordStatus.of(PrefName.discordStatus.rx.value)
        : DiscordStatus.online;
    final samples = [
      AppSegment(0, label: getString.dcSampleWatching),
      AppSegment(1, label: getString.dcSampleReading),
      AppSegment(2, label: getString.dcSampleBrowsing),
      AppSegment(3, label: getString.dcSampleLive),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: AppChoiceChips<int>(
            options: samples,
            value: state.sample.value,
            onChanged: (v) => state.sample.value = v,
            scrollable: true,
          ),
        ),
        DiscordPreview(
          profile: profile,
          status: status,
          customStatus:
              state.account.tokenSaved.value && PrefName.discordLive.rx.value
              ? PrefName.discordCustomStatus.rx.value
              : '',
          presence: PrefName.discordRpc.rx.value || state.sample.value != 3
              ? state.preview(at)
              : null,
          now: at,
        ),
        const SizedBox(height: 16),
      ],
    );
  });

  List<Widget> _panels(BuildContext context) => [
    DiscordConnection(state: state),
    Watch(() => _status(context)),
    Watch(() => _activity(context)),
    Watch(() => _text(context)),
    Watch(() => _images(context)),
    Watch(() => _buttons(context)),
    Watch(() => _privacy(context)),
  ];

  Widget _status(BuildContext context) {
    final token = state.account.tokenSaved.value;
    final live = PrefName.discordLive.rx.value;
    final current = DiscordStatus.of(PrefName.discordStatus.rx.value);
    final labels = {
      DiscordStatus.online: getString.dcStatusOnline,
      DiscordStatus.idle: getString.dcStatusIdle,
      DiscordStatus.dnd: getString.dcStatusDnd,
      DiscordStatus.invisible: getString.dcStatusInvisible,
    };
    return DPanel(
      title: getString.dcStatusSection,
      icon: Icons.circle_rounded,
      locked: !token,
      lockedNote: getString.dcStatusNeedsToken,
      children: [
        DToggle(
          title: getString.dcControlStatus,
          subtitle: getString.dcControlStatusDesc,
          value: live,
          onChanged: (v) => PrefName.discordLive.rx.value = v,
        ),
        if (live) ...[
          DLabeled(
            title: getString.dcStatusSection,
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final s in DiscordStatus.values)
                  ChoiceChip(
                    selected: s == current,
                    avatar: DStatusDot(s.color),
                    label: Text(labels[s]!),
                    onSelected: (_) => PrefName.discordStatus.rx.value = s.api,
                  ),
              ],
            ),
          ),
          DLabeled(
            title: getString.dcCustomStatus,
            child: DField(
              controller: state.custom,
              hint: getString.dcCustomStatusHint,
              pref: PrefName.discordCustomStatus,
              maxLength: 128,
            ),
          ),
        ],
      ],
    );
  }

  Widget _activity(BuildContext context) {
    final on = PrefName.discordRpc.rx.value;
    final signed = state.signedIn;
    final nameMode = PrefName.discordNameMode.rx.value;
    return DPanel(
      title: getString.dcActivitySection,
      icon: Icons.sports_esports_rounded,
      children: [
        DToggle(
          title: getString.discordRichPresence,
          value: on,
          onChanged: (v) => PrefName.discordRpc.rx.value = v,
        ),
        if (on) ...[
          DToggle(
            title: getString.dcShowWatching,
            value: PrefName.discordShowWatching.rx.value,
            onChanged: (v) => PrefName.discordShowWatching.rx.value = v,
          ),
          DToggle(
            title: getString.dcShowReading,
            value: PrefName.discordShowReading.rx.value,
            onChanged: (v) => PrefName.discordShowReading.rx.value = v,
          ),
          DToggle(
            title: getString.discordBrowsing,
            subtitle: getString.discordBrowsingDesc,
            value: PrefName.discordBrowsing.rx.value,
            onChanged: (v) => PrefName.discordBrowsing.rx.value = v,
          ),
          DLabeled(
            title: getString.discordActivityType,
            subtitle: getString.discordActivityTypeDesc,
            child: AppChoiceChips<String>(
              scrollable: true,
              value: PrefName.discordActivity.rx.value,
              onChanged: (v) => PrefName.discordActivity.rx.value = v,
              options: [
                AppSegment('auto', label: getString.themeModeAuto),
                AppSegment('playing', label: getString.discordPlaying),
                AppSegment('watching', label: getString.discordWatching),
                AppSegment('listening', label: getString.dcListening),
                AppSegment('competing', label: getString.dcCompeting),
              ],
            ),
          ),
          DLabeled(
            title: getString.dcStatusText,
            subtitle: getString.dcStatusTextDesc,
            child: AppChoiceChips<String>(
              scrollable: true,
              value: PrefName.discordStatusDisplay.rx.value,
              onChanged: (v) => PrefName.discordStatusDisplay.rx.value = v,
              options: [
                AppSegment('name', label: getString.dcDisplayName),
                AppSegment('state', label: getString.dcDisplayState),
                AppSegment('details', label: getString.dcDisplayDetails),
              ],
            ),
          ),
          Opacity(
            opacity: signed ? 1 : 0.45,
            child: IgnorePointer(
              ignoring: !signed,
              child: DLabeled(
                title: getString.dcActivityName,
                subtitle: signed ? null : getString.dcAccountOnly,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppChoiceChips<String>(
                      scrollable: true,
                      value: nameMode,
                      onChanged: (v) => PrefName.discordNameMode.rx.value = v,
                      options: [
                        AppSegment('app', label: getString.dcNameApp),
                        AppSegment('title', label: getString.dcNameTitle),
                        AppSegment('custom', label: getString.dcNameCustom),
                      ],
                    ),
                    if (nameMode == 'custom') ...[
                      const SizedBox(height: 10),
                      DField(
                        controller: state.customName,
                        hint: getString.dcCustomNameHint,
                        pref: PrefName.discordCustomName,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _text(BuildContext context) {
    final scheme = context.colorScheme;
    return DPanel(
      title: getString.dcTextSection,
      icon: Icons.text_fields_rounded,
      children: [
        DLabeled(
          title: getString.dcDetails,
          subtitle: getString.dcTemplateHint,
          child: DField(
            controller: state.details,
            focus: state.detailsFocus,
            hint: '{title}',
            pref: PrefName.discordDetailsTemplate,
          ),
        ),
        DLabeled(
          title: getString.dcState,
          subtitle: getString.dcTemplateHint,
          child: DField(
            controller: state.stateLine,
            focus: state.stateFocus,
            hint: '{unit} {progress}',
            pref: PrefName.discordStateTemplate,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getString.dcVariables,
                style: context.textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  for (final v in _variables)
                    ActionChip(
                      label: Text('{$v}'),
                      visualDensity: VisualDensity.compact,
                      onPressed: () => state.insert(v),
                    ),
                ],
              ),
            ],
          ),
        ),
        DToggle(
          title: getString.discordTimer,
          subtitle: getString.discordTimerDesc,
          value: PrefName.discordTimer.rx.value,
          onChanged: (v) => PrefName.discordTimer.rx.value = v,
        ),
        if (PrefName.discordTimer.rx.value)
          DLabeled(
            title: getString.dcTimerStyle,
            child: AppChoiceChips<String>(
              scrollable: true,
              value: PrefName.discordTimerStyle.rx.value,
              onChanged: (v) => PrefName.discordTimerStyle.rx.value = v,
              options: [
                AppSegment('auto', label: getString.dcTimerAuto),
                AppSegment('elapsed', label: getString.dcTimerElapsed),
                AppSegment('remaining', label: getString.dcTimerRemaining),
              ],
            ),
          ),
      ],
    );
  }

  Widget _images(BuildContext context) {
    final on = PrefName.discordImages.rx.value;
    return DPanel(
      title: getString.dcImagesSection,
      icon: Icons.image_rounded,
      children: [
        DToggle(
          title: getString.discordCovers,
          subtitle: getString.discordCoversDesc,
          value: on,
          onChanged: (v) => PrefName.discordImages.rx.value = v,
        ),
        if (on) ...[
          DLabeled(
            title: getString.dcLargeImage,
            child: AppChoiceChips<String>(
              scrollable: true,
              value: PrefName.discordLargeImage.rx.value,
              onChanged: (v) => PrefName.discordLargeImage.rx.value = v,
              options: [
                AppSegment('auto', label: getString.dcLargeAuto),
                AppSegment('cover', label: getString.dcLargeCover),
                AppSegment('logo', label: getString.dcLargeLogo),
              ],
            ),
          ),
          DLabeled(
            title: getString.dcSmallImage,
            child: AppChoiceChips<String>(
              scrollable: true,
              value: PrefName.discordSmallImage.rx.value,
              onChanged: (v) => PrefName.discordSmallImage.rx.value = v,
              options: [
                AppSegment('auto', label: getString.dcSmallAuto),
                AppSegment('none', label: getString.dcSmallNone),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buttons(BuildContext context) {
    final on = PrefName.discordButtons.rx.value;
    return DPanel(
      title: getString.dcButtonsSection,
      icon: Icons.smart_button_rounded,
      children: [
        DToggle(
          title: getString.discordButtons,
          subtitle: getString.discordButtonsDesc,
          value: on,
          onChanged: (v) => PrefName.discordButtons.rx.value = v,
        ),
        if (on) ...[
          DToggle(
            title: getString.dcButtonMedia,
            value: PrefName.discordMediaButton.rx.value,
            onChanged: (v) => PrefName.discordMediaButton.rx.value = v,
          ),
          DToggle(
            title: getString.dcButtonApp,
            value: PrefName.discordAppButton.rx.value,
            onChanged: (v) => PrefName.discordAppButton.rx.value = v,
          ),
          DLabeled(
            title: getString.dcButtonCustom,
            child: Column(
              children: [
                DField(
                  controller: state.buttonLabel,
                  hint: getString.dcButtonLabel,
                  pref: PrefName.discordButtonLabel,
                  maxLength: 32,
                ),
                const SizedBox(height: 10),
                DField(
                  controller: state.buttonUrl,
                  hint: getString.dcButtonUrl,
                  pref: PrefName.discordButtonUrl,
                  maxLength: 512,
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _privacy(BuildContext context) {
    final hide = PrefName.discordHideTitles.rx.value;
    return DPanel(
      title: getString.dcPrivacySection,
      icon: Icons.visibility_off_rounded,
      children: [
        DToggle(
          title: getString.discordHideTitles,
          subtitle: getString.discordHideTitlesDesc,
          value: hide,
          onChanged: (v) => PrefName.discordHideTitles.rx.value = v,
        ),
        if (hide)
          DLabeled(
            title: getString.dcPrivateText,
            child: DField(
              controller: state.privateText,
              hint: getString.dcPrivateHint,
              pref: PrefName.discordPrivateText,
            ),
          ),
      ],
    );
  }
}

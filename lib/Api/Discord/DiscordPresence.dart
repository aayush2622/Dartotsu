import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/Model/Media.dart';

const discordLogo =
    'https://cdn.discordapp.com/emojis/1305525420938100787.gif?size=128&animated=true&name=dartotsu';
const discordRepo = 'https://github.com/aayush2622/Dartotsu';

enum PresenceKind { browsing, viewing, reading, watching }

enum PresenceType {
  playing(0),
  listening(2),
  watching(3),
  competing(5);

  final int code;

  const PresenceType(this.code);
}

class PresenceStyle {
  final bool images;
  final bool buttons;
  final bool timer;
  final bool hideTitles;
  final String activity;
  final String nameMode;
  final String customName;
  final String statusDisplay;
  final String detailsTemplate;
  final String stateTemplate;
  final String largeImage;
  final String smallImage;
  final String timerStyle;
  final bool mediaButton;
  final bool appButton;
  final String buttonLabel;
  final String buttonUrl;
  final String privateText;

  const PresenceStyle({
    this.images = true,
    this.buttons = true,
    this.timer = true,
    this.hideTitles = false,
    this.activity = 'auto',
    this.nameMode = 'app',
    this.customName = '',
    this.statusDisplay = 'name',
    this.detailsTemplate = '',
    this.stateTemplate = '',
    this.largeImage = 'auto',
    this.smallImage = 'auto',
    this.timerStyle = 'auto',
    this.mediaButton = true,
    this.appButton = true,
    this.buttonLabel = '',
    this.buttonUrl = '',
    this.privateText = '',
  });

  factory PresenceStyle.fromPrefs() => PresenceStyle(
    images: PrefName.discordImages.value,
    buttons: PrefName.discordButtons.value,
    timer: PrefName.discordTimer.value,
    hideTitles: PrefName.discordHideTitles.value,
    activity: PrefName.discordActivity.value,
    nameMode: PrefName.discordNameMode.value,
    customName: PrefName.discordCustomName.value,
    statusDisplay: PrefName.discordStatusDisplay.value,
    detailsTemplate: PrefName.discordDetailsTemplate.value,
    stateTemplate: PrefName.discordStateTemplate.value,
    largeImage: PrefName.discordLargeImage.value,
    smallImage: PrefName.discordSmallImage.value,
    timerStyle: PrefName.discordTimerStyle.value,
    mediaButton: PrefName.discordMediaButton.value,
    appButton: PrefName.discordAppButton.value,
    buttonLabel: PrefName.discordButtonLabel.value,
    buttonUrl: PrefName.discordButtonUrl.value,
    privateText: PrefName.discordPrivateText.value,
  );

  bool shows(PresenceKind kind) => switch (kind) {
    PresenceKind.browsing ||
    PresenceKind.viewing => PrefName.discordBrowsing.value,
    PresenceKind.reading => PrefName.discordShowReading.value,
    PresenceKind.watching => PrefName.discordShowWatching.value,
  };
}

class PresenceButton {
  final String label;
  final String url;

  const PresenceButton(this.label, this.url);

  bool get isApp => url == discordRepo;

  @override
  bool operator ==(Object other) =>
      other is PresenceButton && other.label == label && other.url == url;

  @override
  int get hashCode => Object.hash(label, url);
}

String _template(String template, Map<String, String> vars, String fallback) {
  final text = template.trim();
  if (text.isEmpty) return fallback;
  final out = text.replaceAllMapped(
    RegExp(r'\{(\w+)\}'),
    (m) => vars[m[1]] ?? m[0]!,
  );
  return out.trim().isEmpty ? fallback : out.trim();
}

class DiscordPresence {
  static final _session = DateTime.now().millisecondsSinceEpoch;

  final PresenceKind kind;
  final PresenceType type;
  final String name;
  final String details;
  final String? state;
  final String? largeImage;
  final String? largeText;
  final String? cover;
  final String? smallImage;
  final String? smallText;
  final int? start;
  final int? end;
  final bool live;
  final bool sensitive;
  final int statusDisplay;
  final Map<String, String> vars;
  final List<PresenceButton> buttons;

  const DiscordPresence({
    this.kind = PresenceKind.browsing,
    this.type = PresenceType.playing,
    this.name = 'Dartotsu',
    required this.details,
    this.state,
    this.largeImage = discordLogo,
    this.largeText,
    this.cover,
    this.smallImage,
    this.smallText,
    this.start,
    this.end,
    this.live = false,
    this.sensitive = false,
    this.statusDisplay = 0,
    this.vars = const {},
    this.buttons = const [PresenceButton('Open Dartotsu', discordRepo)],
  });

  factory DiscordPresence.browsing(String details, {String? state}) =>
      DiscordPresence(
        details: details,
        state: state,
        largeText: 'Dartotsu',
        start: _session,
        vars: {'title': details, 'state': state ?? '', 'unit': ''},
      );

  factory DiscordPresence.viewing(Media media) => DiscordPresence(
    kind: PresenceKind.viewing,
    sensitive: true,
    details: media.mainName,
    state: media.isAnime ? 'Viewing an anime' : 'Viewing a manga',
    largeImage: media.cover ?? discordLogo,
    largeText: media.mainName,
    cover: media.cover,
    smallImage: discordLogo,
    smallText: 'Dartotsu',
    start: _session,
    vars: {
      'title': media.mainName,
      'state': media.isAnime ? 'Viewing an anime' : 'Viewing a manga',
      'unit': media.isAnime ? 'Episode' : 'Chapter',
    },
    buttons: _buttons(media, media.isAnime ? 'View anime' : 'View manga'),
  );

  factory DiscordPresence.reading(
    Media media, {
    required String number,
    required int since,
    int? total,
  }) {
    final novel = media.format?.toLowerCase() == 'novel';
    return DiscordPresence(
      kind: PresenceKind.reading,
      type: PresenceType.watching,
      sensitive: true,
      details: media.mainName,
      state: 'Chapter $number/${total ?? '?'}',
      largeImage: media.cover ?? discordLogo,
      largeText: media.mainName,
      cover: media.cover,
      smallImage: discordLogo,
      smallText: 'Dartotsu',
      start: since,
      live: true,
      vars: {
        'title': media.mainName,
        'unit': 'Chapter',
        'number': number,
        'total': '${total ?? '?'}',
        'progress': '$number/${total ?? '?'}',
        'state': 'Chapter $number/${total ?? '?'}',
      },
      buttons: _buttons(media, 'View ${novel ? 'novel' : 'manga'}'),
    );
  }

  factory DiscordPresence.consuming(
    Media media, {
    required num number,
    int? total,
    String? thumbnail,
    int positionSeconds = 0,
    int? durationSeconds,
    int? anchorMs,
    double rate = 1,
    bool paused = false,
  }) {
    final at = anchorMs ?? DateTime.now().millisecondsSinceEpoch;
    final speed = rate <= 0 ? 1.0 : rate;
    final start = (at - positionSeconds * 1000 / speed).round();
    final unit = media.isAnime ? 'Episode' : 'Chapter';
    final count = '$unit $number/${total ?? '?'}';
    final state = paused
        ? '$count • Paused at ${_clock(positionSeconds)}'
        : count;
    return DiscordPresence(
      kind: media.isAnime ? PresenceKind.watching : PresenceKind.reading,
      type: media.isAnime ? PresenceType.watching : PresenceType.playing,
      sensitive: true,
      details: media.mainName,
      state: state,
      largeImage: thumbnail ?? media.cover ?? discordLogo,
      largeText: media.mainName,
      cover: media.cover,
      smallImage: discordLogo,
      smallText: paused ? 'Paused' : 'Dartotsu',
      start: paused ? null : start,
      end: paused || durationSeconds == null
          ? null
          : (start + durationSeconds * 1000 / speed).round(),
      live: !paused,
      vars: {
        'title': media.mainName,
        'unit': unit,
        'number': '$number',
        'total': '${total ?? '?'}',
        'progress': '$number/${total ?? '?'}',
        'paused': paused ? 'Paused' : '',
        'position': _clock(positionSeconds),
        'duration': durationSeconds == null ? '' : _clock(durationSeconds),
        'state': state,
      },
      buttons: _buttons(media, media.isAnime ? 'View anime' : 'View manga'),
    );
  }

  static List<PresenceButton> _buttons(Media media, String label) => [
    if (media.shareLink.startsWith('http'))
      PresenceButton(label, media.shareLink),
    const PresenceButton('Open Dartotsu', discordRepo),
  ];

  static String _clock(int seconds) {
    final h = seconds ~/ 3600;
    final m = (seconds % 3600 ~/ 60).toString().padLeft(h > 0 ? 2 : 1, '0');
    final s = (seconds % 60).toString().padLeft(2, '0');
    return h > 0 ? '$h:$m:$s' : '$m:$s';
  }

  DiscordPresence _copy({
    PresenceType? type,
    String? name,
    String? details,
    String? Function()? state,
    String? Function()? largeImage,
    String? Function()? largeText,
    String? Function()? smallImage,
    String? Function()? smallText,
    int? Function()? start,
    int? Function()? end,
    int? statusDisplay,
    List<PresenceButton>? buttons,
  }) => DiscordPresence(
    kind: kind,
    type: type ?? this.type,
    name: name ?? this.name,
    details: details ?? this.details,
    state: state == null ? this.state : state(),
    largeImage: largeImage == null ? this.largeImage : largeImage(),
    largeText: largeText == null ? this.largeText : largeText(),
    cover: cover,
    smallImage: smallImage == null ? this.smallImage : smallImage(),
    smallText: smallText == null ? this.smallText : smallText(),
    start: start == null ? this.start : start(),
    end: end == null ? this.end : end(),
    live: live,
    sensitive: sensitive,
    statusDisplay: statusDisplay ?? this.statusDisplay,
    vars: vars,
    buttons: buttons ?? this.buttons,
  );

  DiscordPresence shifted(Duration by) {
    if (!live || by == Duration.zero) return this;
    return _copy(
      start: () => start == null ? null : start! + by.inMilliseconds,
      end: () => end == null ? null : end! + by.inMilliseconds,
    );
  }

  DiscordPresence styled(PresenceStyle style) {
    final hide = style.hideTitles && sensitive;
    final private = style.privateText.trim().isEmpty
        ? 'Something private'
        : style.privateText.trim();
    final shownType = switch (style.activity) {
      'playing' => PresenceType.playing,
      'watching' => PresenceType.watching,
      'listening' => PresenceType.listening,
      'competing' => PresenceType.competing,
      _ => type,
    };
    final shownName = hide
        ? name
        : switch (style.nameMode) {
            'title' =>
              vars['title']?.isNotEmpty == true ? vars['title']! : name,
            'custom' => _template(style.customName, vars, name),
            _ => name,
          };
    final shownDetails = hide
        ? private
        : _template(style.detailsTemplate, vars, details);
    final shownState = hide
        ? null
        : _template(
            style.stateTemplate,
            vars,
            state ?? '',
          ).let((t) => t.isEmpty ? null : t);
    final large = !style.images || hide
        ? null
        : switch (style.largeImage) {
            'logo' => discordLogo,
            'cover' => cover ?? largeImage,
            _ => largeImage,
          };
    final small = !style.images || style.smallImage == 'none'
        ? null
        : smallImage;
    final elapsed = style.timerStyle == 'elapsed';
    final remaining = style.timerStyle == 'remaining';
    return _copy(
      type: shownType,
      name: shownName,
      details: shownDetails,
      state: () => shownState,
      largeImage: () => large,
      largeText: () => hide ? null : largeText,
      smallImage: () => small,
      smallText: () => small == null ? null : smallText,
      start: () => !style.timer
          ? null
          : remaining && end != null
          ? null
          : start,
      end: () => !style.timer || elapsed ? null : end,
      statusDisplay: switch (style.statusDisplay) {
        'state' => 1,
        'details' => 2,
        _ => 0,
      },
      buttons: _styledButtons(style, hide),
    );
  }

  List<PresenceButton> _styledButtons(PresenceStyle style, bool hide) {
    if (!style.buttons || hide) return const [];
    final out = [
      for (final b in buttons)
        if (b.isApp ? style.appButton : style.mediaButton) b,
    ];
    final label = style.buttonLabel.trim();
    final url = style.buttonUrl.trim();
    if (label.isNotEmpty && url.startsWith('http')) {
      out.add(PresenceButton(label, url));
    }
    return out.take(2).toList();
  }

  bool get isBrowsing => !live;

  @override
  bool operator ==(Object other) =>
      other is DiscordPresence &&
      other.kind == kind &&
      other.type == type &&
      other.name == name &&
      other.details == details &&
      other.state == state &&
      other.largeImage == largeImage &&
      other.largeText == largeText &&
      other.smallImage == smallImage &&
      other.smallText == smallText &&
      other.start == start &&
      other.end == end &&
      other.live == live &&
      other.sensitive == sensitive &&
      other.statusDisplay == statusDisplay &&
      _same(other.buttons, buttons);

  static bool _same(List<PresenceButton> a, List<PresenceButton> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  @override
  int get hashCode => Object.hash(
    kind,
    type,
    name,
    details,
    state,
    largeImage,
    largeText,
    smallImage,
    smallText,
    start,
    end,
    live,
    sensitive,
    statusDisplay,
    Object.hashAll(buttons),
  );
}

extension _Let<T> on T {
  R let<R>(R Function(T) f) => f(this);
}

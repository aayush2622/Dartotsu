/// Where a poster card puts its title and metadata.
///
/// * [normal]  — bare poster, title as loose text underneath.
/// * [onCard]  — everything overlaid on the poster over a scrim.
/// * [inCard]  — poster wrapped in a rounded card that extends below it to
///   hold the title on the same surface.
enum CardMode { normal, onCard, inCard }

/// Preset card widths. [custom] uses [CardStyle.customScale].
enum CardSize { small, medium, large, custom }

enum CardProgressStyle { pill, bar, outside, none }

/// Which image corner the score badge pins to.
enum CardCorner { none, auto, topLeft, topRight, bottomLeft, bottomRight }

class CardCorners {
  final CardCorner score;
  final CardCorner airing;
  final CardCorner unread;

  const CardCorners({
    required this.score,
    required this.airing,
    required this.unread,
  });
}

/// User-tunable look of the poster card. One instance is persisted
/// (`PrefName.cardStyle`); `PosterCard` reads it for every media card so the
/// whole app follows the chosen style. Kept Flutter-free so the prefs layer
/// can reference it — metrics live in `CardStyleMetrics`.
class CardStyle {
  final String preset;
  final CardMode mode;
  final CardSize size;

  /// Width multiplier when [size] is [CardSize.custom].
  final double customScale;

  final double aspect;
  final double radius;
  final int titleLines;

  /// Cover + title only — hides score, progress, airing dot and the info line.
  final bool compact;

  final CardProgressStyle progress;
  final CardCorner scoreCorner;
  final bool airingDot;
  final bool unreadCounter;
  final CardCorner airingCorner;
  final CardCorner unreadCorner;

  const CardStyle({
    this.preset = 'poster',
    this.mode = CardMode.onCard,
    this.size = CardSize.medium,
    this.customScale = 1.0,
    this.aspect = 1.5,
    this.radius = 14,
    this.titleLines = 2,
    this.compact = false,
    this.progress = CardProgressStyle.pill,
    this.scoreCorner = CardCorner.topLeft,
    this.airingDot = true,
    this.unreadCounter = false,
    this.airingCorner = CardCorner.auto,
    this.unreadCorner = CardCorner.auto,
  });

  CardStyle copyWith({
    String? preset,
    CardMode? mode,
    CardSize? size,
    double? customScale,
    double? aspect,
    double? radius,
    int? titleLines,
    bool? compact,
    CardProgressStyle? progress,
    CardCorner? scoreCorner,
    bool? airingDot,
    bool? unreadCounter,
    CardCorner? airingCorner,
    CardCorner? unreadCorner,
  }) => CardStyle(
    preset: preset ?? this.preset,
    mode: mode ?? this.mode,
    size: size ?? this.size,
    customScale: customScale ?? this.customScale,
    aspect: aspect ?? this.aspect,
    radius: radius ?? this.radius,
    titleLines: titleLines ?? this.titleLines,
    compact: compact ?? this.compact,
    progress: progress ?? this.progress,
    scoreCorner: scoreCorner ?? this.scoreCorner,
    airingDot: airingDot ?? this.airingDot,
    unreadCounter: unreadCounter ?? this.unreadCounter,
    airingCorner: airingCorner ?? this.airingCorner,
    unreadCorner: unreadCorner ?? this.unreadCorner,
  );

  /// A copy tagged as no-longer-matching-a-preset — used on any single edit.
  CardStyle get asCustom => copyWith(preset: 'custom');

  // --- resolved values ----------------------------------------------

  double get scale => switch (size) {
    CardSize.small => 0.82,
    CardSize.medium => 1.0,
    CardSize.large => 1.2,
    CardSize.custom => customScale,
  };

  int get lines => compact ? 1 : titleLines;
  bool get showScore => !compact && scoreCorner != CardCorner.none;
  bool get showAiring => !compact && airingDot;
  bool get showUnread => !compact && unreadCounter;

  CardProgressStyle get effectiveProgress => progress;

  bool get showProgress =>
      !compact &&
      (effectiveProgress == CardProgressStyle.pill ||
          effectiveProgress == CardProgressStyle.bar);

  bool get showInfo =>
      !compact && effectiveProgress == CardProgressStyle.outside;

  bool get mayShowInfo =>
      !compact && effectiveProgress != CardProgressStyle.none;

  bool get bottomCornersUsable =>
      mode == CardMode.normal &&
      effectiveProgress != CardProgressStyle.bar &&
      effectiveProgress != CardProgressStyle.pill;

  CardCorners corners({required bool bottomTaken, bool scoreFloats = false}) {
    final free = [
      CardCorner.topLeft,
      CardCorner.topRight,
      if (!bottomTaken) ...[CardCorner.bottomRight, CardCorner.bottomLeft],
    ];
    final taken = <CardCorner>{};
    CardCorner place(CardCorner wanted, List<CardCorner> order) {
      var c = switch (wanted) {
        CardCorner.bottomLeft when bottomTaken => CardCorner.topLeft,
        CardCorner.bottomRight when bottomTaken => CardCorner.topRight,
        _ => wanted,
      };
      if (c == CardCorner.auto || c == CardCorner.none || taken.contains(c)) {
        c = order.firstWhere(
          (o) => !taken.contains(o) && free.contains(o),
          orElse: () =>
              c == CardCorner.auto || c == CardCorner.none ? order.first : c,
        );
      }
      taken.add(c);
      return c;
    }

    final score = showScore && !scoreFloats
        ? place(scoreCorner, const [
            CardCorner.topLeft,
            CardCorner.topRight,
            CardCorner.bottomRight,
            CardCorner.bottomLeft,
          ])
        : CardCorner.none;
    final airing = showAiring
        ? place(airingCorner, const [
            CardCorner.topRight,
            CardCorner.topLeft,
            CardCorner.bottomRight,
            CardCorner.bottomLeft,
          ])
        : CardCorner.none;
    final unread = showUnread
        ? place(unreadCorner, const [
            CardCorner.topRight,
            CardCorner.topLeft,
            CardCorner.bottomRight,
            CardCorner.bottomLeft,
          ])
        : CardCorner.none;
    return CardCorners(score: score, airing: airing, unread: unread);
  }

  // --- json ------------------------------------------------------------

  Map<String, dynamic> toJson() => {
    'preset': preset,
    'mode': mode.name,
    'size': size.name,
    'customScale': customScale,
    'aspect': aspect,
    'radius': radius,
    'titleLines': titleLines,
    'compact': compact,
    'progress': progress.name,
    'scoreCorner': scoreCorner.name,
    'airingDot': airingDot,
    'unreadCounter': unreadCounter,
    'airingCorner': airingCorner.name,
    'unreadCorner': unreadCorner.name,
  };

  factory CardStyle.fromJson(Map<String, dynamic> j) {
    T pick<T extends Enum>(List<T> values, Object? name, T fallback) =>
        values.firstWhere((e) => e.name == name, orElse: () => fallback);
    final progress = j['infoLine'] == true
        ? CardProgressStyle.outside
        : pick(CardProgressStyle.values, j['progress'], CardProgressStyle.pill);
    return CardStyle(
      preset: j['preset'] as String? ?? 'custom',
      mode: pick(CardMode.values, j['mode'], CardMode.onCard),
      size: pick(CardSize.values, j['size'], CardSize.medium),
      customScale: (j['customScale'] as num?)?.toDouble() ?? 1.0,
      aspect: (j['aspect'] as num?)?.toDouble() ?? 1.5,
      radius: (j['radius'] as num?)?.toDouble() ?? 16,
      titleLines: (j['titleLines'] as num?)?.toInt() ?? 2,
      compact: j['compact'] as bool? ?? false,
      progress: progress,
      scoreCorner: pick(
        CardCorner.values,
        j['scoreCorner'],
        CardCorner.topLeft,
      ),
      airingDot: j['airingDot'] as bool? ?? true,
      unreadCounter: j['unreadCounter'] as bool? ?? false,
      airingCorner: pick(
        CardCorner.values,
        j['airingCorner'] ?? j['statusCorner'],
        CardCorner.auto,
      ),
      unreadCorner: pick(
        CardCorner.values,
        j['unreadCorner'] ?? j['statusCorner'],
        CardCorner.auto,
      ),
    );
  }

  // --- presets --------------------------------------------------------

  /// Fixed style for character / staff portraits — never customised.
  static const people = CardStyle(
    preset: 'people',
    mode: CardMode.inCard,
    aspect: 1.38,
    radius: 16,
    titleLines: 2,
    progress: CardProgressStyle.none,
    scoreCorner: CardCorner.none,
    airingDot: false,
  );

  static const poster = CardStyle();

  static const card = CardStyle(
    preset: 'card',
    mode: CardMode.inCard,
    aspect: 1.4,
    radius: 16,
    progress: CardProgressStyle.outside,
    scoreCorner: CardCorner.topRight,
  );

  static const cozy = CardStyle(
    preset: 'cozy',
    mode: CardMode.normal,
    aspect: 1.42,
    radius: 16,
    progress: CardProgressStyle.outside,
    scoreCorner: CardCorner.topRight,
  );

  static const compactPreset = CardStyle(
    preset: 'compact',
    mode: CardMode.normal,
    size: CardSize.small,
    aspect: 1.4,
    radius: 12,
    titleLines: 1,
    compact: true,
    progress: CardProgressStyle.none,
    scoreCorner: CardCorner.none,
    airingDot: false,
  );

  static const presetIds = ['poster', 'card', 'cozy', 'compact'];

  static CardStyle presetById(String id) => switch (id) {
    'card' => card,
    'cozy' => cozy,
    'compact' => compactPreset,
    _ => poster,
  };
}

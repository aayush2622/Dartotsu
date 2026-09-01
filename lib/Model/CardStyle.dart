/// Where a poster card puts its title and metadata.
///
/// * [normal]  — bare poster, title as loose text underneath.
/// * [onCard]  — everything overlaid on the poster over a scrim.
/// * [inCard]  — poster wrapped in a rounded card that extends below it to
///   hold the title on the same surface.
enum CardMode { normal, onCard, inCard }

/// Preset card widths. [custom] uses [CardStyle.customScale].
enum CardSize { small, medium, large, custom }

/// How watched/read progress is shown on a poster card.
enum CardProgressStyle { pill, bar, none }

/// Which image corner the score badge pins to.
enum CardCorner { none, topLeft, topRight, bottomLeft, bottomRight }

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
  final bool infoLine;
  final bool airingDot;

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
    this.infoLine = false,
    this.airingDot = true,
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
    bool? infoLine,
    bool? airingDot,
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
    infoLine: infoLine ?? this.infoLine,
    airingDot: airingDot ?? this.airingDot,
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
  bool get showProgress => !compact && progress != CardProgressStyle.none;
  bool get showInfo => !compact && infoLine && mode != CardMode.onCard;

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
    'infoLine': infoLine,
    'airingDot': airingDot,
  };

  factory CardStyle.fromJson(Map<String, dynamic> j) {
    T pick<T extends Enum>(List<T> values, Object? name, T fallback) =>
        values.firstWhere((e) => e.name == name, orElse: () => fallback);
    return CardStyle(
      preset: j['preset'] as String? ?? 'custom',
      mode: pick(CardMode.values, j['mode'], CardMode.onCard),
      size: pick(CardSize.values, j['size'], CardSize.medium),
      customScale: (j['customScale'] as num?)?.toDouble() ?? 1.0,
      aspect: (j['aspect'] as num?)?.toDouble() ?? 1.5,
      radius: (j['radius'] as num?)?.toDouble() ?? 14,
      titleLines: (j['titleLines'] as num?)?.toInt() ?? 2,
      compact: j['compact'] as bool? ?? false,
      progress: pick(
        CardProgressStyle.values,
        j['progress'],
        CardProgressStyle.pill,
      ),
      scoreCorner: pick(
        CardCorner.values,
        j['scoreCorner'],
        CardCorner.topLeft,
      ),
      infoLine: j['infoLine'] as bool? ?? false,
      airingDot: j['airingDot'] as bool? ?? true,
    );
  }

  // --- presets --------------------------------------------------------

  /// Fixed style for character / staff portraits — never customised.
  static const people = CardStyle(
    preset: 'people',
    mode: CardMode.inCard,
    aspect: 1.38,
    radius: 14,
    titleLines: 2,
    progress: CardProgressStyle.none,
    scoreCorner: CardCorner.none,
    infoLine: false,
    airingDot: false,
  );

  static const poster = CardStyle();

  static const card = CardStyle(
    preset: 'card',
    mode: CardMode.inCard,
    aspect: 1.4,
    radius: 16,
    progress: CardProgressStyle.bar,
    scoreCorner: CardCorner.bottomRight,
    infoLine: true,
  );

  static const cozy = CardStyle(
    preset: 'cozy',
    mode: CardMode.normal,
    aspect: 1.42,
    radius: 14,
    progress: CardProgressStyle.bar,
    scoreCorner: CardCorner.bottomRight,
    infoLine: true,
  );

  static const compactPreset = CardStyle(
    preset: 'compact',
    mode: CardMode.normal,
    size: CardSize.small,
    aspect: 1.4,
    radius: 10,
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

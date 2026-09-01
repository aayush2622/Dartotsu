/// Where a rail card's title sits.
enum CardTitle { overlay, below, hidden }

/// How watched/read progress is shown on a rail card.
enum CardProgressStyle { pill, bar, none }

/// Which image corner the score badge pins to.
enum CardCorner { none, topLeft, topRight, bottomLeft, bottomRight }

/// User-tunable look of the media rail card. One instance is persisted
/// (`PrefName.cardStyle`); `RailCard` reads it for every media card so the
/// whole app follows the chosen preset. Kept Flutter-free so the prefs layer
/// can reference it — metrics live in `CardStyleMetrics`, preset presentation
/// in the settings screen.
class CardStyle {
  final String preset;
  final double widthScale;
  final double aspect;
  final double radius;
  final CardTitle title;
  final int titleLines;
  final CardProgressStyle progress;
  final CardCorner scoreCorner;
  final bool infoLine;
  final bool airingDot;

  const CardStyle({
    this.preset = 'poster',
    this.widthScale = 1.0,
    this.aspect = 1.5,
    this.radius = 14,
    this.title = CardTitle.overlay,
    this.titleLines = 2,
    this.progress = CardProgressStyle.pill,
    this.scoreCorner = CardCorner.topLeft,
    this.infoLine = false,
    this.airingDot = true,
  });

  CardStyle copyWith({
    String? preset,
    double? widthScale,
    double? aspect,
    double? radius,
    CardTitle? title,
    int? titleLines,
    CardProgressStyle? progress,
    CardCorner? scoreCorner,
    bool? infoLine,
    bool? airingDot,
  }) => CardStyle(
    preset: preset ?? this.preset,
    widthScale: widthScale ?? this.widthScale,
    aspect: aspect ?? this.aspect,
    radius: radius ?? this.radius,
    title: title ?? this.title,
    titleLines: titleLines ?? this.titleLines,
    progress: progress ?? this.progress,
    scoreCorner: scoreCorner ?? this.scoreCorner,
    infoLine: infoLine ?? this.infoLine,
    airingDot: airingDot ?? this.airingDot,
  );

  /// A copy tagged as no-longer-matching-a-preset — used on any single edit.
  CardStyle get asCustom => copyWith(preset: 'custom');

  Map<String, dynamic> toJson() => {
    'preset': preset,
    'widthScale': widthScale,
    'aspect': aspect,
    'radius': radius,
    'title': title.name,
    'titleLines': titleLines,
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
      widthScale: (j['widthScale'] as num?)?.toDouble() ?? 1.0,
      aspect: (j['aspect'] as num?)?.toDouble() ?? 1.5,
      radius: (j['radius'] as num?)?.toDouble() ?? 14,
      title: pick(CardTitle.values, j['title'], CardTitle.overlay),
      titleLines: (j['titleLines'] as num?)?.toInt() ?? 2,
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
    aspect: 1.4,
    radius: 14,
    title: CardTitle.below,
    titleLines: 2,
    progress: CardProgressStyle.none,
    scoreCorner: CardCorner.none,
    infoLine: false,
    airingDot: false,
  );

  static const poster = CardStyle();

  static const cozy = CardStyle(
    preset: 'cozy',
    aspect: 1.42,
    radius: 16,
    title: CardTitle.below,
    progress: CardProgressStyle.bar,
    scoreCorner: CardCorner.bottomRight,
    infoLine: true,
  );

  static const compact = CardStyle(
    preset: 'compact',
    widthScale: 0.82,
    aspect: 1.4,
    radius: 12,
    title: CardTitle.below,
    titleLines: 1,
    progress: CardProgressStyle.none,
    scoreCorner: CardCorner.bottomRight,
    airingDot: false,
  );

  static const detailed = CardStyle(
    preset: 'detailed',
    widthScale: 1.16,
    aspect: 1.46,
    radius: 18,
    title: CardTitle.below,
    progress: CardProgressStyle.bar,
    scoreCorner: CardCorner.bottomRight,
    infoLine: true,
  );

  static const presetIds = ['poster', 'cozy', 'compact', 'detailed'];

  static CardStyle presetById(String id) => switch (id) {
    'cozy' => cozy,
    'compact' => compact,
    'detailed' => detailed,
    _ => poster,
  };
}

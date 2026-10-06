import '../../Utils/Functions/GetXFunctions.dart';
import 'MediaServiceController.dart';

enum ScoreFormat {
  point100('POINT_100', '100 Point', '55/100'),
  point10Decimal('POINT_10_DECIMAL', '10 Point Decimal', '5.5/10'),
  point10('POINT_10', '10 Point', '5/10'),
  point5('POINT_5', '5 Star', '3/5'),
  point3('POINT_3', '3 Point Smiley', ':)');

  final String api;
  final String title;
  final String example;

  const ScoreFormat(this.api, this.title, this.example);

  String get label => '$title ($example)';

  static ScoreFormat fromApi(String? value) => ScoreFormat.values.firstWhere(
    (f) => f.api == value,
    orElse: () => ScoreFormat.point10,
  );

  static ScoreFormat get current {
    final controller = tryFind<MediaServiceController>();
    return controller?.currentService.value.auth?.user.value?.scoreFormat ??
        ScoreFormat.point10;
  }

  int get max => switch (this) {
    point100 => 100,
    point10Decimal || point10 => 10,
    point5 => 5,
    point3 => 3,
  };

  bool get decimal => this == point10Decimal;

  bool get typed => this != point3;

  String smiley(int raw) => raw <= 35
      ? ':('
      : raw <= 60
      ? ':|'
      : ':)';

  String format(int raw) {
    if (raw <= 0) return '';
    return switch (this) {
      point100 => '$raw',
      point10Decimal => (raw / 10).toStringAsFixed(1),
      point10 => '${(raw / 10).round()}',
      point5 => '${(raw / 20).round().clamp(1, 5)}',
      point3 => smiley(raw),
    };
  }

  String input(int raw) {
    if (raw <= 0) return '';
    return switch (this) {
      point10Decimal => (raw / 10).toStringAsFixed(1).replaceAll('.0', ''),
      _ => format(raw),
    };
  }

  int toRaw(String text) {
    final value = double.tryParse(text) ?? 0;
    return switch (this) {
      point100 => value.round(),
      point10Decimal => (value * 10).round(),
      point10 => (value * 10).round(),
      point5 => (value * 20).round(),
      point3 => value.round() * 30,
    }.clamp(0, 100);
  }

  static int smileyRaw(int step) => const [0, 35, 60, 85][step.clamp(0, 3)];

  static int smileyStep(int raw) => raw <= 0
      ? 0
      : raw <= 35
      ? 1
      : raw <= 60
      ? 2
      : 3;
}

extension ScoreLabel on double {
  String get userScoreLabel => ScoreFormat.current.format((this * 10).round());
}

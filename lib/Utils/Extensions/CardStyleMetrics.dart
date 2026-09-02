import '../../Model/CardStyle.dart';
import 'Responsive.dart';

/// Layout maths for a [CardStyle], derived from the shared [Dimens.cardW] base
/// so every poster card scales together.
extension CardStyleMetrics on CardStyle {
  double get itemWidth => Dimens.cardW * scale;

  double get imageHeight => itemWidth * aspect;

  /// Height reserved below the poster for the caption — one info line for
  /// media, a two-line role/VA line for people (labelMedium, ~18px/line).
  double get _captionHeight => preset == 'people'
      ? 38
      : showInfo
      ? 20
      : 0;

  /// bodyLarge renders at a 24px line height (Material3 default, Poppins has no
  /// override).
  double get _titleHeight => lines * 24;

  /// Height a horizontal shelf must reserve for one card in this style.
  double get itemHeight {
    switch (mode) {
      case CardMode.onCard:
        return imageHeight + 6;
      case CardMode.normal:
        return imageHeight + 7 + _titleHeight + _captionHeight + 6;
      case CardMode.inCard:
        // poster + progress bar + a padded text block on the same card surface
        // (top padding leaves room for the score badge straddling the seam)
        return imageHeight + 4 + 13 + _titleHeight + _captionHeight + 9 + 6;
    }
  }
}

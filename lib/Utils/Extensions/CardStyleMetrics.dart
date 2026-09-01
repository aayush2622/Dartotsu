import '../../Model/CardStyle.dart';
import 'Responsive.dart';

/// Layout maths for a [CardStyle], derived from the shared [Dimens.cardW] base
/// so every poster card scales together.
extension CardStyleMetrics on CardStyle {
  double get itemWidth => Dimens.cardW * scale;

  double get imageHeight => itemWidth * aspect;

  /// Height a horizontal shelf must reserve for one card in this style.
  double get itemHeight {
    switch (mode) {
      case CardMode.onCard:
        return imageHeight + 6;
      case CardMode.normal:
        var h = imageHeight + 7 + lines * 20;
        if (showInfo || preset == 'people') h += 17;
        return h + 4;
      case CardMode.inCard:
        // poster + a padded text block on the same card surface
        var h = imageHeight + 10 + lines * 20;
        if (showInfo || preset == 'people') h += 16;
        return h + 12;
    }
  }
}

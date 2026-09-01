import '../../Model/CardStyle.dart';
import 'Responsive.dart';

/// Layout maths for a [CardStyle], derived from the shared [Dimens.railItemW]
/// base so every rail card scales together.
extension CardStyleMetrics on CardStyle {
  double get itemWidth => Dimens.railItemW * widthScale;

  double get imageHeight => itemWidth * aspect;

  /// Height a horizontal rail must reserve for one card in this style.
  double get itemHeight {
    if (title != CardTitle.below) return imageHeight + 6;
    var h = imageHeight + 7 + titleLines * 20;
    if (preset == 'people') {
      h += 34; // two-line role / VA caption
    } else if (infoLine) {
      h += 17;
    }
    return h + 4;
  }
}

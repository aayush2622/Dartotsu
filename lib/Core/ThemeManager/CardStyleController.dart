import 'package:get/get.dart';

import '../../Model/CardStyle.dart';
import '../Preferences/PrefManager.dart';

/// Holds the current [CardStyle] so every `PosterCard` can read it without
/// re-decoding the pref on each build. The settings screen writes through
/// [apply]; feeds pick the change up on their next rebuild.
class CardStyleController extends GetxController {
  late final Rx<CardStyle> style = PrefName.cardStyle.value.obs;

  CardStyle get current => style.value;

  void apply(CardStyle next) {
    if (next.toJson().toString() == style.value.toJson().toString()) return;
    style.value = next;
    PrefName.cardStyle.value = next;
  }

  void reset() => apply(const CardStyle());
}

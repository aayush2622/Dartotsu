import 'package:get/get.dart';

import '../../Model/CardStyle.dart';
import '../Preferences/PrefManager.dart';

class CardStyleController extends GetxController {
  late final Rx<CardStyle> style = PrefName.cardStyle.value.obs;
  final epoch = 0.obs;

  CardStyle get current => style.value;

  void apply(CardStyle next) {
    if (next.toJson().toString() == style.value.toJson().toString()) return;
    style.value = next;
    PrefName.cardStyle.value = next;
    epoch.value++;
  }

  void reset() => apply(const CardStyle());
}

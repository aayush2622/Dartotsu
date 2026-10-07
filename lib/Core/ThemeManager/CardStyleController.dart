import '../../Model/CardStyle.dart';
import '../Preferences/PrefManager.dart';
import '../State/State.dart';

class CardStyleController extends AppController {
  late final Live<CardStyle> style = PrefName.cardStyle.value.live;
  final epoch = 0.live;

  CardStyle get current => style.value;

  void apply(CardStyle next) {
    if (next.toJson().toString() == style.value.toJson().toString()) return;
    style.value = next;
    PrefName.cardStyle.value = next;
    epoch.value++;
  }

  void reset() => apply(const CardStyle());
}

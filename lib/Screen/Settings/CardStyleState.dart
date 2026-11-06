import '../../Core/State/State.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'Components/BadgeBoard.dart';

class CardStyleState extends ScreenState {
  CardStyleController get controller => find();

  late final badges = BadgeEditor(edit);

  late final draft = controller.current.live;

  void set(CardStyle next) {
    draft.value = next;
    controller.apply(next);
  }

  void edit(CardStyle Function(CardStyle) change) =>
      set(change(draft.value).asCustom);

  void reset() => set(CardStyle.cozy);
}

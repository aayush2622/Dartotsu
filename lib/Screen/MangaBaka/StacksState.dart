import 'dart:async';

import '../../Api/Services/MangaBaka/Auth.dart';
import '../../Api/Services/MangaBaka/Client.dart';
import '../../Api/Services/MangaBaka/Community.dart';
import '../../Api/Services/MangaBaka/Data/Community.dart';
import '../../Core/State/State.dart';
import '../../Widgets/Components/PagedList.dart';
import '../../Widgets/Components/ScreenState.dart';

class StacksState extends ScreenState with PagedFields<MangaBakaStack> {
  final String? owner;

  StacksState({this.owner});

  MangaBakaCommunity get _api => mangaBakaAuth.community;

  bool get signedIn => mangaBakaAuth.isLoggedIn;

  late final scope = StackScope.all.live;
  final needsScope = false.live;

  @override
  late final list = PagedList<MangaBakaStack>(
    tag: 'StacksState',
    idOf: (s) => s.id,
    onReset: () => needsScope.value = false,
    onError: (e) {
      if (e is! MangaBakaException || e.status != 403) return false;
      needsScope.value = true;
      list.hasNext.value = false;
      return true;
    },
    fetch: (page) async {
      final result = owner != null
          ? await _api.userStacks(owner!, page: page)
          : await _api.stacks(scope.value, page: page);
      return (items: result.items, hasNext: result.hasNext);
    },
  );

  List<StackScope> get scopes => owner != null
      ? const []
      : [
          StackScope.all,
          StackScope.featured,
          if (signedIn) ...[
            StackScope.mine,
            StackScope.saved,
            StackScope.following,
          ],
        ];

  @override
  void onInit() => unawaited(load(reset: true));

  Future<void> signInAgain() async {
    if (await mangaBakaAuth.login()) await load(reset: true);
  }

  void setScope(StackScope next) {
    if (next == scope.value) return;
    scope.value = next;
    unawaited(load(reset: true));
  }
}

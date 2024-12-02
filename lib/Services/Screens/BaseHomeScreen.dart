import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'BaseMediaScreen.dart';

abstract class BaseHomeScreen extends BaseMediaScreen {
  var listImages = Rx<List<String?>>([null, null]);
}

import 'package:dartotsu/Api/Extensions/ExtensionsQueries.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Services/BaseServiceData.dart';

var ExtensionsC = Get.put(ExtensionsController());

class ExtensionsController extends BaseServiceData {
  @override
  get token => 'OnePiece is peak'.obs;

  ExtensionsController() {
    query = ExtensionsQueries();
  }

  @override
  getSavedToken() => true;

  @override
  login(BuildContext context) {}

  @override
  removeSavedToken() {}

  @override
  saveToken(String token) async {}
}

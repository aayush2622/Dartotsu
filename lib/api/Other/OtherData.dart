import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Services/BaseServiceData.dart';

var Other = Get.put(OtherController());

class OtherController extends BaseServiceData {
  @override
  bool getSavedToken() {
    // TODO: implement getSavedToken
    throw UnimplementedError();
  }

  @override
  void login(BuildContext context) {
    // TODO: implement login
  }

  @override
  void removeSavedToken() {
    // TODO: implement removeSavedToken
  }

  @override
  Future<void> saveToken(String token) {
    // TODO: implement saveToken
    throw UnimplementedError();
  }
}

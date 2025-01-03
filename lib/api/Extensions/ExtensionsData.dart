import 'package:dantotsu/api/Extensions/ExtensionsQueries.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Services/BaseServiceData.dart';

var ExtensionsC = Get.put(ExtensionsController());

class ExtensionsController extends BaseServiceData {

  ExtensionsController(){
    query = ExtensionsQueries();
  }
  @override
  bool getSavedToken() {
    // not needed
    return true;
  }

  @override
  void login(BuildContext context) {
    // not needed
  }

  @override
  void removeSavedToken() {
    // not needed
  }

  @override
  Future<void> saveToken(String token) async {
    // not needed
  }

  Future<T?> executeQuery<T>(
      String url, {
        Map<String, String>? headers,
        bool withNoHeaders = false,
        bool force = false,
        bool useToken = true,
        bool show = true,
      }){
    throw UnimplementedError();
  }
}

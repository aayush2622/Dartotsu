import 'package:dartotsu/Services/Api/Mutations.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'Api/Queries.dart';

abstract class BaseServiceData extends GetxController {
  Queries? query;
  Mutations? mutations;
  RxBool isInitialized = false.obs;
  RxString token = "".obs;
  RxString username = "".obs;
  RxString avatar = "".obs;
  RxBool run = true.obs;
  bool adult = false;
  String? bg;
  int? userid;
  int unreadNotificationCount = 0;
  int? episodesWatched;
  int? chapterRead;

  bool getSavedToken();

  Future<void> saveToken(String token);

  void login(BuildContext context);

  void removeSavedToken();
}

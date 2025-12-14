import 'package:dartotsu/Services/Api/Mutations.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'Api/Queries.dart';

abstract class BaseServiceData extends GetxController {
  Queries? query;
  Mutations? mutations;
  int? userid;
  RxString token = "".obs;
  RxString username = "".obs;
  RxString avatar = "".obs;
  RxString bg = "".obs;
  bool adult = false;
  int notifications = 0;
  int? episodesWatched;
  int? chapterRead;

  bool getSavedToken();

  Future<void> saveToken(String token);

  void login(BuildContext context);

  void removeToken();
}

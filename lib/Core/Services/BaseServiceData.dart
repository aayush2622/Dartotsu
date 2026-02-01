import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'Api/Mutations.dart';
import 'Api/Queries.dart';

abstract class BaseServiceData extends GetxController {
  Queries? query;
  Mutations? mutations;
  int? userid;
  RxString token = "".obs;
  RxString username = "".obs;
  RxString avatar = "".obs;
  RxString bg =
      "https://i.pinimg.com/736x/8c/77/28/8c7728ab98a6d4ad900d20032f6f4920.jpg"
          .obs;
  bool adult = false;
  int notifications = 0;
  int? episodesWatched;
  int? chapterRead;

  bool getSavedToken();

  Future<void> saveToken(String token);

  void login(BuildContext context);

  void removeToken();
}

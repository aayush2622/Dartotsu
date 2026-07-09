import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'Api/Mutations.dart';
import 'Api/Queries.dart';

abstract class BaseServiceData extends GetxController {
  Queries? query;
  Mutations? mutations;
  int? userid;
  RxString? token;
  RxString? username;
  RxString? avatar;
  RxString bg =
      "https://i.pinimg.com/1200x/b2/e7/7f/b2e77f955c3d39655cc7a46802f94748.jpg"
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

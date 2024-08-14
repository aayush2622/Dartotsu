import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../Functions/Function.dart';
import '../../Prefrerences/PrefManager.dart';
import '../../Prefrerences/Prefrences.dart';
import 'AnilistQueries.dart';


class AnilistToken extends ChangeNotifier {
  String _token = '';

  String get token => _token;

  AnilistToken() {
    _initialize();
  }

  Future<void> _initialize() async {
    _token = PrefManager.getVal(PrefName.anilistToken);
    notifyListeners();
  }

  void saveToken(String token) async {
    PrefManager.setVal(PrefName.anilistToken, token);
    _token = token;
    notifyListeners();
  }

  void removeToken() async {
    PrefManager.removeVal(PrefName.anilistToken);
    _token = '';
    notifyListeners();
  }
}




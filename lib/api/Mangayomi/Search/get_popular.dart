
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Eval/dart/model/m_pages.dart';
import '../Model/Source.dart';
import '../lib.dart';


Future<MPages?> getPopular(
  {
  required Source source,
  required int page,
}) async {
  return getExtensionService(source).getPopular(page);
}

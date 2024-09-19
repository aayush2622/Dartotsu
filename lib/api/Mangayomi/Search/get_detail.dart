import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../Eval/dart/model/m_manga.dart';
import '../Eval/dart/service.dart';
import '../Eval/javascript/service.dart';
import '../Model/Source.dart';

part 'get_detail.g.dart';

@riverpod
Future<MManga> getDetail(
  GetDetailRef ref, {
  required String url,
  required Source source,
}) async {
  MManga? mangaDetail;
  if (source.sourceCodeLanguage == SourceCodeLanguage.dart) {
    mangaDetail = await DartExtensionService(source).getDetail(url);
  } else {
    mangaDetail = await JsExtensionService(source).getDetail(url);
  }
  return mangaDetail;
}

Future<MManga> getDetailTest({
  required String url,
  required Source source,
}) async {
  MManga? mangaDetail;
  if (source.sourceCodeLanguage == SourceCodeLanguage.dart) {
    mangaDetail = await DartExtensionService(source).getDetail(url);
  } else {
    mangaDetail = await JsExtensionService(source).getDetail(url);
  }
  return mangaDetail;
}

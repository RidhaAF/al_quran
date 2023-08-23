import 'package:al_quran/utilities/env.dart';
import 'package:dio/dio.dart';

class DefaultDio {
  Dio option = Dio(
    BaseOptions(
      baseUrl: Env.baseURL,
    ),
  );
}

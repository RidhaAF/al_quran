import 'package:al_quran/helpers/default_dio.dart';
import 'package:al_quran/models/surah_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class SurahService {
  Future<SurahModel> getSurahs() async {
    String url = '/surah';

    try {
      Response response = await DefaultDio().option.get(url);

      final data = SurahModel.fromJson(response.data);
      return data;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      throw Exception(e);
    }
  }
}

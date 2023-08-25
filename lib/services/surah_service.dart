import 'dart:convert';

import 'package:al_quran/helpers/default_dio.dart';
import 'package:al_quran/models/surah_detail_model.dart';
import 'package:al_quran/models/surah_model.dart';
import 'package:al_quran/models/verse_model.dart';
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

  Future<SurahDetailModel> getSurah({required String surahNumber}) async {
    String url = '/surah/$surahNumber';

    try {
      Response response = await DefaultDio().option.get(url);

      final SurahDetailModel data;
      if (response.data is String) {
        data = SurahDetailModel.fromJson(jsonDecode(response.data));
      } else {
        data = SurahDetailModel.fromJson(response.data);
      }
      return data;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      throw Exception(e);
    }
  }

  Future<VerseModel> getVerse(
      {required String surahNumber, required String verseNumber}) async {
    String url = '/surah/$surahNumber/$verseNumber';

    try {
      Response response = await DefaultDio().option.get(url);

      final VerseModel data;
      if (response.data is String) {
        data = VerseModel.fromJson(jsonDecode(response.data));
      } else {
        data = VerseModel.fromJson(response.data);
      }
      return data;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      throw Exception(e);
    }
  }
}

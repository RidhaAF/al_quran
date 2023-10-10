import 'package:al_quran/reconstructed_app/core/core.dart';
import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock.dart';

void main() {
  late MockDio mockDio;
  late VerseProvider verseProvider;

  setUp(() {
    mockDio = MockDio();
    verseProvider = VerseProviderImpl(dio: mockDio);
  });

  group('verse ayah', () {
    int surahNumber = 1;
    int verseNumber = 1;

    test('should load from api when calling mockDio.get()', () async {
      Response res = Response(
          requestOptions: RequestOptions(path: ""),
          statusCode: 200,
          data: {
            "data": {
              "number": {"inQuran": 1, "inSurah": 1},
              "meta": {
                "juz": 1,
                "page": 1,
                "manzil": 1,
                "ruku": 1,
                "hizbQuarter": 1,
                "sajda": {"recommended": false, "obligatory": false}
              },
              "text": {
                "arab": "﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                "transliteration": {"en": "Bismillaahir Rahmaanir Raheem"}
              },
              "translation": {
                "en":
                    "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
                "id": "Dengan nama Allah Yang Maha Pengasih, Maha Penyayang."
              },
              "audio": {
                "primary":
                    "https://cdn.alquran.cloud/media/audio/ayah/ar.alafasy/1",
                "secondary": [
                  "https://cdn.islamic.network/quran/audio/128/ar.alafasy/1.mp3",
                  "https://cdn.islamic.network/quran/audio/64/ar.alafasy/1.mp3"
                ]
              },
              "tafsir": {
                "id": {"short": "long", "long": "long"}
              },
              "surah": {
                "number": 1,
                "sequence": 5,
                "numberOfVerses": 7,
                "name": {
                  "short": "الفاتحة",
                  "long": "سُورَةُ ٱلْفَاتِحَةِ",
                  "transliteration": {"en": "Al-Faatiha", "id": "Al-Fatihah"},
                  "translation": {"en": "The Opening", "id": "Pembukaan"}
                },
                "revelation": {
                  "arab": "مكة",
                  "en": "Meccan",
                  "id": "Makkiyyah"
                },
                "tafsir": {"id": "long"},
                "preBismillah": null
              }
            }
          });

      when(mockDio.get('${ApiPath.surah}/$surahNumber/$verseNumber',
              options: anyNamed('options')))
          .thenAnswer((_) => Future.value(res));

      final Verse result =
          await verseProvider.getVerse(surahNumber, verseNumber);

      verify(mockDio.get('${ApiPath.surah}/$surahNumber/$verseNumber',
          options: anyNamed('options')));

      expect(result, isA<Verse>());
    });
  });
}

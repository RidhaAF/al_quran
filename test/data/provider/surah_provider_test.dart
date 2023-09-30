import 'package:al_quran/reconstructed_app/core/core.dart';
import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock.dart';

void main() {
  late MockDio mockDio;
  late SurahProvider surahProvider;

  setUp(() {
    mockDio = MockDio();
    surahProvider = SurahProviderImpl(dio: mockDio);
  });

  group('surah', () {
    test('should load from api when calling mockDio.get', () async {
      Response res = Response(
        requestOptions: RequestOptions(path: ""),
        statusCode: 200,
        data: {
          "message": "Success fetching all surah.",
          "data": [
            {
              "number": 1,
              "sequence": 5,
              "numberOfVerses": 7,
              "name": {
                "short": "الفاتحة",
                "long": "سُورَةُ ٱلْفَاتِحَةِ",
                "transliteration": {"en": "Al-Faatiha", "id": "Al-Fatihah"},
                "translation": {"en": "The Opening", "id": "Pembukaan"}
              },
              "revelation": {"arab": "مكة", "en": "Meccan", "id": "Makkiyyah"},
              "tafsir": {
                "id":
                    "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat."
              }
            },
          ],
        },
      );

      when(mockDio.get(ApiPath.surah, options: anyNamed("options")))
          .thenAnswer((_) => Future.value(res));

      final List<Surah> result = await surahProvider.getSurahs();

      verify(mockDio.get(ApiPath.surah, options: anyNamed("options")));

      expect(result, isA<List<Surah>>());
    });

    test('should throw ServerException when the status code is not 200',
        () async {
      when(mockDio.get(ApiPath.surah, options: anyNamed("options")))
          .thenAnswer((_) => Future.value(Response(
                requestOptions: RequestOptions(path: ""),
                statusCode: 400,
                data: {},
              )));

      expect(() => surahProvider.getSurahs(), throwsA(isA<ServerException>()));
    });
  });
}

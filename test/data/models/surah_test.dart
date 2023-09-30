import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('response model', () {
    test('.fromJson()', () {
      final actual = SurahModel.fromJson(
        const {
          "code": 200,
          "status": "OK.",
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
          ]
        },
      );

      final matcher = SurahModel(
          code: 200,
          status: "OK.",
          message: "Success fetching all surah.",
          data: [
            Surah(
              number: 1,
              sequence: 5,
              numberOfVerses: 7,
              name: Name(
                short: "الفاتحة",
                long: "سُورَةُ ٱلْفَاتِحَةِ",
                transliteration: Transliteration(
                  en: "Al-Faatiha",
                  id: "Al-Fatihah",
                ),
                translation: Translation(en: "The Opening", id: "Pembukaan"),
              ),
              revelation: const Revelation(
                arab: "مكة",
                en: "Meccan",
                id: "Makkiyyah",
              ),
              tafsir: const Tafsir(
                id: "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
              ),
            ),
          ]);

      expect(actual, matcher);
    });

    test('toJson()', () {
      final actual = SurahModel(
          code: 200,
          status: "OK.",
          message: "Success fetching all surah.",
          data: [
            Surah(
              number: 1,
              sequence: 5,
              numberOfVerses: 7,
              name: Name(
                short: "الفاتحة",
                long: "سُورَةُ ٱلْفَاتِحَةِ",
                transliteration: Transliteration(
                  en: "Al-Faatiha",
                  id: "Al-Fatihah",
                ),
                translation: Translation(en: "The Opening", id: "Pembukaan"),
              ),
              revelation: const Revelation(
                arab: "مكة",
                en: "Meccan",
                id: "Makkiyyah",
              ),
              tafsir: const Tafsir(
                id: "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
              ),
            ),
          ]);

      expect(actual.toJson(), {
        "code": 200,
        "status": "OK.",
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
        ]
      });
    });
  });

  group('surah model', () {
    test('.fromJson()', () {
      final actual = Surah.fromJson(
        const {
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
      );

      final matcher = Surah(
        number: 1,
        sequence: 5,
        numberOfVerses: 7,
        name: Name(
          short: "الفاتحة",
          long: "سُورَةُ ٱلْفَاتِحَةِ",
          transliteration: Transliteration(
            en: "Al-Faatiha",
            id: "Al-Fatihah",
          ),
          translation: Translation(en: "The Opening", id: "Pembukaan"),
        ),
        revelation: const Revelation(
          arab: "مكة",
          en: "Meccan",
          id: "Makkiyyah",
        ),
        tafsir: const Tafsir(
          id: "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
        ),
      );

      expect(actual, matcher);
    });

    test('toJson()', () {
      final actual = Surah(
        number: 1,
        sequence: 5,
        numberOfVerses: 7,
        name: Name(
          short: "الفاتحة",
          long: "سُورَةُ ٱلْفَاتِحَةِ",
          transliteration: Transliteration(
            en: "Al-Faatiha",
            id: "Al-Fatihah",
          ),
          translation: Translation(en: "The Opening", id: "Pembukaan"),
        ),
        revelation: const Revelation(
          arab: "مكة",
          en: "Meccan",
          id: "Makkiyyah",
        ),
        tafsir: const Tafsir(
          id: "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
        ),
      );

      expect(actual.toJson(), {
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
      });
    });
  });

  group('name model', () {
    test('.fromJson()', () {
      final actual = Name.fromJson(
        const {
          "short": "الفاتحة",
          "long": "سُورَةُ ٱلْفَاتِحَةِ",
          "transliteration": {"en": "Al-Faatiha", "id": "Al-Fatihah"},
          "translation": {"en": "The Opening", "id": "Pembukaan"}
        },
      );

      final matcher = Name(
        short: "الفاتحة",
        long: "سُورَةُ ٱلْفَاتِحَةِ",
        transliteration: Transliteration(
          en: "Al-Faatiha",
          id: "Al-Fatihah",
        ),
        translation: Translation(en: "The Opening", id: "Pembukaan"),
      );

      expect(actual, matcher);
    });

    test('.toJson()', () {
      final actual = Name(
        short: "الفاتحة",
        long: "سُورَةُ ٱلْفَاتِحَةِ",
        transliteration: Transliteration(
          en: "Al-Faatiha",
          id: "Al-Fatihah",
        ),
        translation: Translation(en: "The Opening", id: "Pembukaan"),
      );

      expect(actual.toJson(), {
        "short": "الفاتحة",
        "long": "سُورَةُ ٱلْفَاتِحَةِ",
        "transliteration": {"en": "Al-Faatiha", "id": "Al-Fatihah"},
        "translation": {"en": "The Opening", "id": "Pembukaan"}
      });
    });
  });

  group('transliteration model', () {
    test('.fromJson()', () {
      final actual = Transliteration.fromJson(
        const {"en": "Al-Faatiha", "id": "Al-Fatihah"},
      );

      final matcher = Transliteration(en: "Al-Faatiha", id: "Al-Fatihah");

      expect(actual, matcher);
    });

    test('.toJson', () {
      final actual = Transliteration(en: "Al-Faatiha", id: "Al-Fatihah");

      expect(actual.toJson(), {"en": "Al-Faatiha", "id": "Al-Fatihah"});
    });
  });

  group('translation model', () {
    test('.fromJson()', () {
      final actual = Translation.fromJson(
        const {"en": "The Opening", "id": "Pembukaan"},
      );

      final matcher = Translation(en: "The Opening", id: "Pembukaan");

      expect(actual, matcher);
    });

    test('.toJson', () {
      final actual = Translation(en: "The Opening", id: "Pembukaan");

      expect(actual.toJson(), {"en": "The Opening", "id": "Pembukaan"});
    });
  });

  group('revelation model', () {
    test('.fromJson()', () {
      final actual = Revelation.fromJson(
        const {"arab": "مكة", "en": "Meccan", "id": "Makkiyyah"},
      );

      const matcher = Revelation(arab: "مكة", en: "Meccan", id: "Makkiyyah");

      expect(actual, matcher);
    });

    test('toJson()', () {
      const actual = Revelation(arab: "مكة", en: "Meccan", id: "Makkiyyah");

      expect(
          actual.toJson(), {"arab": "مكة", "en": "Meccan", "id": "Makkiyyah"});
    });
  });

  group('tafsir model', () {
    test('.fromJson()', () {
      final actual = Tafsir.fromJson(
        const {
          "id":
              "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat."
        },
      );

      const matcher = Tafsir(
        id: "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
      );

      expect(actual, matcher);
    });

    test('toJson()', () {
      const actual = Tafsir(
        id: "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.",
      );

      const matcher = {
        "id":
            "Surat Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut Al Faatihah (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan Ummul Quran (induk Al Quran) atau Ummul Kitaab (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang. Dinamakan pula As Sab'ul matsaany (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat."
      };

      expect(actual.toJson(), matcher);
    });
  });
}

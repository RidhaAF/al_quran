import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('surah detail model', () {
    test('.fromJson()', () {
      final actual = SurahDetail.fromJson(
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
          "tafsir": {"id": "Surat Al Faatihah .."},
          "preBismillah": null,
          "verses": [
            {
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
                "id": {"short": "short", "long": "long"}
              }
            },
          ]
        },
      );

      final matcher = SurahDetail(
          name: Name(
            short: "الفاتحة",
            long: "سُورَةُ ٱلْفَاتِحَةِ",
            transliteration: Translation(en: "Al-Faatiha", id: "Al-Fatihah"),
            translation: Translation(en: "The Opening", id: "Pembukaan"),
          ),
          numberOfVerses: 7,
          number: 1,
          preBismillah: null,
          revelation:
              const Revelation(arab: "مكة", en: "Meccan", id: "Makkiyyah"),
          sequence: 5,
          tafsir: const Tafsir(id: "Surat Al Faatihah .."),
          verses: [
            Verse(
                number: const Number(inQuran: 1, inSurah: 1),
                meta: const Meta(
                  juz: 1,
                  page: 1,
                  manzil: 1,
                  ruku: 1,
                  hizbQuarter: 1,
                  sajda: Sajda(recommended: false, obligatory: false),
                ),
                text: Text(
                  arab: "﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                  transliteration:
                      Transliteration(en: "Bismillaahir Rahmaanir Raheem"),
                ),
                translation: Translation(
                    en: "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
                    id: "Dengan nama Allah Yang Maha Pengasih, Maha Penyayang."),
                audio: const Audio(
                  primary:
                      "https://cdn.alquran.cloud/media/audio/ayah/ar.alafasy/1",
                  secondary: [
                    "https://cdn.islamic.network/quran/audio/128/ar.alafasy/1.mp3",
                    "https://cdn.islamic.network/quran/audio/64/ar.alafasy/1.mp3",
                  ],
                ),
                tafsir: const VerseTafsir(
                  id: Id(short: "short", long: "long"),
                )),
          ]);

      expect(actual, matcher);
    });

    test('.toJson()', () {
      final actual = SurahDetail(
          name: Name(
            short: "الفاتحة",
            long: "سُورَةُ ٱلْفَاتِحَةِ",
            transliteration: Translation(en: "Al-Faatiha", id: "Al-Fatihah"),
            translation: Translation(en: "The Opening", id: "Pembukaan"),
          ),
          numberOfVerses: 7,
          number: 1,
          preBismillah: null,
          revelation:
              const Revelation(arab: "مكة", en: "Meccan", id: "Makkiyyah"),
          sequence: 5,
          tafsir: const Tafsir(id: "Surat Al Faatihah .."),
          verses: [
            Verse(
                number: const Number(inQuran: 1, inSurah: 1),
                meta: const Meta(
                  juz: 1,
                  page: 1,
                  manzil: 1,
                  ruku: 1,
                  hizbQuarter: 1,
                  sajda: Sajda(recommended: false, obligatory: false),
                ),
                text: Text(
                  arab: "﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                  transliteration:
                      Transliteration(en: "Bismillaahir Rahmaanir Raheem"),
                ),
                translation: Translation(
                    en: "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
                    id: "Dengan nama Allah Yang Maha Pengasih, Maha Penyayang."),
                audio: const Audio(
                  primary:
                      "https://cdn.alquran.cloud/media/audio/ayah/ar.alafasy/1",
                  secondary: [
                    "https://cdn.islamic.network/quran/audio/128/ar.alafasy/1.mp3",
                    "https://cdn.islamic.network/quran/audio/64/ar.alafasy/1.mp3",
                  ],
                ),
                tafsir: const VerseTafsir(
                  id: Id(short: "short", long: "long"),
                )),
          ]);

      const mather = {
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
        "tafsir": {"id": "Surat Al Faatihah .."},
        "preBismillah": null,
        "verses": [
          {
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
              "id": {"short": "short", "long": "long"}
            }
          },
        ]
      };

      expect(actual.toJson(), mather);
    });
  });
}

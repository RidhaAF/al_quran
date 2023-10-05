import 'dart:io';

import 'package:al_quran/reconstructed_app/core/core.dart';
import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:al_quran/reconstructed_app/domain/domain.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock.dart';

void main() {
  late MockSurahDetailProvider mockSurahDetailProvider;
  late SurahDetailRepository surahDetailRepository;

  setUp(() {
    mockSurahDetailProvider = MockSurahDetailProvider();
    surahDetailRepository =
        SurahDetailRepositoryImpl(surahDetailProvider: mockSurahDetailProvider);
  });

  final tSurahDetail = SurahDetail(
      name: Name(
        short: "الفاتحة",
        long: "سُورَةُ ٱلْفَاتِحَةِ",
        transliteration: Translation(en: "Al-Faatiha", id: "Al-Fatihah"),
        translation: Translation(en: "The Opening", id: "Pembukaan"),
      ),
      numberOfVerses: 7,
      number: 1,
      preBismillah: null,
      revelation: const Revelation(arab: "مكة", en: "Meccan", id: "Makkiyyah"),
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

  group('getDetailSurah()', () {
    int surahNumber = 1;
    test('should return detail surah when call to api succeeds', () async {
      when(mockSurahDetailProvider.getSurahDetail(surahNumber: surahNumber))
          .thenAnswer((_) async => tSurahDetail);

      final result =
          await surahDetailRepository.getSurahDetail(surahNumber: surahNumber);

      verify(mockSurahDetailProvider.getSurahDetail(surahNumber: surahNumber));

      expect(result, equals(Right(tSurahDetail)));
    });

    test('should return server failure when call to api fails', () async {
      when(mockSurahDetailProvider.getSurahDetail(surahNumber: surahNumber))
          .thenThrow(ServerException());

      final result =
          await surahDetailRepository.getSurahDetail(surahNumber: surahNumber);

      verify(mockSurahDetailProvider.getSurahDetail(surahNumber: surahNumber));

      expect(result, equals(const Left(ServerFailure('Server Failure'))));
    });

    test('should return connection failure when call to api fails', () async {
      when(mockSurahDetailProvider.getSurahDetail(surahNumber: surahNumber))
          .thenThrow(const SocketException('Connection Failure'));

      final result =
          await surahDetailRepository.getSurahDetail(surahNumber: surahNumber);

      verify(mockSurahDetailProvider.getSurahDetail(surahNumber: surahNumber));

      expect(
          result, equals(const Left(ConnectionFailure('Connection Failure'))));
    });
  });
}

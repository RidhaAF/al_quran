import 'dart:io';

import 'package:al_quran/reconstructed_app/core/core.dart';
import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:al_quran/reconstructed_app/domain/domain.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock.dart';

void main() {
  late MockVerseProvider mockProvider;
  late VerseRepository repository;

  setUp(() {
    mockProvider = MockVerseProvider();
    repository = VerseRepositoryImpl(verseProvider: mockProvider);
  });

  final tVerse = Verse(
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
      transliteration: Transliteration(en: "Bismillaahir Rahmaanir Raheem"),
    ),
    translation: Translation(
        en: "In the name of Allah, the Entirely Merciful, the Especially Merciful.",
        id: "Dengan nama Allah Yang Maha Pengasih, Maha Penyayang."),
    audio: const Audio(
      primary: "https://cdn.alquran.cloud/media/audio/ayah/ar.alafasy/1",
      secondary: [
        "https://cdn.islamic.network/quran/audio/128/ar.alafasy/1.mp3",
        "https://cdn.islamic.network/quran/audio/64/ar.alafasy/1.mp3",
      ],
    ),
    tafsir: const VerseTafsir(
      id: Id(short: "short", long: "long"),
    ),
  );

  group("getVerse()", () {
    test('should return verse when call to api succeed', () async {
      when(mockProvider.getVerse(any, any)).thenAnswer((_) async => tVerse);

      final result = await repository.getVerse(1, 1);

      verify(mockProvider.getVerse(any, any));

      expect(result, equals(Right(tVerse)));
    });

    test('should return server failure when call to api fails', () async {
      when(mockProvider.getVerse(any, any)).thenThrow(ServerException());

      final result = await repository.getVerse(1, 1);

      verify(mockProvider.getVerse(any, any));

      expect(result, equals(const Left(ServerFailure('Server Failure'))));
    });

    test('should return connection failure when call to api fails', () async {
      when(mockProvider.getVerse(any, any))
          .thenThrow(const SocketException('Connection Failure'));

      final result = await repository.getVerse(1, 1);

      verify(mockProvider.getVerse(any, any));

      expect(
          result, equals(const Left(ConnectionFailure('Connection Failure'))));
    });
  });
}

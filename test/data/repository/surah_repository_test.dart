import 'dart:io';

import 'package:al_quran/reconstructed_app/core/core.dart';
import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:al_quran/reconstructed_app/domain/domain.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock.dart';

void main() {
  late MockSurahProvider mockSurahProvider;
  late SurahRepository surahRepository;

  setUp(() {
    mockSurahProvider = MockSurahProvider();
    surahRepository = SurahRepositoryImpl(surahProvider: mockSurahProvider);
  });

  final tSurahList = <Surah>[];

  group('getSurah()', () {
    test('should return list surah when call to api succeeds', () async {
      when(mockSurahProvider.getSurahs()).thenAnswer((_) async => tSurahList);

      final result = await surahRepository.getSurahs();

      verify(mockSurahProvider.getSurahs());

      final resultList = result.getOrElse(() => []);
      expect(resultList, tSurahList);
    });

    test('should return server failure when call to api fails', () async {
      when(mockSurahProvider.getSurahs()).thenThrow(ServerException());

      final result = await surahRepository.getSurahs();

      verify(mockSurahProvider.getSurahs());

      expect(result, equals(const Left(ServerFailure('Server Failure'))));
    });

    test('should return connection failure when call to api fails', () async {
      when(mockSurahProvider.getSurahs())
          .thenThrow(const SocketException('Connection Failure'));

      final result = await surahRepository.getSurahs();

      verify(mockSurahProvider.getSurahs());

      expect(
          result, equals(const Left(ConnectionFailure('Connection Failure'))));
    });
  });
}

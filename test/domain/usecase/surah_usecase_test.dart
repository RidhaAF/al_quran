import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:al_quran/reconstructed_app/domain/usecase/surah_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock.dart';

void main() {
  late SurahUsecase surahUsecase;
  late MockSurahRepository mockSurahRepository;

  setUp(() {
    mockSurahRepository = MockSurahRepository();
    surahUsecase = SurahUsecase(surahRepository: mockSurahRepository);
  });

  final tSurahList = <Surah>[];

  test('should get list of surah from the repository', () async {
    when(mockSurahRepository.getSurahs())
        .thenAnswer((_) async => Right(tSurahList));

    final result = await surahUsecase.call();

    expect(result, Right(tSurahList));
  });
}

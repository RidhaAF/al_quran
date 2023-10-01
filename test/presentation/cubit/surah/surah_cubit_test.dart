import 'package:al_quran/reconstructed_app/core/core.dart';
import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:al_quran/reconstructed_app/presentation/presentation.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helper/mock.dart';

void main() {
  late MockSurahUsecase mockSurahUsecase;
  late SurahCubit surahCubit;

  setUp(() {
    mockSurahUsecase = MockSurahUsecase();
    surahCubit = SurahCubit(surahUsecase: mockSurahUsecase);
  });

  final tSurahList = <Surah>[];

  test('.initial() should be empty', () {
    expect(surahCubit.state, const SurahState.initial());
  });

  blocTest<SurahCubit, SurahState>(
    'emits [.loading(), .loaded()] when mockSurahUsecase.call is succeeds.',
    build: () {
      when(mockSurahUsecase.call()).thenAnswer((_) async => Right(tSurahList));
      return surahCubit;
    },
    act: (cubit) => cubit.fetch(),
    verify: (bloc) => verify(mockSurahUsecase.call()),
    expect: () => <SurahState>[
      const SurahState.loading(),
      SurahState.loaded(tSurahList),
    ],
  );

  blocTest<SurahCubit, SurahState>(
    'emits [.loading(), .error()] when mockSurahUsecase.call is fails.',
    build: () {
      when(mockSurahUsecase.call())
          .thenAnswer((_) async => const Left(ServerFailure('')));
      return surahCubit;
    },
    act: (cubit) => cubit.fetch(),
    verify: (bloc) => verify(mockSurahUsecase.call()),
    expect: () => <SurahState>[
      const SurahState.loading(),
      const SurahState.error(''),
    ],
  );
}

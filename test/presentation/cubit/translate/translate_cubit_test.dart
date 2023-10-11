import 'package:al_quran/reconstructed_app/presentation/presentation.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helper/mock.dart';

void main() {
  late MockGetStorage mockBox;
  late TranslateCubit translateCubit;

  setUp(() {
    mockBox = MockGetStorage();
    translateCubit = TranslateCubit(box: mockBox);
  });

  group('Translate Cubit', () {
    test('.initial() should be empty', () {
      expect(translateCubit.state, const TranslateState.initial());
    });

    blocTest<TranslateCubit, TranslateState>(
      'emits [TranslateState.loaded(false)] when getTranslation returns false',
      build: () {
        when(mockBox.read('isEnglish')).thenReturn(false);
        return translateCubit;
      },
      act: (cubit) => cubit.getTranslation(),
      expect: () => const <TranslateState>[
        TranslateState.loaded(false),
      ],
    );

    blocTest<TranslateCubit, TranslateState>(
      'emits [TranslateState.loaded(true)] when getTranslation returns true',
      build: () {
        when(mockBox.read('isEnglish')).thenReturn(true);
        return translateCubit;
      },
      act: (cubit) => cubit.getTranslation(),
      expect: () => const <TranslateState>[
        TranslateState.loaded(true),
      ],
    );

    blocTest<TranslateCubit, TranslateState>(
      'emits [TranslateState.loaded(false)] when setTranslation returns true',
      build: () {
        when(mockBox.read('isEnglish')).thenReturn(true);
        return translateCubit;
      },
      act: (cubit) {
        cubit.setTranslation();
      },
      expect: () => const <TranslateState>[
        TranslateState.loaded(false),
      ],
    );

    blocTest(
      'emits [Translate.loaded(false)] when setTranslation is returns false',
      build: () {
        when(mockBox.read('isEnglish')).thenReturn(false);
        return translateCubit;
      },
      act: (cubit) {
        cubit.setTranslation();
      },
      expect: () => <TranslateState>[const TranslateState.loaded(false)],
    );
  });
}

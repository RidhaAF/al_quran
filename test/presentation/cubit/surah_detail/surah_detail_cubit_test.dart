import 'package:al_quran/reconstructed_app/core/core.dart';
import 'package:al_quran/reconstructed_app/data/data.dart';
import 'package:al_quran/reconstructed_app/presentation/presentation.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helper/mock.dart';

void main() {
  late MockSurahDetailUsecase mockUsecase;
  late SurahDetailCubit surahDetailCubit;

  setUp(() {
    mockUsecase = MockSurahDetailUsecase();
    surahDetailCubit = SurahDetailCubit(mockUsecase);
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

  test('.initial() should be empty', () {
    expect(surahDetailCubit.state, const SurahDetailState.initial());
  });

  blocTest<SurahDetailCubit, SurahDetailState>(
    'emits [.loading(), .loaded()] when mockUsecase.call() is succeeds.',
    build: () {
      when(mockUsecase.call(any)).thenAnswer((_) async => Right(tSurahDetail));

      return surahDetailCubit;
    },
    act: (bloc) => bloc.getSurah(1),
    verify: (bloc) => verify(mockUsecase.call(any)),
    expect: () => <SurahDetailState>[
      const SurahDetailState.loading(),
      SurahDetailState.loaded(tSurahDetail),
    ],
  );

  blocTest<SurahDetailCubit, SurahDetailState>(
    'emits [.loading(), .error()] when mockUsecase.call is fails.',
    build: () {
      when(mockUsecase.call(any))
          .thenAnswer((_) async => const Left(ServerFailure('')));

      return surahDetailCubit;
    },
    act: (bloc) => bloc.getSurah(1),
    expect: () => const <SurahDetailState>[
      SurahDetailState.loading(),
      SurahDetailState.error(''),
    ],
  );
}

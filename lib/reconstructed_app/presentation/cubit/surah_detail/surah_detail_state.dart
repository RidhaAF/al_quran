part of 'surah_detail_cubit.dart';

@freezed
class SurahDetailState with _$SurahDetailState {
  const factory SurahDetailState.initial() = _Initial;
  const factory SurahDetailState.loading() = _Loading;
  const factory SurahDetailState.loaded(SurahDetail surahDetail) = _Loaded;
  const factory SurahDetailState.error(String message) = _Error;
}

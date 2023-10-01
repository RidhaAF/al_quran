part of 'surah_cubit.dart';

@freezed
class SurahState with _$SurahState {
  const factory SurahState.initial() = _Initial;
  const factory SurahState.loading() = _Loading;
  const factory SurahState.loaded(List<Surah> surah) = _Loaded;
  const factory SurahState.error(String message) = _Error;
}

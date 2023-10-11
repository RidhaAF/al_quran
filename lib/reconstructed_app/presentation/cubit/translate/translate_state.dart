part of 'translate_cubit.dart';

@freezed
class TranslateState with _$TranslateState {
  const factory TranslateState.initial() = _Initial;
  const factory TranslateState.loaded(bool isEnglish) = _Loaded;
  const factory TranslateState.error(String message) = _Error;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation.freezed.dart';
part 'translation.g.dart';

@freezed
class Transliteration with _$Transliteration {
  factory Transliteration({
    String? en,
  }) = _Transliteration;

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      _$TransliterationFromJson(json);
}

@freezed
class Translation with _$Translation {
  factory Translation({
    String? en,
    String? id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}

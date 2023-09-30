import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class SurahModel with _$SurahModel {
  @JsonSerializable(explicitToJson: true)
  const factory SurahModel({
    int? code,
    String? status,
    String? message,
    List<Surah>? data,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahModelFromJson(json);
}

@freezed
class Surah with _$Surah {
  @JsonSerializable(explicitToJson: true)
  const factory Surah({
    int? number,
    int? sequence,
    int? numberOfVerses,
    Name? name,
    Revelation? revelation,
    Tafsir? tafsir,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

@freezed
class Name with _$Name {
  @JsonSerializable(explicitToJson: true)
  const factory Name({
    required String short,
    required String long,
    required Transliteration transliteration,
    required Translation translation,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class Transliteration with _$Transliteration {
  factory Transliteration({
    required String en,
    required String id,
  }) = _Transliteration;

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      _$TransliterationFromJson(json);
}

@freezed
class Translation with _$Translation {
  factory Translation({
    required String en,
    required String id,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}

@freezed
class Revelation with _$Revelation {
  const factory Revelation({
    required String arab,
    required String en,
    required String id,
  }) = _Revelation;

  factory Revelation.fromJson(Map<String, dynamic> json) =>
      _$RevelationFromJson(json);
}

@freezed
class Tafsir with _$Tafsir {
  const factory Tafsir({
    required String id,
  }) = _Tafsir;

  factory Tafsir.fromJson(Map<String, dynamic> json) => _$TafsirFromJson(json);
}

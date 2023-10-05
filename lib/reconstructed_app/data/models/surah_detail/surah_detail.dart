import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data.dart';

part 'surah_detail.freezed.dart';
part 'surah_detail.g.dart';

@freezed
class SurahDetail with _$SurahDetail {
  @JsonSerializable(explicitToJson: true)
  const factory SurahDetail({
    int? number,
    int? sequence,
    int? numberOfVerses,
    Name? name,
    Revelation? revelation,
    Tafsir? tafsir,
    PreBismillah? preBismillah,
    List<Verse>? verses,
  }) = _SurahDetail;

  factory SurahDetail.fromJson(Map<String, dynamic> json) =>
      _$SurahDetailFromJson(json);
}

@freezed
class Verse with _$Verse {
  @JsonSerializable(explicitToJson: true)
  const factory Verse({
    Number? number,
    Meta? meta,
    Text? text,
    Translation? translation,
    Audio? audio,
    VerseTafsir? tafsir,
  }) = _Verse;

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);
}

@freezed
class Text with _$Text {
  @JsonSerializable(explicitToJson: true)
  const factory Text({
    String? arab,
    Transliteration? transliteration,
  }) = _Text;

  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);
}

@freezed
class Audio with _$Audio {
  const factory Audio({
    String? primary,
    List<String>? secondary,
  }) = _Audio;

  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);
}

@freezed
class Meta with _$Meta {
  @JsonSerializable(explicitToJson: true)
  const factory Meta({
    int? juz,
    int? page,
    int? manzil,
    int? ruku,
    int? hizbQuarter,
    Sajda? sajda,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Sajda with _$Sajda {
  @JsonSerializable(explicitToJson: true)
  const factory Sajda({
    bool? recommended,
    bool? obligatory,
  }) = _Sajda;

  factory Sajda.fromJson(Map<String, dynamic> json) => _$SajdaFromJson(json);
}

@freezed
class Number with _$Number {
  @JsonSerializable(explicitToJson: true)
  const factory Number({
    int? inQuran,
    int? inSurah,
  }) = _Number;

  factory Number.fromJson(Map<String, dynamic> json) => _$NumberFromJson(json);
}

@freezed
class VerseTafsir with _$VerseTafsir {
  @JsonSerializable(explicitToJson: true)
  const factory VerseTafsir({
    Id? id,
  }) = _VerseTafsir;

  factory VerseTafsir.fromJson(Map<String, dynamic> json) =>
      _$VerseTafsirFromJson(json);
}

@freezed
class Id with _$Id {
  const factory Id({
    String? short,
    String? long,
  }) = _Id;

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
}

@freezed
class PreBismillah with _$PreBismillah {
  @JsonSerializable(explicitToJson: true)
  const factory PreBismillah({
    Text? text,
    Translation? translation,
    Audio? audio,
  }) = _PreBismillah;

  factory PreBismillah.fromJson(Map<String, dynamic> json) =>
      _$PreBismillahFromJson(json);
}

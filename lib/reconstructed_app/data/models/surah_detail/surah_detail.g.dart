// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurahDetail _$$_SurahDetailFromJson(Map<String, dynamic> json) =>
    _$_SurahDetail(
      number: json['number'] as int?,
      sequence: json['sequence'] as int?,
      numberOfVerses: json['numberOfVerses'] as int?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      revelation: json['revelation'] == null
          ? null
          : Revelation.fromJson(json['revelation'] as Map<String, dynamic>),
      tafsir: json['tafsir'] == null
          ? null
          : Tafsir.fromJson(json['tafsir'] as Map<String, dynamic>),
      preBismillah: json['preBismillah'] == null
          ? null
          : PreBismillah.fromJson(json['preBismillah'] as Map<String, dynamic>),
      verses: (json['verses'] as List<dynamic>?)
          ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurahDetailToJson(_$_SurahDetail instance) =>
    <String, dynamic>{
      'number': instance.number,
      'sequence': instance.sequence,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name?.toJson(),
      'revelation': instance.revelation?.toJson(),
      'tafsir': instance.tafsir?.toJson(),
      'preBismillah': instance.preBismillah?.toJson(),
      'verses': instance.verses?.map((e) => e.toJson()).toList(),
    };

_$_Verse _$$_VerseFromJson(Map<String, dynamic> json) => _$_Verse(
      number: json['number'] == null
          ? null
          : Number.fromJson(json['number'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Text.fromJson(json['text'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : Translation.fromJson(json['translation'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : Audio.fromJson(json['audio'] as Map<String, dynamic>),
      tafsir: json['tafsir'] == null
          ? null
          : VerseTafsir.fromJson(json['tafsir'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VerseToJson(_$_Verse instance) => <String, dynamic>{
      'number': instance.number?.toJson(),
      'meta': instance.meta?.toJson(),
      'text': instance.text?.toJson(),
      'translation': instance.translation?.toJson(),
      'audio': instance.audio?.toJson(),
      'tafsir': instance.tafsir?.toJson(),
    };

_$_Text _$$_TextFromJson(Map<String, dynamic> json) => _$_Text(
      arab: json['arab'] as String?,
      transliteration: json['transliteration'] == null
          ? null
          : Transliteration.fromJson(
              json['transliteration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TextToJson(_$_Text instance) => <String, dynamic>{
      'arab': instance.arab,
      'transliteration': instance.transliteration?.toJson(),
    };

_$_Audio _$$_AudioFromJson(Map<String, dynamic> json) => _$_Audio(
      primary: json['primary'] as String?,
      secondary: (json['secondary'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_AudioToJson(_$_Audio instance) => <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      juz: json['juz'] as int?,
      page: json['page'] as int?,
      manzil: json['manzil'] as int?,
      ruku: json['ruku'] as int?,
      hizbQuarter: json['hizbQuarter'] as int?,
      sajda: json['sajda'] == null
          ? null
          : Sajda.fromJson(json['sajda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'juz': instance.juz,
      'page': instance.page,
      'manzil': instance.manzil,
      'ruku': instance.ruku,
      'hizbQuarter': instance.hizbQuarter,
      'sajda': instance.sajda?.toJson(),
    };

_$_Sajda _$$_SajdaFromJson(Map<String, dynamic> json) => _$_Sajda(
      recommended: json['recommended'] as bool?,
      obligatory: json['obligatory'] as bool?,
    );

Map<String, dynamic> _$$_SajdaToJson(_$_Sajda instance) => <String, dynamic>{
      'recommended': instance.recommended,
      'obligatory': instance.obligatory,
    };

_$_Number _$$_NumberFromJson(Map<String, dynamic> json) => _$_Number(
      inQuran: json['inQuran'] as int?,
      inSurah: json['inSurah'] as int?,
    );

Map<String, dynamic> _$$_NumberToJson(_$_Number instance) => <String, dynamic>{
      'inQuran': instance.inQuran,
      'inSurah': instance.inSurah,
    };

_$_VerseTafsir _$$_VerseTafsirFromJson(Map<String, dynamic> json) =>
    _$_VerseTafsir(
      id: json['id'] == null
          ? null
          : Id.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VerseTafsirToJson(_$_VerseTafsir instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
    };

_$_Id _$$_IdFromJson(Map<String, dynamic> json) => _$_Id(
      short: json['short'] as String?,
      long: json['long'] as String?,
    );

Map<String, dynamic> _$$_IdToJson(_$_Id instance) => <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
    };

_$_PreBismillah _$$_PreBismillahFromJson(Map<String, dynamic> json) =>
    _$_PreBismillah(
      text: json['text'] == null
          ? null
          : Text.fromJson(json['text'] as Map<String, dynamic>),
      translation: json['translation'] == null
          ? null
          : Translation.fromJson(json['translation'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : Audio.fromJson(json['audio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PreBismillahToJson(_$_PreBismillah instance) =>
    <String, dynamic>{
      'text': instance.text?.toJson(),
      'translation': instance.translation?.toJson(),
      'audio': instance.audio?.toJson(),
    };

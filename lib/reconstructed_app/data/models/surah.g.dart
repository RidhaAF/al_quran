// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurahModel _$$_SurahModelFromJson(Map<String, dynamic> json) =>
    _$_SurahModel(
      code: json['code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Surah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurahModelToJson(_$_SurahModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$_Surah _$$_SurahFromJson(Map<String, dynamic> json) => _$_Surah(
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
    );

Map<String, dynamic> _$$_SurahToJson(_$_Surah instance) => <String, dynamic>{
      'number': instance.number,
      'sequence': instance.sequence,
      'numberOfVerses': instance.numberOfVerses,
      'name': instance.name?.toJson(),
      'revelation': instance.revelation?.toJson(),
      'tafsir': instance.tafsir?.toJson(),
    };

_$_Name _$$_NameFromJson(Map<String, dynamic> json) => _$_Name(
      short: json['short'] as String,
      long: json['long'] as String,
      transliteration: Transliteration.fromJson(
          json['transliteration'] as Map<String, dynamic>),
      translation:
          Translation.fromJson(json['translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NameToJson(_$_Name instance) => <String, dynamic>{
      'short': instance.short,
      'long': instance.long,
      'transliteration': instance.transliteration.toJson(),
      'translation': instance.translation.toJson(),
    };

_$_Transliteration _$$_TransliterationFromJson(Map<String, dynamic> json) =>
    _$_Transliteration(
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_TransliterationToJson(_$_Transliteration instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

_$_Translation _$$_TranslationFromJson(Map<String, dynamic> json) =>
    _$_Translation(
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_TranslationToJson(_$_Translation instance) =>
    <String, dynamic>{
      'en': instance.en,
      'id': instance.id,
    };

_$_Revelation _$$_RevelationFromJson(Map<String, dynamic> json) =>
    _$_Revelation(
      arab: json['arab'] as String,
      en: json['en'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_RevelationToJson(_$_Revelation instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'en': instance.en,
      'id': instance.id,
    };

_$_Tafsir _$$_TafsirFromJson(Map<String, dynamic> json) => _$_Tafsir(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_TafsirToJson(_$_Tafsir instance) => <String, dynamic>{
      'id': instance.id,
    };

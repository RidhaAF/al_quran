// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

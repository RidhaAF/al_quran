import 'dart:convert';

class VerseModel {
  int? code;
  String? status;
  String? message;
  Verse? data;

  VerseModel({
    this.code,
    this.status,
    this.message,
    this.data,
  });

  factory VerseModel.fromRawJson(String str) =>
      VerseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VerseModel.fromJson(Map<String, dynamic> json) => VerseModel(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Verse.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

class Verse {
  Number? number;
  Meta? meta;
  Word? word;
  Translation? translation;
  Audio? audio;
  DataTafsir? tafsir;
  Surah? surah;

  Verse({
    this.number,
    this.meta,
    this.word,
    this.translation,
    this.audio,
    this.tafsir,
    this.surah,
  });

  factory Verse.fromRawJson(String str) => Verse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        number: json["number"] == null ? null : Number.fromJson(json["number"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
        word: json["text"] == null ? null : Word.fromJson(json["text"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
        audio: json["audio"] == null ? null : Audio.fromJson(json["audio"]),
        tafsir:
            json["tafsir"] == null ? null : DataTafsir.fromJson(json["tafsir"]),
        surah: json["surah"] == null ? null : Surah.fromJson(json["surah"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number?.toJson(),
        "meta": meta?.toJson(),
        "text": word?.toJson(),
        "translation": translation?.toJson(),
        "audio": audio?.toJson(),
        "tafsir": tafsir?.toJson(),
        "surah": surah?.toJson(),
      };
}

class Audio {
  String? primary;
  List<String>? secondary;

  Audio({
    this.primary,
    this.secondary,
  });

  factory Audio.fromRawJson(String str) => Audio.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        primary: json["primary"],
        secondary: json["secondary"] == null
            ? []
            : List<String>.from(json["secondary"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "primary": primary,
        "secondary": secondary == null
            ? []
            : List<dynamic>.from(secondary!.map((x) => x)),
      };
}

class Meta {
  int? juz;
  int? page;
  int? manzil;
  int? ruku;
  int? hizbQuarter;
  Sajda? sajda;

  Meta({
    this.juz,
    this.page,
    this.manzil,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        juz: json["juz"],
        page: json["page"],
        manzil: json["manzil"],
        ruku: json["ruku"],
        hizbQuarter: json["hizbQuarter"],
        sajda: json["sajda"] == null ? null : Sajda.fromJson(json["sajda"]),
      );

  Map<String, dynamic> toJson() => {
        "juz": juz,
        "page": page,
        "manzil": manzil,
        "ruku": ruku,
        "hizbQuarter": hizbQuarter,
        "sajda": sajda?.toJson(),
      };
}

class Sajda {
  bool? recommended;
  bool? obligatory;

  Sajda({
    this.recommended,
    this.obligatory,
  });

  factory Sajda.fromRawJson(String str) => Sajda.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Sajda.fromJson(Map<String, dynamic> json) => Sajda(
        recommended: json["recommended"],
        obligatory: json["obligatory"],
      );

  Map<String, dynamic> toJson() => {
        "recommended": recommended,
        "obligatory": obligatory,
      };
}

class Number {
  int? inQuran;
  int? inSurah;

  Number({
    this.inQuran,
    this.inSurah,
  });

  factory Number.fromRawJson(String str) => Number.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Number.fromJson(Map<String, dynamic> json) => Number(
        inQuran: json["inQuran"],
        inSurah: json["inSurah"],
      );

  Map<String, dynamic> toJson() => {
        "inQuran": inQuran,
        "inSurah": inSurah,
      };
}

class Surah {
  int? number;
  int? sequence;
  int? numberOfVerses;
  Name? name;
  Revelation? revelation;
  SurahTafsir? tafsir;
  PreBismillah? preBismillah;

  Surah({
    this.number,
    this.sequence,
    this.numberOfVerses,
    this.name,
    this.revelation,
    this.tafsir,
    this.preBismillah,
  });

  factory Surah.fromRawJson(String str) => Surah.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        number: json["number"],
        sequence: json["sequence"],
        numberOfVerses: json["numberOfVerses"],
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        revelation: json["revelation"] == null
            ? null
            : Revelation.fromJson(json["revelation"]),
        tafsir: json["tafsir"] == null
            ? null
            : SurahTafsir.fromJson(json["tafsir"]),
        preBismillah: json["preBismillah"] == null
            ? null
            : PreBismillah.fromJson(json["preBismillah"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "sequence": sequence,
        "numberOfVerses": numberOfVerses,
        "name": name?.toJson(),
        "revelation": revelation?.toJson(),
        "tafsir": tafsir?.toJson(),
        "preBismillah": preBismillah?.toJson(),
      };
}

class Name {
  String? short;
  String? long;
  Translation? transliteration;
  Translation? translation;

  Name({
    this.short,
    this.long,
    this.transliteration,
    this.translation,
  });

  factory Name.fromRawJson(String str) => Name.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        long: json["long"],
        transliteration: json["transliteration"] == null
            ? null
            : Translation.fromJson(json["transliteration"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
        "transliteration": transliteration?.toJson(),
        "translation": translation?.toJson(),
      };
}

class Translation {
  String? en;
  String? id;

  Translation({
    this.en,
    this.id,
  });

  factory Translation.fromRawJson(String str) =>
      Translation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "id": id,
      };
}

class PreBismillah {
  Word? word;
  Translation? translation;
  Audio? audio;

  PreBismillah({
    this.word,
    this.translation,
    this.audio,
  });

  factory PreBismillah.fromRawJson(String str) =>
      PreBismillah.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PreBismillah.fromJson(Map<String, dynamic> json) => PreBismillah(
        word: json["text"] == null ? null : Word.fromJson(json["text"]),
        translation: json["translation"] == null
            ? null
            : Translation.fromJson(json["translation"]),
        audio: json["audio"] == null ? null : Audio.fromJson(json["audio"]),
      );

  Map<String, dynamic> toJson() => {
        "text": word?.toJson(),
        "translation": translation?.toJson(),
        "audio": audio?.toJson(),
      };
}

class Word {
  String? arab;
  Transliteration? transliteration;

  Word({
    this.arab,
    this.transliteration,
  });

  factory Word.fromRawJson(String str) => Word.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Word.fromJson(Map<String, dynamic> json) => Word(
        arab: json["arab"],
        transliteration: json["transliteration"] == null
            ? null
            : Transliteration.fromJson(json["transliteration"]),
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
        "transliteration": transliteration?.toJson(),
      };
}

class Transliteration {
  String? en;

  Transliteration({
    this.en,
  });

  factory Transliteration.fromRawJson(String str) =>
      Transliteration.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      Transliteration(
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
      };
}

class Revelation {
  String? arab;
  String? en;
  String? id;

  Revelation({
    this.arab,
    this.en,
    this.id,
  });

  factory Revelation.fromRawJson(String str) =>
      Revelation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
        arab: json["arab"],
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
        "en": en,
        "id": id,
      };
}

class SurahTafsir {
  String? id;

  SurahTafsir({
    this.id,
  });

  factory SurahTafsir.fromRawJson(String str) =>
      SurahTafsir.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SurahTafsir.fromJson(Map<String, dynamic> json) => SurahTafsir(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class DataTafsir {
  Id? id;

  DataTafsir({
    this.id,
  });

  factory DataTafsir.fromRawJson(String str) =>
      DataTafsir.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataTafsir.fromJson(Map<String, dynamic> json) => DataTafsir(
        id: json["id"] == null ? null : Id.fromJson(json["id"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
      };
}

class Id {
  String? short;
  String? long;

  Id({
    this.short,
    this.long,
  });

  factory Id.fromRawJson(String str) => Id.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        short: json["short"],
        long: json["long"],
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
      };
}

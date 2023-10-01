import '../../data/data.dart';

class SurahVariable {
  final Surah? surah;
  final bool isEnglish;

  SurahVariable(this.surah, this.isEnglish);

  String? get surahNumber => surah?.number?.toString() ?? '';
  String? get surahNameEn => surah?.name?.transliteration.en ?? '';
  String? get surahNameId => surah?.name?.transliteration.id ?? '';
  String? get surahNameTranslated => isEnglish ? surahNameEn : surahNameId;
  String? get surahNameTranslationEn => surah?.name?.translation.en ?? '';
  String? get surahNameTranslationId => surah?.name?.translation.id ?? '';
  String? get surahNameTranslationTranslated =>
      isEnglish ? surahNameTranslationEn : surahNameTranslationId;
  String? get numberOfVerses => surah?.numberOfVerses?.toString() ?? '';
  String? get versesTranslated => isEnglish ? 'verses' : 'ayat';
  String? get revelationEn => surah?.revelation?.en ?? '';
  String? get revelationId => surah?.revelation?.id ?? '';
  String? get revelationTranslated => isEnglish ? revelationEn : revelationId;
  String get surahSubtitle =>
      '$surahNameTranslationTranslated • $numberOfVerses $versesTranslated • $revelationTranslated';
  String? get surahNameArabic => surah?.name?.short ?? '';
}

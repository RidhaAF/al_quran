import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../data/data.dart';
import '../../presentation.dart';

class VersePage extends StatefulWidget {
  const VersePage({
    Key? key,
    required this.surah,
    required this.verse,
    required this.surahNumber,
    required this.verseNumber,
  }) : super(key: key);
  final Surah? surah;
  final Verse? verse;
  final int? surahNumber;
  final String? verseNumber;

  @override
  State<VersePage> createState() => _VersePageState();
}

class _VersePageState extends State<VersePage> {
  bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    var surah = SurahVariable(widget.surah, isEnglish);
    var verse = VerseVariable(verse: widget.verse, isEnglish: isEnglish);

    return DefaultScaffold(
      title:
          '${surah.surahNameTranslated} (${surah.surahNumber}:${verse.verseNumber})',
      body: ListView(
        children: [
          _verses(),
        ],
      ),
    );
  }

  Widget _verses() {
    var verse = VerseVariable(verse: widget.verse, isEnglish: isEnglish);

    return Container(
      margin: EdgeInsets.all(DefaultStyle.defaultMargin),
      decoration: BoxDecoration(
        color: DefaultStyle.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(DefaultStyle.defaultRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(DefaultStyle.defaultMargin),
        child: VerseItem(
          verseNumber: verse.verseNumber,
          verseArabic: verse.verseArabic,
          verseTransliteration: verse.verseTransliteration,
          verseTranslation: verse.verseTranslationTranslated,
          audio: verse.audio,
          tafsir: verse.tafsir,
          isEnglish: isEnglish,
        ),
      ),
    );
  }
}

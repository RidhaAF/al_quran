import 'package:al_quran/app/cubits/translate/translate_cubit.dart';
import 'package:al_quran/app/models/surah_detail_model.dart';
import 'package:al_quran/app/models/surah_model.dart';
import 'package:al_quran/app/utilities/constants.dart';
import 'package:al_quran/app/widgets/default_app_bar.dart';
import 'package:al_quran/app/widgets/translate_icon_button.dart';
import 'package:al_quran/app/widgets/verse_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VersePage extends StatefulWidget {
  final Surah? surah;
  final Verse? verse;
  final String? surahNumber;
  final String? verseNumber;
  const VersePage({
    super.key,
    required this.surah,
    required this.verse,
    required this.surahNumber,
    required this.verseNumber,
  });

  @override
  State<VersePage> createState() => _VersePageState();
}

class _VersePageState extends State<VersePage> {
  bool isEnglish = true;

  void _getTranslation() {
    isEnglish = context.read<TranslateCubit>().getTranslation();
    setState(() {});
  }

  void _handleTranslation() {
    isEnglish = context.read<TranslateCubit>().setTranslation();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getTranslation();
  }

  @override
  Widget build(BuildContext context) {
    String? surahNameEn = widget.surah?.name?.transliteration?.en ?? '';
    String? surahNameId = widget.surah?.name?.transliteration?.id ?? '';
    String? surahNameTranslated = isEnglish ? surahNameEn : surahNameId;
    String? surahNumber = widget.surahNumber ?? '0';
    String? verseNumber = widget.verseNumber ?? '0';

    return Scaffold(
      appBar: DefaultAppBar(
        title: '$surahNameTranslated ($surahNumber:$verseNumber)',
        actions: [
          BlocListener<TranslateCubit, TranslateState>(
            listener: (context, state) {
              if (state is TranslateLoaded) {
                isEnglish = state.isEnglish;
                setState(() {});
              }
            },
            child: TranslateIconButton(
              isEnglish: isEnglish,
              onPressed: () {
                _handleTranslation();
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          _verses(),
        ],
      ),
    );
  }

  Widget _verses() {
    String? verseNumber = widget.verse?.number?.inSurah.toString() ?? '';
    String? verseArabic = widget.verse?.word?.arab ?? '';
    String? verseTransliteration =
        widget.verse?.word?.transliteration?.en ?? '';
    String? verseTranslationEn = widget.verse?.translation?.en ?? '';
    String? verseTranslationId = widget.verse?.translation?.id ?? '';
    String? verseTranslationTranslated =
        isEnglish ? verseTranslationEn : verseTranslationId;
    String? tafsir = widget.verse?.tafsir?.id?.long ?? '';
    String? audio = widget.verse?.audio?.primary ?? '';

    return Container(
      margin: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(defaultMargin),
        child: VerseItem(
          verseNumber: verseNumber,
          verseArabic: verseArabic,
          verseTransliteration: verseTransliteration,
          verseTranslation: verseTranslationTranslated,
          audio: audio,
          tafsir: tafsir,
          isEnglish: isEnglish,
        ),
      ),
    );
  }
}

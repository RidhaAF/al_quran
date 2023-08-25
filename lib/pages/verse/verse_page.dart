import 'package:al_quran/cubits/translate/translate_cubit.dart';
import 'package:al_quran/cubits/verse/verse_cubit.dart';
import 'package:al_quran/models/surah_model.dart' as sm;
import 'package:al_quran/models/verse_model.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:al_quran/widgets/default_404.dart';
import 'package:al_quran/widgets/default_app_bar.dart';
import 'package:al_quran/widgets/default_refresh_indicator.dart';
import 'package:al_quran/widgets/default_shimmer.dart';
import 'package:al_quran/widgets/translate_icon_button.dart';
import 'package:al_quran/widgets/verse_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VersePage extends StatefulWidget {
  final sm.Surah? surah;
  final String? surahNumber;
  final String? verseNumber;
  const VersePage({
    super.key,
    required this.surah,
    required this.surahNumber,
    required this.verseNumber,
  });

  @override
  State<VersePage> createState() => _VersePageState();
}

class _VersePageState extends State<VersePage> {
  bool isEnglish = true;

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      _getData();
      setState(() {});
    }
  }

  _getData() {
    context.read<VerseCubit>().getVerse(
        surahNumber: widget.surahNumber ?? '0',
        verseNumber: widget.verseNumber ?? '0');
  }

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
    _getData();
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
      body: DefaultRefreshIndicator(
        onRefresh: _onRefresh,
        child: BlocBuilder<VerseCubit, VerseState>(
          builder: (context, state) {
            if (state is VerseInitial) {
              return Container();
            } else if (state is VerseLoading) {
              return surahDetailShimmer(itemCount: 1);
            } else if (state is VerseLoaded) {
              Verse? verse = state.verse.data;

              return ListView(
                children: [
                  _verses(verse),
                ],
              );
            }
            return const Default404();
          },
        ),
      ),
    );
  }

  Widget _verses(Verse? verse) {
    String? verseNumber = verse?.number?.inSurah?.toString() ?? '';
    String? verseArabic = verse?.word?.arab ?? '';
    String? verseTransliteration = verse?.word?.transliteration?.en ?? '';
    String? verseTranslationEn = verse?.translation?.en ?? '';
    String? verseTranslationId = verse?.translation?.id ?? '';
    String? verseTranslationTranslated =
        isEnglish ? verseTranslationEn : verseTranslationId;
    String? tafsir = verse?.tafsir?.id?.long ?? '';

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
          tafsir: tafsir,
        ),
      ),
    );
  }
}

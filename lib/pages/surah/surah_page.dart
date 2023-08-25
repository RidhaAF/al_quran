import 'package:al_quran/cubits/surah_detail/surah_detail_cubit.dart';
import 'package:al_quran/cubits/translate/translate_cubit.dart';
import 'package:al_quran/models/surah_detail_model.dart';
import 'package:al_quran/models/surah_model.dart';
import 'package:al_quran/widgets/default_404.dart';
import 'package:al_quran/widgets/default_app_bar.dart';
import 'package:al_quran/widgets/default_refresh_indicator.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:al_quran/widgets/default_shimmer.dart';
import 'package:al_quran/widgets/translate_icon_button.dart';
import 'package:al_quran/widgets/verse_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SurahPage extends StatefulWidget {
  final String? surahNumber;
  final Surah? surah;
  const SurahPage({super.key, this.surahNumber, this.surah});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  bool isEnglish = true;
  String? surahNumber = '0';
  String? surahNameTranslated = '';

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      _getData();
      setState(() {});
    }
  }

  _getData() {
    context
        .read<SurahDetailCubit>()
        .getSurah(surahNumber: widget.surahNumber ?? '0');
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
    surahNumber = widget.surahNumber ?? '0';
    String? surahNameEn = widget.surah?.name?.transliteration?.en ?? '';
    String? surahNameId = widget.surah?.name?.transliteration?.id ?? '';
    surahNameTranslated = isEnglish ? surahNameEn : surahNameId;
    String? surahNameTranslationEn = widget.surah?.name?.translation?.en ?? '';
    String? surahNameTranslationId = widget.surah?.name?.translation?.id ?? '';
    String? surahNameTranslationTranslated =
        isEnglish ? surahNameTranslationEn : surahNameTranslationId;

    return Scaffold(
      appBar: DefaultAppBar(
        title: '$surahNumber. $surahNameTranslated',
        subtitle: surahNameTranslationTranslated,
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
        child: BlocBuilder<SurahDetailCubit, SurahDetailState>(
          builder: (context, state) {
            if (state is SurahDetailInitial) {
              return Container();
            } else if (state is SurahDetailLoading) {
              return surahDetailShimmer();
            } else if (state is SurahDetailLoaded) {
              SurahDetail? surahDetail = state.surahDetailModel.data;

              return ListView(
                children: [
                  _preBismillah(surahDetail),
                  _verses(surahDetail),
                ],
              );
            }
            return const Default404();
          },
        ),
      ),
    );
  }

  Widget _preBismillah(SurahDetail? surahDetail) {
    PreBismillah? preBismillah = surahDetail?.preBismillah;

    if (preBismillah == null) {
      return Container();
    }
    return Container(
      padding: EdgeInsets.all(defaultMargin),
      child: Center(
        child: Text(
          preBismillah.word?.arab ?? '',
          style: GoogleFonts.scheherazadeNew(
            fontSize: title1FS,
            height: 2.0,
          ),
        ),
      ),
    );
  }

  Widget _verses(SurahDetail? surahDetail) {
    List<Verse>? verses = surahDetail?.verses;

    return Container(
      margin: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: verses?.length ?? 0,
        separatorBuilder: (context, i) => const Divider(height: 0),
        itemBuilder: (context, i) {
          Verse? verse = verses?[i];
          String? verseNumber = verse?.number?.inSurah?.toString() ?? '';
          String? verseArabic = verse?.word?.arab ?? '';
          String? verseTransliteration = verse?.word?.transliteration?.en ?? '';
          String? verseTranslationEn = verse?.translation?.en ?? '';
          String? verseTranslationId = verse?.translation?.id ?? '';
          String? verseTranslationTranslated =
              isEnglish ? verseTranslationEn : verseTranslationId;
          String? audio = verse?.audio?.primary ?? '';

          return InkWell(
            onTap: () {
              context.push(
                '/surah/$surahNumber/$verseNumber',
                extra: {
                  'surah': widget.surah,
                  'verse': verse,
                },
              );
            },
            borderRadius: BorderRadius.circular(defaultRadius),
            child: Padding(
              padding: EdgeInsets.all(defaultMargin),
              child: VerseItem(
                verseNumber: verseNumber,
                verseArabic: verseArabic,
                verseTransliteration: verseTransliteration,
                verseTranslation: verseTranslationTranslated,
                audio: audio,
                isEnglish: isEnglish,
              ),
            ),
          );
        },
      ),
    );
  }
}

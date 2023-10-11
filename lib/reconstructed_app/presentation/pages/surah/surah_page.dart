import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../data/data.dart' hide Text;
import '../../presentation.dart';

class SurahPage extends StatefulWidget {
  const SurahPage({super.key, this.surahNumber, this.surah});

  final int? surahNumber;
  final Surah? surah;

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
  bool isEnglish = true;
  int? surahNumber = 0;
  String? surahNameTranslated = '';

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      _getData();
      setState(() {});
    }
  }

  _getData() {
    context.read<SurahDetailCubit>().getSurah(widget.surahNumber ?? 0);
  }

  _getTranslation() {
    isEnglish = context.read<TranslateCubit>().getTranslation();
    setState(() {});
  }

  _handleTranslation() {
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
    surahNumber = widget.surahNumber ?? 0;

    var surah = SurahVariable(widget.surah, isEnglish);
    return Scaffold(
      appBar: DefaultAppBar(
        title: '$surahNumber. ${surah.surahNameTranslated}',
        subtitle: surah.surahNameTranslationTranslated,
        actions: [
          BlocListener<TranslateCubit, TranslateState>(
            listener: (context, state) {
              state.whenOrNull(
                loaded: (isEnglishCubit) {
                  isEnglish = isEnglishCubit;
                  setState(() {});
                },
              );
            },
            child: TranslateIconButton(
              isEnglish: isEnglish,
              onPressed: () {
                log('isEnglish: $isEnglish');
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
            return state.when(
              initial: () => Container(),
              loading: () => const SurahDetailShimmer(),
              loaded: (surahDetail) {
                return ListView(
                  children: [
                    _preBismiilah(surahDetail),
                    _verse(surahDetail),
                  ],
                );
              },
              error: (message) => const Default404(),
            );
          },
        ),
      ),
    );
  }

  Widget _preBismiilah(SurahDetail? surahDetail) {
    PreBismillah? preBismiilah = surahDetail?.preBismillah;
    if (preBismiilah == null) return Container();

    return Container(
      padding: EdgeInsets.all(DefaultStyle.defaultMargin),
      child: Center(
        child: Text(
          preBismiilah.text?.arab ?? '',
          style: GoogleFonts.scheherazadeNew(
            fontSize: DefaultStyle.title1FS,
            height: 2.0,
          ),
        ),
      ),
    );
  }

  Widget _verse(SurahDetail? surahDetail) {
    List<Verse>? verses = surahDetail?.verses;

    return Container(
      margin: EdgeInsets.all(DefaultStyle.defaultMargin),
      decoration: BoxDecoration(
        color: DefaultStyle.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(DefaultStyle.defaultRadius),
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: verses?.length ?? 0,
        separatorBuilder: (context, i) => const Divider(height: 0),
        itemBuilder: (context, index) {
          var verseVar =
              VerseVariable(verse: verses?[index], isEnglish: isEnglish);

          return InkWell(
            onTap: () {
              context.push(
                '/surah/$surahNumber/${verseVar.verseNumber}',
                extra: {
                  'surah': widget.surah,
                  'verse': verseVar.verse,
                },
              );
            },
            borderRadius: BorderRadius.circular(DefaultStyle.defaultRadius),
            child: Padding(
              padding: EdgeInsets.all(DefaultStyle.defaultMargin),
              child: VerseItem(
                verseNumber: verseVar.verseNumber,
                verseArabic: verseVar.verseArabic,
                verseTranslation: verseVar.verseTranslationTranslated,
                verseTransliteration: verseVar.verseTransliteration,
                audio: verseVar.audio,
                isEnglish: verseVar.isEnglish,
              ),
            ),
          );
        },
      ),
    );
  }
}

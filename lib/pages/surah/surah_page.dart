import 'package:al_quran/cubits/surah_detail/surah_detail_cubit.dart';
import 'package:al_quran/models/surah_detail_model.dart';
import 'package:al_quran/models/surah_model.dart';
import 'package:al_quran/widgets/default_app_bar.dart';
import 'package:al_quran/widgets/default_refresh_indicator.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:al_quran/widgets/default_shimmer.dart';
import 'package:al_quran/widgets/verse_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SurahPage extends StatefulWidget {
  final String? surahNumber;
  final Surah? surah;
  const SurahPage({super.key, this.surahNumber, this.surah});

  @override
  State<SurahPage> createState() => _SurahPageState();
}

class _SurahPageState extends State<SurahPage> {
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

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    String? surahNumber = widget.surahNumber ?? '0';
    String? surahName = widget.surah?.name?.transliteration?.id ?? '';

    return Scaffold(
      appBar: DefaultAppBar(title: '$surahNumber. $surahName'),
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
            return Container();
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
          ),
        ),
      ),
    );
  }

  Widget _verses(SurahDetail? surahDetail) {
    List<Verse>? verses = surahDetail?.verses;

    return Container(
      padding: EdgeInsets.all(defaultMargin),
      margin: EdgeInsets.all(defaultMargin),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: verses?.length ?? 0,
        separatorBuilder: (context, i) => const Divider(),
        itemBuilder: (context, i) {
          Verse? verse = verses?[i];
          String? verseNumber = verse?.number?.inSurah?.toString() ?? '';
          String? verseArabic = verse?.word?.arab ?? '';
          String? verseTransliteration = verse?.word?.transliteration?.en ?? '';
          String? verseTranslation = verse?.translation?.en ?? '';

          return VerseItem(
            verseNumber: verseNumber,
            verseArabic: verseArabic,
            verseTransliteration: verseTransliteration,
            verseTranslation: verseTranslation,
          );
        },
      ),
    );
  }
}

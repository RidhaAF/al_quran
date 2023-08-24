import 'package:al_quran/cubits/translate/translate_cubit.dart';
import 'package:al_quran/widgets/default_app_bar.dart';
import 'package:al_quran/widgets/default_list_tile.dart';
import 'package:al_quran/widgets/default_refresh_indicator.dart';
import 'package:al_quran/cubits/surah/surah_cubit.dart';
import 'package:al_quran/models/surah_model.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:al_quran/utilities/functions.dart';
import 'package:al_quran/widgets/default_shimmer.dart';
import 'package:al_quran/widgets/translate_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isEnglish = true;

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      _getData();
      setState(() {});
    }
  }

  _getData() {
    context.read<SurahCubit>().getSurahs();
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
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isDarkMode(context)
        ? blackColor.withOpacity(0.0)
        : whiteColor.withOpacity(0.0);

    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Al-Quran',
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
              iconColor: primaryColor,
            ),
          ),
        ],
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: primaryColor,
              fontWeight: bold,
            ),
        backgroundColor: backgroundColor,
        centerTitle: false,
      ),
      body: DefaultRefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView(
          children: [
            _listSurah(),
          ],
        ),
      ),
    );
  }

  Widget _listSurah() {
    return BlocBuilder<SurahCubit, SurahState>(
      builder: (context, state) {
        if (state is SurahInitial) {
          return Container();
        } else if (state is SurahLoading) {
          return listViewSeparatedShimmer();
        } else if (state is SurahLoaded) {
          List<Surah>? surahs = state.surahModel.data;

          return Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: surahs?.length ?? 0,
              separatorBuilder: (context, i) => const Divider(height: 0),
              itemBuilder: (context, i) {
                Surah? surah = surahs?[i];
                String? surahNumber = surah?.number?.toString() ?? '';
                String? surahNameEn = surah?.name?.transliteration?.en ?? '';
                String? surahNameId = surah?.name?.transliteration?.id ?? '';
                String? surahNameTranslated =
                    isEnglish ? surahNameEn : surahNameId;
                String? surahNameTranslationEn =
                    surah?.name?.translation?.en ?? '';
                String? surahNameTranslationId =
                    surah?.name?.translation?.id ?? '';
                String? surahNameTranslationTranslated =
                    isEnglish ? surahNameTranslationEn : surahNameTranslationId;
                String? numberOfVerses =
                    surah?.numberOfVerses?.toString() ?? '';
                String? versesTranslated = isEnglish ? 'verses' : 'ayat';
                String? revelationEn = surah?.revelation?.en ?? '';
                String? revelationId = surah?.revelation?.id ?? '';
                String? revelationTranslated =
                    isEnglish ? revelationEn : revelationId;
                String surahSubtitle =
                    '$surahNameTranslationTranslated • $numberOfVerses $versesTranslated • $revelationTranslated';
                String? surahNameArabic = surah?.name?.short ?? '';

                return DefaultListTile(
                  leading: surahNumber.toString(),
                  title: surahNameTranslated,
                  subtitle: surahSubtitle,
                  trailing: surahNameArabic,
                  onTap: () {
                    context.push('/surah/$surahNumber', extra: surah);
                  },
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}

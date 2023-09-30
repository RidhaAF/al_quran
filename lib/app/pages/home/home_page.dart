import 'package:al_quran/app/cubits/surah/surah_cubit.dart';
import 'package:al_quran/app/cubits/translate/translate_cubit.dart';
import 'package:al_quran/app/models/surah_model.dart';
import 'package:al_quran/app/utilities/constants.dart';
import 'package:al_quran/app/utilities/functions.dart';
import 'package:al_quran/app/widgets/default_404.dart';
import 'package:al_quran/app/widgets/default_app_bar.dart';
import 'package:al_quran/app/widgets/default_list_tile.dart';
import 'package:al_quran/app/widgets/default_refresh_indicator.dart';
import 'package:al_quran/app/widgets/default_search_bar.dart';
import 'package:al_quran/app/widgets/default_shimmer.dart';
import 'package:al_quran/app/widgets/translate_icon_button.dart';
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
  final TextEditingController _searchCtrl = TextEditingController();
  final FocusNode _searchFocus = FocusNode();
  List<Surah>? _surahs = [];
  List<Surah>? _filteredSurahs = [];

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

  void _searchSurah(String query) {
    setState(() {
      _surahs = context.read<SurahCubit>().getSurahsData();
      if (query.isEmpty) {
        _filteredSurahs = _surahs;
      } else {
        _filteredSurahs = _surahs?.where((surah) {
          final translitEn =
              surah.name?.transliteration?.en?.toLowerCase() ?? "";
          final translitId =
              surah.name?.transliteration?.id?.toLowerCase() ?? "";
          final lowercaseQuery = query.toLowerCase();

          return translitEn.contains(lowercaseQuery) ||
              translitId.contains(lowercaseQuery);
        }).toList();
      }
    });
  }

  void _clearSearch() {
    setState(() {
      _searchCtrl.clear();
      _filteredSurahs = _surahs;
    });
  }

  @override
  void initState() {
    super.initState();
    _getTranslation();
  }

  @override
  void dispose() {
    super.dispose();
    _searchCtrl.dispose();
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
        child: Column(
          children: [
            _searchBar(),
            Expanded(
              child: ListView(
                children: [
                  _listSurah(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchBar() {
    String hintText = isEnglish ? 'Search surah...' : 'Cari surat...';

    return Padding(
      padding: EdgeInsets.all(defaultMargin),
      child: DefaultSearchBar(
        controller: _searchCtrl,
        focusNode: _searchFocus,
        hintText: hintText,
        onChanged: (value) => _searchSurah(value),
        onPressed: _clearSearch,
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
          _surahs = _searchCtrl.text.isNotEmpty ? _filteredSurahs : surahs;

          if (_surahs!.isEmpty) {
            return const Default404();
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _surahs?.length ?? 0,
              separatorBuilder: (context, i) => const Divider(height: 0),
              itemBuilder: (context, i) {
                Surah? surah = _surahs?[i];
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
                  leading: surahNumber,
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
        return const Default404();
      },
    );
  }
}

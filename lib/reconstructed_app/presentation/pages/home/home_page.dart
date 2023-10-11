import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/core.dart';
import '../../../data/data.dart' hide Text;
import '../../../injection.dart';
import '../../presentation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isEnglish = true;
  final TextEditingController _searchCtrl = TextEditingController();
  final FocusNode _searchFocus = FocusNode();
  final CustomFunctions func = di<CustomFunctions>();
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
    context.read<SurahCubit>().fetch();
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
      _surahs = context.read<SurahCubit>().getSurah();
      if (query.isEmpty) {
        _filteredSurahs = _surahs;
      } else {
        _filteredSurahs = _surahs?.where((surah) {
          final translitEn = surah.name?.transliteration.en?.toLowerCase();
          final translitId = surah.name?.transliteration.id?.toLowerCase();
          final lowercaseQuery = query.toLowerCase();

          return translitEn!.contains(lowercaseQuery) ||
              translitId!.contains(lowercaseQuery);
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
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Al-Quran',
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
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: DefaultStyle.primaryColor,
              fontWeight: DefaultStyle.bold,
            ),
        backgroundColor: func.isDarkMode(context)
            ? DefaultStyle.blackColor.withOpacity(0)
            : DefaultStyle.whiteColor.withOpacity(0),
      ),
      body: Column(
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
    );
  }

  Widget _searchBar() {
    String hintText = isEnglish ? 'Search surah...' : 'Cari surat...';

    return Padding(
      padding: EdgeInsets.all(DefaultStyle.defaultMargin),
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
        return state.when(
          initial: () => const Center(
            child: Text('no data'),
          ),
          loading: () => const ListViewShimmer(),
          loaded: (surah) {
            List<Surah> surahs = surah;

            _surahs = _searchCtrl.text.isNotEmpty ? _filteredSurahs : surahs;

            if (_surahs!.isEmpty) return const Center(child: Text('empty'));

            return DefaultRefreshIndicator(
              onRefresh: _onRefresh,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: DefaultStyle.defaultMargin,
                ),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _surahs?.length ?? 0,
                  separatorBuilder: (context, index) =>
                      const Divider(height: 0),
                  itemBuilder: (context, index) {
                    SurahVariable surahVar = SurahVariable(
                      _surahs?[index],
                      isEnglish,
                    );

                    return DefaultListTile(
                      leading: surahVar.surahNumber,
                      title: surahVar.surahNameTranslated,
                      subtitle: surahVar.surahSubtitle,
                      trailing: surahVar.surahNameArabic,
                      onTap: () {
                        context.push('/surah/${surahVar.surahNumber}',
                            extra: surahVar.surah);
                      },
                    );
                  },
                ),
              ),
            );
          },
          error: (message) => const Default404(),
        );
      },
    );
  }
}

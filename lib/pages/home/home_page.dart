import 'package:al_quran/components/default_list_tile.dart';
import 'package:al_quran/components/default_refresh_indicator.dart';
import 'package:al_quran/cubits/surah/surah_cubit.dart';
import 'package:al_quran/models/surah_model.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Al-Quran',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: primaryColor,
                fontWeight: bold,
              ),
          textScaleFactor: 1.0,
        ),
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: SafeArea(
        child: DefaultRefreshIndicator(
          onRefresh: _onRefresh,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ListView(
              children: [
                _listSurah(),
              ],
            ),
          ),
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
          return const Center(child: CircularProgressIndicator());
        } else if (state is SurahLoaded) {
          List<Surah>? surahs = state.surahModel.data;

          return ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: surahs?.length ?? 0,
            separatorBuilder: (context, i) {
              return const Divider(height: 0);
            },
            itemBuilder: (context, i) {
              Surah? surah = surahs?[i];
              String? surahNumber = surah?.number?.toString() ?? '';
              String? surahName = surah?.name?.transliteration?.id ?? '';
              String? surahNameTranslation = surah?.name?.translation?.en ?? '';
              String? numberOfVerses = surah?.numberOfVerses?.toString() ?? '';
              String? revelation = surah?.revelation?.id ?? '';
              String surahSubtitle =
                  '$surahNameTranslation • $numberOfVerses verses • $revelation';
              String? surahNameArabic = surah?.name?.short ?? '';

              return DefaultListTile(
                leading: surahNumber.toString(),
                title: surahName,
                subtitle: surahSubtitle,
                trailing: surahNameArabic,
                onTap: () {},
              );
            },
          );
        }
        return Container();
      },
    );
  }
}

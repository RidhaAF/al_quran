import 'package:al_quran/widgets/default_app_bar.dart';
import 'package:al_quran/widgets/default_list_tile.dart';
import 'package:al_quran/widgets/default_refresh_indicator.dart';
import 'package:al_quran/cubits/surah/surah_cubit.dart';
import 'package:al_quran/models/surah_model.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:al_quran/utilities/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isDarkMode(context)
        ? blackColor.withOpacity(0.0)
        : whiteColor.withOpacity(0.0);

    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Al-Quran',
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: primaryColor,
              fontWeight: bold,
            ),
        backgroundColor: backgroundColor,
        centerTitle: false,
      ),
      body: DefaultRefreshIndicator(
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
            separatorBuilder: (context, i) => const Divider(height: 0),
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
                onTap: () {
                  context.push('/surah/$surahNumber', extra: surah);
                },
              );
            },
          );
        }
        return Container();
      },
    );
  }
}

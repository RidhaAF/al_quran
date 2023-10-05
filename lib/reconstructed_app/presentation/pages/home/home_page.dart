import 'package:al_quran/app/widgets/default_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/data.dart' hide Text;
import '../../../injection.dart';
import '../../presentation.dart';

part 'home_page.component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isEnglish = true;
  final TextEditingController _searchCtrl = TextEditingController();
  final CustomFunctions func = di<CustomFunctions>();

  void _getTranslation() {
    isEnglish = context.read<TranslateCubit>().getTranslation();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getTranslation();
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
                isEnglish = context.read<TranslateCubit>().setTranslation();
                setState(() {});
              },
            ),
          ),
        ],
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: DefaultStyle.primaryColor,
              fontWeight: DefaultStyle.bold,
            ),
        backgroundColor: func.isDarkMode(context)
            ? DefaultStyle.blackColor.withOpacity(0.0)
            : DefaultStyle.whiteColor.withOpacity(0.0),
      ),
      body: Column(
        children: [
          SearchBar(
            searchCtrl: _searchCtrl,
            hintText: isEnglish ? 'Search surah...' : 'Cari surat...',
          ),
          Expanded(
            child: ListView(
              children: [
                _ListSurah(
                  _searchCtrl,
                  isEnglish,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

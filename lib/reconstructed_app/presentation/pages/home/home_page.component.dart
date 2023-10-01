part of 'home_page.dart';

class TranslateIconButton extends StatelessWidget {
  final bool isEnglish;
  final Function() onPressed;
  final Color? iconColor;
  const TranslateIconButton({
    super.key,
    required this.isEnglish,
    required this.onPressed,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    String tooltip = isEnglish
        ? 'Translate to Bahasa Indonesia 🇮🇩'
        : 'Translate to English 🇺🇸';

    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.translate_rounded,
        color: iconColor,
      ),
      highlightColor: DefaultStyle.mutedColor.withOpacity(0.3),
      tooltip: tooltip,
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar(
      {super.key, required this.hintText, required this.searchCtrl});

  final String hintText;
  final TextEditingController searchCtrl;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final List<Surah> _surahs = [];
  // ignore: unused_field
  List<Surah>? _filteredSurahs = [];
  final FocusNode _searchFocus = FocusNode();

  void _searchSurah(String query) {
    setState(() {
      context.read<SurahCubit>().fetch();
      if (query.isEmpty) {
        _filteredSurahs = _surahs;
      } else {
        _filteredSurahs = _surahs.where((surah) {
          final translitEn = surah.name?.transliteration.en.toLowerCase() ?? "";
          final translitId = surah.name?.transliteration.id.toLowerCase() ?? "";
          final lowercaseQuery = query.toLowerCase();

          return translitEn.contains(lowercaseQuery) ||
              translitId.contains(lowercaseQuery);
        }).toList();
      }
    });
  }

  void _clearSearch() {
    setState(() {
      widget.searchCtrl.clear();
      _filteredSurahs = _surahs;
    });
  }

  @override
  void dispose() {
    widget.searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(DefaultStyle.defaultMargin),
      child: DefaultSearchBar(
        controller: widget.searchCtrl,
        hintText: widget.hintText,
        focusNode: _searchFocus,
        onChanged: (value) => _searchSurah(value),
        onPressed: _clearSearch,
      ),
    );
  }
}

class _ListSurah extends StatefulWidget {
  const _ListSurah(this._searchCtrl, this.isEnglish);

  final TextEditingController _searchCtrl;
  final bool isEnglish;

  @override
  State<_ListSurah> createState() => __ListSurahState();
}

class __ListSurahState extends State<_ListSurah> {
  List<Surah>? _surahs = [];
  final List<Surah> _filteredSurahs = [];
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      context.read<SurahCubit>().fetch();
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<SurahCubit>().fetch();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahCubit, SurahState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: Text('no data'),
          ),
          loading: () => const ListViewShimmer(),
          loaded: (surah) {
            List<Surah> surahs = surah;

            _surahs =
                widget._searchCtrl.text.isNotEmpty ? _filteredSurahs : surahs;

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
                    SurahVariable surahVar =
                        SurahVariable(_surahs?[index], widget.isEnglish);

                    return DefaultListTile(
                      leading: surahVar.surahNumber,
                      title: surahVar.surahNameTranslated,
                      subtitle: surahVar.surahSubtitle,
                      trailing: surahVar.surahNameArabic,
                      onTap: () {},
                    );
                  },
                ),
              ),
            );
          },
          error: (message) => const SizedBox(),
        );
      },
    );
  }
}

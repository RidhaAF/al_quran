import 'package:al_quran/components/default_list_tile.dart';
import 'package:al_quran/components/default_refresh_indicator.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:flutter/material.dart';

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
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 25,
      separatorBuilder: (context, index) {
        return const Divider(height: 0);
      },
      itemBuilder: (context, i) {
        int surahNumber = i + 1;

        return DefaultListTile(
          leading: surahNumber.toString(),
          title: 'Al-Fatihah',
          subtitle: 'The Opening • 7 verses • Meccan',
          trailing: 'الفاتحة',
          onTap: () {},
        );
      },
    );
  }
}

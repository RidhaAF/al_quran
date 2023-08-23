import 'package:al_quran/components/default_refresh_indicator.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultRefreshIndicator(
          onRefresh: () async {},
          child: Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: ListView(
              children: [
                _title(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'Al-Quran',
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: primaryColor,
            fontWeight: bold,
          ),
      textScaleFactor: 1.0,
    );
  }
}

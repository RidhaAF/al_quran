import 'package:al_quran/app/cubits/translate/translate_cubit.dart';
import 'package:al_quran/app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Default404 extends StatefulWidget {
  const Default404({super.key});

  @override
  State<Default404> createState() => _Default404State();
}

class _Default404State extends State<Default404> {
  bool isEnglish = true;

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
    String data404 = isEnglish ? 'Data not found' : 'Data tidak ditemukan';

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/ic_404.png',
              width: 96,
            ),
            SizedBox(height: defaultMargin * 2),
            Text(
              'Oops!',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: primaryColor,
                    fontWeight: bold,
                  ),
              textScaleFactor: 1.0,
            ),
            SizedBox(height: defaultMargin / 4),
            BlocListener<TranslateCubit, TranslateState>(
              listener: (context, state) {
                if (state is TranslateLoaded) {
                  isEnglish = state.isEnglish;
                  setState(() {});
                }
              },
              child: Text(
                data404,
                style: Theme.of(context).textTheme.titleSmall,
                textScaleFactor: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:al_quran/utilities/constants.dart';
import 'package:flutter/material.dart';

class VerseItem extends StatelessWidget {
  final String? verseNumber;
  final String? verseArabic;
  final String? verseTransliteration;
  final String? verseTranslation;
  const VerseItem({
    super.key,
    this.verseNumber,
    this.verseArabic,
    this.verseTransliteration,
    this.verseTranslation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultMargin / 2),
        Text(
          verseArabic ?? '',
          style: Theme.of(context).textTheme.titleLarge,
          textDirection: TextDirection.rtl,
          textScaleFactor: 1.0,
        ),
        SizedBox(height: defaultMargin / 2),
        Text(
          '${verseNumber ?? ''}. ${verseTransliteration ?? ''}',
          style: Theme.of(context).textTheme.titleMedium,
          textScaleFactor: 1.0,
        ),
        SizedBox(height: defaultMargin / 2),
        Text(
          '${verseNumber ?? ''}. ${verseTranslation ?? ''}',
          style: Theme.of(context).textTheme.labelMedium,
          textScaleFactor: 1.0,
        ),
      ],
    );
  }
}

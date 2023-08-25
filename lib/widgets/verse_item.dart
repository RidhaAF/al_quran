import 'package:al_quran/utilities/constants.dart';
import 'package:al_quran/utilities/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerseItem extends StatelessWidget {
  final String? verseNumber;
  final String? verseArabic;
  final String? verseTransliteration;
  final String? verseTranslation;
  final String? tafsir;
  const VerseItem({
    super.key,
    this.verseNumber,
    this.verseArabic,
    this.verseTransliteration,
    this.verseTranslation,
    this.tafsir,
  });

  @override
  Widget build(BuildContext context) {
    String arabicNumber = arabicNumberConverter(verseNumber ?? '0');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultMargin / 2),
        Row(
          children: [
            Expanded(
              child: SelectableText(
                '${verseArabic ?? ''} ﴿$arabicNumber﴾',
                style: GoogleFonts.scheherazadeNew(
                  fontSize: title2FS,
                  height: 2.0,
                ),
                textDirection: TextDirection.rtl,
                textScaleFactor: 1.0,
              ),
            ),
          ],
        ),
        SizedBox(height: defaultMargin / 2),
        SelectableText(
          '${verseNumber ?? ''}. ${verseTransliteration ?? ''}',
          style: Theme.of(context).textTheme.labelLarge,
          textScaleFactor: 1.0,
        ),
        SizedBox(height: defaultMargin / 2),
        SelectableText(
          '${verseNumber ?? ''}. ${verseTranslation ?? ''}',
          style: Theme.of(context).textTheme.labelMedium,
          textScaleFactor: 1.0,
        ),
        tafsir != null
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: defaultMargin),
                  Text(
                    'Tafsir',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: bold,
                        ),
                    textScaleFactor: 1.0,
                  ),
                  SelectableText(
                    tafsir ?? '',
                    style: Theme.of(context).textTheme.labelMedium,
                    textScaleFactor: 1.0,
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}

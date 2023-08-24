import 'package:al_quran/utilities/constants.dart';
import 'package:flutter/material.dart';

class TranslateIconButton extends StatelessWidget {
  final bool isEnglish;
  final Function() onPressed;
  const TranslateIconButton({
    super.key,
    required this.isEnglish,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    String tooltip = isEnglish
        ? 'Translate to Bahasa Indonesia 🇮🇩'
        : 'Translate to English 🇺🇸';

    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.translate_rounded),
      highlightColor: primaryColor,
      tooltip: tooltip,
    );
  }
}

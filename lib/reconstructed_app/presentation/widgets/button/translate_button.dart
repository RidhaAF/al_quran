import 'package:flutter/material.dart';

import '../../../core/core.dart';

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
      icon: Icon(
        Icons.translate_rounded,
        color: DefaultStyle.primaryColor,
      ),
      highlightColor: DefaultStyle.mutedColor.withOpacity(0.3),
      tooltip: tooltip,
    );
  }
}

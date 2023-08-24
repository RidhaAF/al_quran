import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:al_quran/utilities/constants.dart';
import 'package:flutter/material.dart';

bool isDarkMode(BuildContext context) {
  return AdaptiveTheme.of(context).brightness == Brightness.dark;
}

Color getContainerColor(BuildContext context) {
  return isDarkMode(context) ? bgColorDark3 : bgColorLight3;
}

String arabicNumberConverter(String number) {
  String res = '';

  final arabics = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
  for (var element in number.characters) {
    res += arabics[int.parse(element)];
  }

  return res;
}

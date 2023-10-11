import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../core.dart';

abstract class CustomFunctions {
  bool isDarkMode(BuildContext context);

  Color getContainerColor(BuildContext context);

  String arabicNumberConverter(String number);
}

class CustomFunctionsImpl implements CustomFunctions {
  @override
  String arabicNumberConverter(String number) {
    String res = '';
    final arabics = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

    for (var element in number.characters) {
      res += arabics[int.parse(element)];
    }

    return res;
  }

  @override
  Color getContainerColor(BuildContext context) => isDarkMode(context)
      ? DefaultStyle.bgColorDark3
      : DefaultStyle.bgColorLight3;

  @override
  bool isDarkMode(BuildContext context) =>
      AdaptiveTheme.of(context).brightness == Brightness.dark;
}

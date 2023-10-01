import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

abstract class Functions {
  bool isDarkMode(BuildContext context);

  Color getContainerColor(BuildContext context);

  String arabicNumberConverter(String number);
}

class FunctionsImpl implements Functions {
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
  Color getContainerColor(BuildContext context) {
    // TODO: implement getContainerColor
    throw UnimplementedError();
  }

  @override
  bool isDarkMode(BuildContext context) =>
      AdaptiveTheme.of(context).brightness == Brightness.dark;
}

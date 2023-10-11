import 'package:al_quran/reconstructed_app/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TranslateIconButton', () {
    testWidgets('should display correct tooltip when isEnglish is true',
        (WidgetTester tester) async {
      bool isEnglish = true;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TranslateIconButton(
              isEnglish: isEnglish,
              onPressed: () {},
            ),
          ),
        ),
      );

      final tooltipFinder = find.byType(Tooltip);

      expect(tooltipFinder, findsOneWidget);
      expect((tooltipFinder.evaluate().first.widget as Tooltip).message,
          'Translate to Bahasa Indonesia 🇮🇩');
    });

    testWidgets('should display correct tooltip when isEnglish is false',
        (WidgetTester tester) async {
      bool isEnglish = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TranslateIconButton(
              isEnglish: isEnglish,
              onPressed: () {},
            ),
          ),
        ),
      );

      final tooltipFinder = find.byType(Tooltip);

      expect(tooltipFinder, findsOneWidget);
      expect((tooltipFinder.evaluate().first.widget as Tooltip).message,
          'Translate to English 🇺🇸');
    });

    testWidgets('should call onPressed when icon button is pressed',
        (WidgetTester tester) async {
      bool isEnglish = true;
      bool isPressed = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: TranslateIconButton(
              isEnglish: isEnglish,
              onPressed: () {
                isPressed = true;
              },
            ),
          ),
        ),
      );

      final iconButtonFinder = find.byType(IconButton);
      await tester.tap(iconButtonFinder);

      expect(iconButtonFinder, findsOneWidget);
      expect(isPressed, true);
    });
  });
}

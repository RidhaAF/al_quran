import 'package:al_quran/reconstructed_app/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DefaultListTile', () {
    testWidgets('should display the correct text', (WidgetTester tester) async {
      const leadingText = 'Leading';
      const titleText = 'Title';
      const subtitleText = 'Subtitle';
      const trailingText = 'Trailing';

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: DefaultListTile(
              leading: leadingText,
              title: titleText,
              subtitle: subtitleText,
              trailing: trailingText,
            ),
          ),
        ),
      );

      final leadingFinder = find.text(leadingText);
      final titleFinder = find.text(titleText);
      final subtitleFinder = find.text(subtitleText);
      final trailingFinder = find.text(trailingText);

      expect(leadingFinder, findsOneWidget);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);
      expect(trailingFinder, findsOneWidget);
    });

    testWidgets('should call onTap when the tile is tapped',
        (WidgetTester tester) async {
      bool isTapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DefaultListTile(
              onTap: () {
                isTapped = true;
              },
            ),
          ),
        ),
      );

      final tileFinder = find.byType(ListTile);
      await tester.tap(tileFinder);

      expect(tileFinder, findsOneWidget);
      expect(isTapped, true);
    });
  });
}

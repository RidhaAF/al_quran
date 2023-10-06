import 'package:al_quran/reconstructed_app/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DefaultAppBar', () {
    testWidgets('should display title when subtitle is null',
        (WidgetTester tester) async {
      const title = 'Test Title';
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            appBar: DefaultAppBar(
              title: title,
            ),
          ),
        ),
      );

      final titleFinder = find.text(title);
      expect(titleFinder, findsOneWidget);
    });

    testWidgets('should display title and subtitle when subtitle is not null',
        (WidgetTester tester) async {
      const title = 'Test Title';
      const subtitle = 'Test Subtitle';
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            appBar: DefaultAppBar(
              title: title,
              subtitle: subtitle,
            ),
          ),
        ),
      );

      final titleFinder = find.text(title);
      final subtitleFinder = find.text(subtitle);
      expect(titleFinder, findsOneWidget);
      expect(subtitleFinder, findsOneWidget);
    });

    testWidgets('should display leading widget when leading is not null',
        (WidgetTester tester) async {
      final leading = IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: DefaultAppBar(
              title: 'Test Title',
              leading: leading,
            ),
          ),
        ),
      );

      final leadingFinder = find.byWidget(leading);
      expect(leadingFinder, findsOneWidget);
    });

    testWidgets('should display actions when actions is not null',
        (WidgetTester tester) async {
      final actions = [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ];
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: DefaultAppBar(
              title: 'Test Title',
              actions: actions,
            ),
          ),
        ),
      );

      final actionsFinder = find.byWidgetPredicate(
          (widget) => widget is IconButton && actions.contains(widget));
      expect(actionsFinder, findsNWidgets(actions.length));
    });
  });
}

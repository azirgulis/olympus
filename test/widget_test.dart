// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:olympus/main.dart';

void main() {
  testWidgets('Main menu loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: OdysseyOfOlympusApp(),
      ),
    );

    // Verify that the main menu displays correctly.
    expect(find.text('ODYSSEY OF OLYMPUS'), findsOneWidget);
    expect(find.text('Economic Myths'), findsOneWidget);
    expect(find.text('New Quest'), findsOneWidget);
    expect(find.text('Continue Journey'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });
}

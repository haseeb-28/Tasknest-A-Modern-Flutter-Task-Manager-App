// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:tasknest/main.dart';

void main() {
  testWidgets('App renders splash screen', (WidgetTester tester) async {
    // Skip initialization and just pump the MyApp widget
    // Note: Supabase initialization happens in main(), so we test UI rendering only
    await tester.pumpWidget(const MyApp());

    // Verify that the splash screen title is displayed.
    expect(find.text('Task Manager'), findsOneWidget);
    expect(find.text('Stay organized. Stay productive.'), findsOneWidget);

    // Advance time to pass the navigation delay without settling
    // (settling would try to navigate, which fails in test environment)
    await tester.pump(const Duration(seconds: 3));
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:assignment2/about_page.dart'; // Make sure to import your AboutPage

void main() {
  testWidgets('About Page UI elements test', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(
      const MaterialApp(
        home: AboutPage(),
      ),
    );

    // Wait for animations to complete
    await tester.pumpAndSettle();

    // Verify that the name is displayed
    expect(find.text('Farhan Himawan'), findsOneWidget);

    // Verify that the NRP is displayed
    expect(find.text('NRP: 5026211125'), findsOneWidget);

    // Verify that the "Interesting Facts About Me" header is present
    expect(find.text('Interesting Facts About Me'), findsOneWidget);

    // Verify that all fact cards are present
    expect(find.byType(Card), findsNWidgets(4));

    // Verify specific fact titles are present
    expect(find.text('Coding Journey'), findsOneWidget);
    expect(find.text('Hidden Talent'), findsOneWidget);
    expect(find.text('Screen Time'), findsOneWidget);
    expect(find.text('Gaming Enthusiast'), findsOneWidget);
  });
}

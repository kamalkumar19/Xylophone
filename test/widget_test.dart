import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xylophone/main.dart';

void main() {
  testWidgets('buildKey returns Expanded with correct properties', (WidgetTester tester) async {
    final xylophoneApp = XylophoneApp();

    final keyWidget = xylophoneApp.buildKey(color: Colors.red, soundNumber: 1);

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: keyWidget,
      ),
    ));

    expect(find.byType(Expanded), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
    expect(find.text('Press Me for soundnumber 1'), findsOneWidget);

    final textButton = tester.widget<TextButton>(find.byType(TextButton));
    final buttonStyle = textButton.style;

    expect(buttonStyle!.backgroundColor!.resolve({}), Colors.red);
  });
}

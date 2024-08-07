import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:xylophone/main.dart';


void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App starts and plays sound on button press', (WidgetTester tester) async {
    await tester.pumpWidget(XylophoneApp());

    // Verify that the app starts with the first button visible
    expect(find.text('Press Me for soundnumber 1'), findsOneWidget);

    // Tap the first button
    await tester.tap(find.text('Press Me for soundnumber 1'));
    await tester.pump();

    // Verify that the button was pressed (you may need additional logic here to verify sound playback)
    // For now, we're just checking that the button press doesn't crash the app
    expect(find.text('Press Me for soundnumber 1'), findsOneWidget);
  });
}

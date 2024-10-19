import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:traviss/main.dart'; // Ensure the correct import for your app's main file

void main() {
  testWidgets('Calculator button press test', (WidgetTester tester) async {
    // Build the Calculator app and trigger a frame.
    await tester.pumpWidget(const CalculatorApp());

    // Verify that the initial output is '0'.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '1' button and trigger a frame.
    await tester.tap(find.text('1')); // Finding the button with text '1'
    await tester.pump();

    // Verify that the output is updated to '1'.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

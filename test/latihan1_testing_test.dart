import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newapp/latihan1_testing.dart';

void main() {
  testWidgets('LoginPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Verify that the AppBar has the correct title.
    expect(find.text('Login'), findsWidgets);

    // Verify that the Email and Password text fields are present.
    expect(find.byType(TextField), findsNWidgets(2));

    // Enter text into the Email and Password fields.
    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.enterText(find.byType(TextField).last, 'password123');

    // Verify that the entered text is correct.
    expect(_getEmailFieldValue(tester), 'test@example.com');
    expect(_getPasswordFieldValue(tester), 'password123');

    // Tap the login button.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
  });
}

String _getEmailFieldValue(WidgetTester tester) {
  final Finder emailField = find.byType(TextField).first;
  final TextField widget = tester.widget(emailField) as TextField;
  return widget.controller!.text;
}

String _getPasswordFieldValue(WidgetTester tester) {
  final Finder passwordField = find.byType(TextField).last;
  final TextField widget = tester.widget(passwordField) as TextField;
  return widget.controller!.text;
}

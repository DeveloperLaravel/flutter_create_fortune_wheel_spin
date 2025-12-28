import 'package:flutter/material.dart';
import 'package:flutter_create_fortune_wheel_spin/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Spin button exists and clickable', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: WheelPage()));

    final spinButton = find.text('SPIN 🎡');

    expect(spinButton, findsOneWidget);

    await tester.tap(spinButton);
    await tester.pump();
  });
}

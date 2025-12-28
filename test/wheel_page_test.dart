import 'package:flutter/material.dart';
import 'package:flutter_create_fortune_wheel_spin/main.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('WheelPage renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: WheelPage()));

    // 1️⃣ التأكد من وجود العنوان
    expect(find.text('Fortune Wheel'), findsOneWidget);

    // 2️⃣ التأكد من وجود زر SPIN
    expect(find.text('SPIN 🎡'), findsOneWidget);

    // 3️⃣ التأكد من وجود FortuneWheel
    expect(find.byType(FortuneWheel), findsOneWidget);

    // 4️⃣ التأكد من وجود العناصر
    expect(find.text('Flutter'), findsOneWidget);
    expect(find.text('Dart'), findsOneWidget);
    expect(find.text('Bloc'), findsOneWidget);
    expect(find.text('Hive'), findsOneWidget);
    expect(find.text('Dio'), findsOneWidget);
  });
}

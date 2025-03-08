// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mdintern_test_suitmedia/app/modules/first_screen/pages/first_screen_page.dart';


void main() {
  testWidgets('Test FirstScreen UI', (WidgetTester tester) async {
    // Inisialisasi GetX
    Get.testMode = true;

    // Build FirstScreen dan trigger a frame.
    await tester.pumpWidget(
      GetMaterialApp(
        home: FirstScreenPage(), // Gunakan FirstScreenPage sebagai widget utama
      ),
    );

    // Verifikasi bahwa teks "First Screen" muncul.
    expect(find.text('First Screen'), findsOneWidget);

    // Verifikasi bahwa ada dua TextField.
    expect(find.byType(TextField), findsNWidgets(2));

    // Verifikasi bahwa ada tombol "Check" dan "Next".
    expect(find.text('Check'), findsOneWidget);
    expect(find.text('Next'), findsOneWidget);
  });
}

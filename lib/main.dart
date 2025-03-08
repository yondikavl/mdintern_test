import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdintern_test_suitmedia/app/routes/app_pages.dart';
import 'package:mdintern_test_suitmedia/app/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: 'Suitmedia Test App',
      initialRoute: AppRoutes.firstScreen,
      getPages: AppPages.pages,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    ),
  );
}

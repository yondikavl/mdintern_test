import 'package:get/get.dart';
import 'package:mdintern_test_suitmedia/app/modules/first_screen/bindings/first_screen_binding.dart';
import 'package:mdintern_test_suitmedia/app/modules/first_screen/pages/first_screen_page.dart';
import 'package:mdintern_test_suitmedia/app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.FIRST_SCREEN,
      page: () => FirstScreenPage(),
      binding: FirstScreenBinding(),
    ),
  ];
}
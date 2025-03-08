import 'package:get/get.dart';
import 'package:mdintern_test_suitmedia/app/modules/first_screen/bindings/first_screen_binding.dart';
import 'package:mdintern_test_suitmedia/app/modules/first_screen/pages/first_screen_page.dart';
import 'package:mdintern_test_suitmedia/app/modules/second_screen/bindings/second_screen_binding.dart';
import 'package:mdintern_test_suitmedia/app/modules/second_screen/pages/second_screen_page.dart';
import 'package:mdintern_test_suitmedia/app/modules/third_screen/bindings/third_screen_binding.dart';
import 'package:mdintern_test_suitmedia/app/modules/third_screen/pages/third_screen_page.dart';
import 'package:mdintern_test_suitmedia/app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.firstScreen,
      page: () => FirstScreenPage(),
      binding: FirstScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.secondScreen,
      page: () => SecondScreenPage(),
      binding: SecondScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.thirdScreen,
      page: () => ThirdScreenPage(),
      binding: ThirdScreenBinding(),
    ),
  ];
}

import 'package:get/get.dart';
import 'package:mdintern_test_suitmedia/app/modules/first_screen/controllers/first_screen_controller.dart';

class FirstScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstScreenController());
  }
}

import 'package:get/get.dart';
import 'package:mdintern_test_suitmedia/app/modules/second_screen/controllers/second_screen_controller.dart';
import 'package:mdintern_test_suitmedia/core/services/api_service.dart';

class SecondScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
    Get.lazyPut(() => SecondScreenController());
  }
}
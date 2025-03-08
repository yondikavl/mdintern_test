import 'package:get/get.dart';
import 'package:mdintern_test_suitmedia/app/modules/third_screen/controllers/third_screen_controller.dart';
import 'package:mdintern_test_suitmedia/core/services/api_service.dart';

class ThirdScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
    Get.lazyPut(() => ThirdScreenController());
  }
}

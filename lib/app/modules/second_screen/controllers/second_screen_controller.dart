import 'package:get/get.dart';

class SecondScreenController extends GetxController {
  var name = ''.obs;
  var selectedUserName = ''.obs;

  void updateName(String newName) {
    name.value = newName;
  }

  void selectUser(String name) {
    selectedUserName.value = name;
  }
}

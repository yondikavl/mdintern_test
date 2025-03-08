import 'package:get/get.dart';
import 'package:mdintern_test_suitmedia/core/models/user_model.dart';
import 'package:mdintern_test_suitmedia/core/services/api_service.dart';

class ThirdScreenController extends GetxController {
  final ApiService _apiService = Get.find();
  var users = <User>[].obs;
  var page = 1.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  Future<void> fetchUsers() async {
    if (isLoading.value) return;
    isLoading.value = true;

    try {
      var newUsers = await _apiService.fetchUsers(page.value);
      users.addAll(newUsers);
      page.value++;
    } catch (e) {
      Get.snackbar('Error', 'Failed to load users');
    } finally {
      isLoading.value = false;
    }
  }

  void refreshUsers() async {
    page.value = 1;
    users.clear();
    await fetchUsers();
  }
}
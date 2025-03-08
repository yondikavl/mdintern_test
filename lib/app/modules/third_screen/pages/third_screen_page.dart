import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdintern_test_suitmedia/app/modules/third_screen/controllers/third_screen_controller.dart';

class ThirdScreenPage extends StatelessWidget {
  final ThirdScreenController _controller = Get.find();

  ThirdScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Third Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xff2B637B),
            size: 36,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Obx(() {
          if (_controller.users.isEmpty && !_controller.isLoading.value) {
            return const Center(child: Text('No users found'));
          }
          return NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                      scrollInfo.metrics.maxScrollExtent &&
                  !_controller.isLoading.value) {
                _controller.fetchUsers();
              }
              return true;
            },
            child: RefreshIndicator(
              onRefresh: () async {
                _controller.refreshUsers();
              },
              child: ListView.builder(
                itemCount: _controller.users.length + 1,
                itemBuilder: (context, index) {
                  if (index < _controller.users.length) {
                    var user = _controller.users[index];
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(user.avatar),
                            ),
                            title: Text(
                              '${user.firstName} ${user.lastName}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(user.email),
                            onTap: () {
                              String selectedUser =
                                  '${user.firstName} ${user.lastName}';
                              Get.back(result: selectedUser);
                            },
                          ),
                        ),
                        Divider(thickness: 1, color: Colors.grey.shade300),
                      ],
                    );
                  } else {
                    return _controller.isLoading.value
                        ? const Center(child: CircularProgressIndicator())
                        : const SizedBox.shrink();
                  }
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdintern_test_suitmedia/app/modules/second_screen/controllers/second_screen_controller.dart';

class SecondScreenPage extends StatelessWidget {
  final SecondScreenController _controller = Get.find();

  SecondScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = Get.arguments ?? '';
    _controller.updateName(name);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 8),
            Obx(() => Text(
                  _controller.name.value,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                )),
            const Spacer(),
            Center(
              child: Obx(() => Text(
                    _controller.selectedUserName.value.isEmpty
                        ? 'No user selected'
                        : _controller.selectedUserName.value,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  )),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  //
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  textStyle: GoogleFonts.poppins(fontSize: 14),
                  backgroundColor: const Color(0xff2B637B),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Choose a User'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

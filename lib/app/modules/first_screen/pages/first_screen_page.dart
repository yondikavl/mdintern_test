import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdintern_test_suitmedia/app/modules/first_screen/controllers/first_screen_controller.dart';
import 'package:mdintern_test_suitmedia/app/routes/app_routes.dart';

class FirstScreenPage extends StatelessWidget {
  final FirstScreenController _controller = Get.find();
  FirstScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background 1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ic_photo.png',
                width: 140,
                height: 140,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Color(0xffB9B8CA)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xffE2E3E4)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (value) => _controller.name.value = value,
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Palindrome',
                  labelStyle: TextStyle(color: Color(0xffB9B8CA)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xffE2E3E4)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (value) => _controller.sentence.value = value,
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _controller.checkPalindrome(),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    textStyle: GoogleFonts.poppins(fontSize: 14),
                    backgroundColor: const Color(0xff2B637B),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('CHECK'),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_controller.name.value.isNotEmpty) {
                      Get.toNamed(
                        AppRoutes.secondScreen,
                        arguments: _controller.name.value,
                      );
                    } else {
                      Get.snackbar('Error', 'Please enter your name');
                    }
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
                  child: const Text('NEXT'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

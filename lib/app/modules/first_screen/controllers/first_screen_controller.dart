import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreenController extends GetxController {
  var name = ''.obs;
  var sentence = ''.obs;

  bool isPalindrome(String text) {
    String cleanedText = text.replaceAll(' ', '').toLowerCase();
    String reversedText = cleanedText.split('').reversed.join('');
    return cleanedText == reversedText;
  }

  void checkPalindrome() {
    String resultMessage = isPalindrome(sentence.value)
        ? 'is a palindrome'
        : 'is not a palindrome';
    IconData resultIcon =
        isPalindrome(sentence.value) ? Icons.check_circle : Icons.cancel;

    Get.dialog(
      AlertDialog(
        title: Row(
          children: [
            Icon(resultIcon,
                color:
                    isPalindrome(sentence.value) ? Colors.green : Colors.red),
            const SizedBox(width: 10),
            const Text('Result'),
          ],
        ),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            resultMessage,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xff2B637B),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

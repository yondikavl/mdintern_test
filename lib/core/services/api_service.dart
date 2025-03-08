import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ApiService {
  Future<List<User>> fetchUsers(int page) async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users?page=$page&per_page=10'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return (data['data'] as List).map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
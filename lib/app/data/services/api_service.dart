import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:jagadbuku_officer/app/data/model/response_user.dart';

class ApiService {
  final String baseUrl = 'http://192.168.42.147:8000/api/v1';  // Ganti dengan URL API Anda

  Future<ResponseUser> getUserData(int userId) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/user/user/$userId'));

      if (response.statusCode == 200) {
        // Parsing respons menjadi JSON
        var responseJson = jsonDecode(response.body);

        // Membuat instance ResponseUser dari JSON
        return ResponseUser.fromJson(responseJson);
      } else {
        // Menangani respons jika status bukan 200
        throw Exception('Failed to fetch user data');
      }
    } catch (e) {
      // Menangani kesalahan lain
      throw Exception('Error: ${e.toString()}');
    }
  }
}
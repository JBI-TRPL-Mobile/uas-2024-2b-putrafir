import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class UserService {
  static Future<Map<String, String>?> loadUserData() async {
    try {
      String jsonString = await rootBundle.loadString('Data/user.json');
      Map<String, dynamic> jsonData = jsonDecode(jsonString);
      return Map<String, String>.from(jsonData);
    } catch (e) {
      print('gagal membaca data: $e');
      return null;
    }
  }

  static Future<bool> verifyLogin(String email, String password) async {
    try {
      final userData = await loadUserData();
      if (userData != null) {
        if (userData['email'] == email && userData['password'] == password) {
          return true;
        }
      }
      return false;
    } catch (e) {
      print('error selama verifikasi: $e');
      return false;
    }
  }
}

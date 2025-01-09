import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataService {
  static Future<List<String>> loadCategories() async {
    try {
      String jsonString = await rootBundle.loadString('Data/categories.json');
      List<dynamic> jsonData = jsonDecode(jsonString);
      return jsonData.map((category) => category['name'] as String).toList();
    } catch (e) {
      print('gagal membaca kategori: $e');
      return [];
    }
  }
}

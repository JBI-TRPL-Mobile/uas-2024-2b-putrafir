import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:template_project/Models/Message.dart';

class DataService {
  static Future<List<String>> loadCategories() async {
    try {
      String jsonString = await rootBundle.loadString('Data/categories.json');
      List<dynamic> jsonData = jsonDecode(jsonString);
      return jsonData
          .map<String>((category) => category['name'] as String)
          .toList();
    } catch (e) {
      print('Gagal membaca kategori: $e');
      return [];
    }
  }

  static Future<List<Message>> loadMessages() async {
    try {
      String jsonString = await rootBundle.loadString('Data/messages.json');
      List<dynamic> jsonData = jsonDecode(jsonString);
      return jsonData.map((data) => Message.fromJson(data)).toList();
    } catch (e) {
      print('Gagal membaca pesan: $e');
      return [];
    }
  }
}

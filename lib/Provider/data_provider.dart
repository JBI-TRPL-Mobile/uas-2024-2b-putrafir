import 'package:flutter/material.dart';
import 'package:template_project/Models/Message.dart';
import 'package:template_project/Models/data_service.dart';

class DataProvider with ChangeNotifier {
  List<String> _categories = [];

  List<String> get categories => _categories;

  List<Message> _messages = [];

  List<Message> get messages => _messages;

  Future<void> loadCategories() async {
    _categories = await DataService.loadCategories();
    notifyListeners();
  }

  Future<void> loadMessages() async {
    _messages = await DataService.loadMessages();
    notifyListeners();
  }
}

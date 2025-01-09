import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class UserService {
  static Future<String> _getFilePath() async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/user.json';
  }

  static Future<void> saveUser(String email, String password) async {
    final path = await _getFilePath();
    final file = File(path);
    Map<String, String> user = {'email': email, 'password': password};
    String json = jsonEncode(user);
    await file.writeAsString(json);
  }

  static Future<Map<String, String>?> getUser() async {
    final path = await _getFilePath();
    final file = File(path);

    if (await file.exists()) {
      String json = await file.readAsString();
      Map<String, String> user = Map<String, String>.from(jsonDecode(json));
      return user;
    }
    return null;
  }
}

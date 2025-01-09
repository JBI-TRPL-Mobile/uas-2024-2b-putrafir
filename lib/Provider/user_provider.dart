import 'package:flutter/material.dart';
import 'package:template_project/Models/user_service.dart';

class UserProvider with ChangeNotifier {
  String? _name;
  String? _email;
  String? _password;

  String? get name => _name;
  String? get email => _email;
  String? get password => _password;

  Future<void> loadUser() async {
    final user = await UserService.loadUserData();
    if (user != null) {
      _name = user['name'];
      _email = user['email'];
      _password = user['password'];
      notifyListeners();
    }
  }

  bool isAuthenticated() {
    return _email != null && _password != null;
  }

  Future<bool> login(String email, String password) async {
    bool success = await UserService.verifyLogin(email, password);
    if (success) {
      _email = email;
      _password = password;
      notifyListeners();
    }
    return success;
  }
}

import 'package:flutter/material.dart';
import 'package:template_project/Models/user_service.dart';

class UserProvider with ChangeNotifier {
  String? _email;
  String? _password;

  String? get email => _email;
  String? get password => _password;

  Future<void> signUp(String email, String password) async {
    await UserService.saveUser(email, password);
    _email = email;
    _password = password;
    notifyListeners();
  }

  Future<void> loadUser() async {
    final user = await UserService.getUser();
    if (user != null) {
      _email = user['email'];
      _password = user['password'];
      notifyListeners();
    }
  }

  bool isAuthenticated() {
    return _email != null && _password != null;
  }
}

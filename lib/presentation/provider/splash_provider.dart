import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  /* checking token for shared preference */
  Future<void> checkToken() async {
    await Future.delayed(Duration(seconds: 2));
    // final String token = "dummy token value";
    final String token = "";

    _isLoggedIn = token
        .isNotEmpty; /* token is not empty = false => logedin flase,  token is not empty = true => logged in true */
    notifyListeners();
  }
}

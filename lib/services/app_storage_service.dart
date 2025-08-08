import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStorageService {
  static const String _loginToken = 'loginToken';

  Future<void> saveLogin(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_loginToken, value);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token =  prefs.getString(_loginToken);
    if (kDebugMode) {
      log("retreving stored token: $token");
    }
    return token;
  }

  /* clear all values during logout */
  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}

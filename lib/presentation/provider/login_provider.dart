import 'dart:developer';

import 'package:app/core/DI/api_module.dart';
import 'package:app/core/network/api_client.dart';
import 'package:app/services/app_storage_service.dart';
import 'package:flutter/foundation.dart';

class LoginProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String token = "";

  // login api call
  Future<bool> login({
    required String username,
    required String password,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      await Future.delayed(Duration(seconds: 1));
      ApiClient api = ApiModule.provideApiService();
      final response = await api.login(username, password);

      if (response.status == true && response.token.isNotEmpty) {
        token = response.token;
        AppStorageService().saveLogin(token);
        if (kDebugMode) {
          log("token is : $token");
        }

        return true;
      } else {
        if (kDebugMode) {
          print(
            "status ${response.status} login failed , token: ${response.token}",
          );
        }
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Login error: $e");
      }

      _isLoading = false;

      return false;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

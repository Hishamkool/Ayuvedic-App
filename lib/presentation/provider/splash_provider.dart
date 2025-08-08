import 'package:app/core/DI/api_module.dart';
import 'package:app/core/network/api_client.dart';
import 'package:app/main.dart';
import 'package:app/routes/app_routes.dart';
import 'package:app/services/app_storage_service.dart';
import 'package:flutter/foundation.dart';

class SplashProvider extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String token = "";
  ApiClient api = ApiModule.provideApiService();

  // checking token for shared preference
  Future<bool> checkIfAlreadyLoggedIn() async {
    final String? checkToken = await AppStorageService().getToken();
    if (checkToken == null || checkToken.isEmpty) {
      _isLoggedIn = false;
      return false;
    } else {
      navigatorKey.currentState?.pushNamed(AppRoutes.home);
      _isLoggedIn = true;
      return true;
    }
  }

  Future<bool> login() async {
    _isLoading = true;
    notifyListeners();

    try {
      await Future.delayed(Duration(seconds: 1));
      ApiClient api = ApiModule.provideApiService();
      final response = await api.login("test_user", "12345678");

      if (response.status == true && response.token.isNotEmpty) {
        token = response.token;
        AppStorageService().saveLogin(token);
        if (kDebugMode) {
          print("token is : $token");
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
      return false;
    } finally {
      _isLoggedIn = false;
      notifyListeners();
    }
  }
}

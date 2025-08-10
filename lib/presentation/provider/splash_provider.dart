import 'dart:developer';

import 'package:ayurvedic_app/core/DI/api_module.dart';
import 'package:ayurvedic_app/core/network/api_client.dart';
import 'package:ayurvedic_app/main.dart';
import 'package:ayurvedic_app/routes/app_routes.dart';
import 'package:ayurvedic_app/services/app_storage_service.dart';
import 'package:flutter/foundation.dart';

class SplashProvider extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  final bool _isLoading = false;
  bool get isLoading => _isLoading;

  String token = "";
  ApiClient api = ApiModule.provideApiService();

  // checking token for shared preference
  Future<bool> checkIfAlreadyLoggedIn() async {
    final String? checkToken = await AppStorageService().getToken();
    if (checkToken == null || checkToken.isEmpty) {
      if (kDebugMode) {
        log("token in storage: $token");
      }
      _isLoggedIn = false;
      return false;
    } else {
      navigatorKey.currentState?.pushNamed(AppRoutes.home);
      _isLoggedIn = true;
      return true;
    }
  }
}

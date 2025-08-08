import 'package:shared_preferences/shared_preferences.dart';

class AppStorageService {
  static const String _loginToken = 'loginToken';
  

  Future<void> saveLogin(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_loginToken, value);
  }

   Future<String?> getToken() async{
    final prefs = await SharedPreferences.getInstance();
     prefs.getString(_loginToken);
  }






  /* clear all values during logout */
  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}

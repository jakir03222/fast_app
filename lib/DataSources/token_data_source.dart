import 'package:shared_preferences/shared_preferences.dart';

class TokenDatasource {
  late final SharedPreferences _preferences;

  TokenDatasource(this._preferences);

  Future<bool> save(String token) async {
    bool isTokenSaved =
        await _preferences.setString(SharedPreferenceKeys.seveToken, token);
    if (isTokenSaved) {
      return true;
    }
    return false;
  }

  String? get() {
    return _preferences.getString(SharedPreferenceKeys.seveToken);
  
  }

  Future<bool> delete() async {
    return await _preferences.remove(SharedPreferenceKeys.seveToken);
  }
}

abstract class SharedPreferenceKeys {
  static String seveToken = 'token';
}

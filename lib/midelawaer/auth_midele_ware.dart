import 'dart:async';
import 'package:ait_account/Go_Router/rout_magager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../DataSources/token_data_source.dart';
import '../path_manager/pathate_manager.dart';

class AuthMiddleware {
  static FutureOr<String?> guardWithLogin() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    TokenDatasource tokenDatasource = TokenDatasource(sharedPreferences);

    if ((await tokenDatasource.get()) == null) {
      return Future.value(RouterPathManager.loginPage);
    }
    return null;
  }
}

import 'dart:convert';
import 'package:ait_account/DataSources/token_data_source.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  bool isLoading = false;
  bool hasError = false;
  String? errorMessage;

  Future<bool> login(String email, String passworld) async {
    isLoading = true;
    hasError = false;
    notifyListeners();
    http.Response response = await http.post(
        Uri.parse("https://fakestoreapi.com/auth/login"),
        body: {"username": email, "password": passworld});
    if (response.statusCode == 200) {
      String token = jsonDecode(response.body)["token"];
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      TokenDatasource tokenDatasource = TokenDatasource(sharedPreferences);
      await tokenDatasource.save(token);
      return true;
      //
    } else {
      //failed login
      print("Login Failed");
      hasError = true;
      errorMessage = "Failed to login";
      notifyListeners();
    }
    isLoading = false;
    notifyListeners();
    return false;
  }
}

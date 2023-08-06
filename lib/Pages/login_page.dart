import 'package:ait_account/Go_Router/rout_magager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import '../Widget/login_singup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _usernameTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginSingUpPage(
                textLoginsingup: "Login Page",
                userName: "Email",
                passworid: "Passworid",
                buttonText: "Login",
                onProsse: () async {
                  context.goNamed(RouterPathManager.homePage);
                  http.Response response = await http
                      .get(Uri.parse("https://dummyjson.com/products"));
                  if (response.statusCode == 200) {
                    print(response.body);
                  }
                },
                username: _usernameTextController.text,
                passWoridInput: _passwordTextController.text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

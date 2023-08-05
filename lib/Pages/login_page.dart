import 'package:ait_account/Go_Router/rout_magager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../Provider/login_provider.dart';
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
                  String username = _usernameTextController.text;
                  String password = _passwordTextController.text;
                  bool isLoginSucceed =
                      await Provider.of<AuthProvider>(context, listen: false)
                          .login(username, password);
                  if (isLoginSucceed) {
                    context.goNamed(RouterPathManager.homePage);
                  } else {
                    print("Failed");
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

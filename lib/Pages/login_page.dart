import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Widget/login_singup_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  String? emailNameInput;
  String? passWoridInput;

  LoginPage({super.key});

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
                  http.Response response = await http.post(
                      Uri.parse("https://fakestoreapi.com/auth/login"),
                      body: {
                        "username": emailNameInput,
                        "password": passWoridInput,
                      });
                  if (response.statusCode == 200) {
                    print(response.body);
                    print("Login SuccesFull");
                  } else {
                    print("Login Faild");
                  }
                },
                emailNameInput: emailNameInput,
                passWoridInput: passWoridInput,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

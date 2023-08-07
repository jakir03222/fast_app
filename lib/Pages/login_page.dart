
import 'package:flutter/material.dart';

import '../Widget/login_singup_page.dart';

class LoginPage extends StatelessWidget {
const  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginSingUpPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

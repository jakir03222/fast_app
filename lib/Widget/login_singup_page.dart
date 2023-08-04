import 'package:flutter/material.dart';


// ignore: must_be_immutable
class LoginSingUpPage extends StatelessWidget {
  final String textLoginsingup;
  final String buttonText;
  final String userName;
  final String passworid;
  final VoidCallback onProsse;
  String? emailNameInput;
  String? passWoridInput;

  LoginSingUpPage({
    super.key,
    required this.textLoginsingup,
    required this.buttonText,
    required this.userName,
    required this.passworid,
    required this.onProsse,
    this.emailNameInput,
    this.passWoridInput,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Container(
        height: 500.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(24.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 74.0),
              const Center(
                child: Text(
                  "Login Page",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 26.0,
              ),
              const Text(
                "Username",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              TextField(
                onChanged: (value) {
                  emailNameInput = value;
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Enter your passworid',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 23.0,
              ),
              const Text(
                "Passworid",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              TextField(
                onChanged: (value) {
                  passWoridInput = value;
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter your Passworid',
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Enter your passworid',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                  child: SizedBox(
                height: 40.0,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    onPressed: () {
                      print("Email: $emailNameInput");

                      print("PassWorid: $passWoridInput");
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ait_account/Provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../path_manager/pathate_manager.dart';

class LoginSingUpPage extends StatelessWidget {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passworldEditingController =
      TextEditingController();
  LoginSingUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Container(
        height: 530.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(24.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 44.h),
                Center(
                  child: Text(
                    "Login Page",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                TextField(
                  controller: _emailTextEditingController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Enter your email',
                    labelStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'Enter your passworld',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Text(
                  "Passworld",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                TextField(
                  controller: _passworldEditingController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Enter your Passworid',
                    labelStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'Enter your passworid',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Consumer<AuthProvider>(
                  builder: (context, authProvider, child) =>
                      authProvider.hasError
                          ? Center(
                              child: Text(
                                authProvider.errorMessage.toString(),
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : Container(),
                ),
                SizedBox(height: 14.h),
                Center(
                  child: SizedBox(
                    height: 40.h,
                    width: double.infinity,
                    child: Consumer<AuthProvider>(
                      builder: (context, authProvider, child) => ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.black),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.r),
                              side: const BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                        onPressed: () async {
                          String email = _emailTextEditingController.text;
                          String passworld = _passworldEditingController.text;
                          print("Email: $email or Passworld: $passworld");
                          // bool isLoginSuccess =
                          //     await authProvider.login(email, passworlS

                          bool isLoginSuccess = await Provider.of<AuthProvider>(
                                  context,
                                  listen: false)
                              .login(email, passworld);
                          if (isLoginSuccess) {
                            context.goNamed(RouterPathManager.homePage);
                          } else {
                            print("Failed to login");
                          }
                        },
                        child: Consumer<AuthProvider>(
                          builder: (context, authProvider, child) =>
                              authProvider.isLoading
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                        fontSize: 18.0.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Center(
                  child: SizedBox(
                    height: 40.h,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.r),
                            side: const BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.goNamed(RouterPathManager.singupPage);
                      },
                      child: Text(
                        "Singup",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

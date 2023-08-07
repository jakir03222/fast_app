
import 'package:ait_account/Widget/input_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../Widget/singup_button.dart';
import '../path_manager/pathate_manager.dart';

class SinupPage extends StatelessWidget {
  const SinupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.8),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70.0),
              Center(
                  child:
                      InputTitleText(text: "SinUp Page", color: Colors.purple)),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 500.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(44.r),
                      topLeft: Radius.circular(44.r),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 60.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputTitleText(text: "Email", color: Colors.black54),
                        SizedBox(height: 14.h),
                        const Padding(
                          padding: EdgeInsets.only(right: 24.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Enter Your Email',
                            ),
                          ),
                        ),
                        SizedBox(height: 14.h),
                        InputTitleText(
                            text: "Possworid", color: Colors.black54),
                        SizedBox(
                          height: 14.h,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 24.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Enter Your Possworid',
                            ),
                          ),
                        ),
                        SizedBox(height: 14.h),
                        InputTitleText(
                            text: "Confirm Password", color: Colors.black54),
                        SizedBox(
                          height: 14.h,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 24.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'confirm password',
                            ),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        SingUpButton(
                          onTab: () {
                            context.goNamed(RouterPathManager.loginPage);
                          },
                          text: "SinUp",
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

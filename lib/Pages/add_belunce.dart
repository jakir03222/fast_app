
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../Widget/user_input.dart';
import '../path_manager/pathate_manager.dart';
class AddBlunceList extends StatelessWidget {
  const AddBlunceList({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    context.goNamed(RouterPathManager.homePage);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 40.0,
                    color: Colors.red,
                  ),
                ),
                 SizedBox(height: 20.h),
                 Center(
                  child: Text(
                    "Company Name",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                ),
               const UserInputFrom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

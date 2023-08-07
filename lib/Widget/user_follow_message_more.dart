import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfile extends StatelessWidget {
  final Icon icon;
  final String text;

  const UserProfile({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        height: 40.h,
        width: 100.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(46.0)),
        child: Row(
          children: [
            SizedBox(width: 8.w),
            icon,
            SizedBox(width: 8.w),
            Text(
              text,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

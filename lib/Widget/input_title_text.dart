import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class InputTitleText extends StatelessWidget {
  String? text;
  final Color color;
  InputTitleText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}

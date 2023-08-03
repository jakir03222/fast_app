import 'package:flutter/material.dart';

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
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}

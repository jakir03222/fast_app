
import 'package:flutter/material.dart';

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
        height: 40.0,
        width: 110.0,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(46.0)),
        child: Row(
          children: [
           const SizedBox(width: 4.0),
            icon,
           const SizedBox(width: 8.0),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

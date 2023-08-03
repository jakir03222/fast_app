import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WebInformastion2 extends StatelessWidget {
  final Widget icon;
  final String text;
  final String websitelink;
  const WebInformastion2({
    super.key,
    required this.icon,
    required this.text,
    required this.websitelink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            const SizedBox(width: 14.0),
            Text(
              text.toString(),
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            )
          ],
        ),
        Text(
          websitelink.toString(),
          style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WebInformastion extends StatelessWidget {
  final String image;
  final String text;
  final String websitelink;
  const WebInformastion({
    super.key,
    required this.image,
    required this.text,
    required this.websitelink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
             image,
              width: 30,
            ),
            const SizedBox(width: 14.0),
             Text(
              text.toString(),
              style:const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            )
          ],
        ),
         Text(
         websitelink.toString(),
          style:const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

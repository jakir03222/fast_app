import 'package:flutter/material.dart';

class HomePageItem extends StatelessWidget {
  const HomePageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 44.0,
          ),
          Card(
            elevation: 1,
            child: Container(
              height: 240,
              width: 200.0,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(14.0)),
              child: Image.asset(
                "assets/image.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SingUpButton extends StatelessWidget {
  final VoidCallback onTab;
  final String text;

  const SingUpButton({
    super.key,
    required this.onTab,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTab,
        child: Container(
          alignment: Alignment.center,
          height: 70.0,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(18.0)),
          child: Text(
            text.toString(),
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}

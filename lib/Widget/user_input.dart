import 'package:flutter/material.dart';

import 'input_title_text.dart';

class UserInputFrom extends StatefulWidget {
  @override
  State<UserInputFrom> createState() => _UserInputFromState();
}

class _UserInputFromState extends State<UserInputFrom> {
  TextEditingController sirNamer = TextEditingController();

  TextEditingController credit = TextEditingController();
  TextEditingController devit = TextEditingController();

  @override
  build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 14.0),
        InputTitleText(text: "SL Number", color: Colors.black54),
        const SizedBox(height: 14.0),
        TextField(
          controller: sirNamer,
          decoration: const InputDecoration(
              hintText: 'SL Number', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 14.0),
        const SizedBox(height: 14.0),
        InputTitleText(
          text: "Credit",
          color: Colors.black54,
        ),
        const SizedBox(height: 14.0),
        TextField(
          controller: credit,
          decoration: const InputDecoration(
              hintText: 'Credit', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 14.0),
         InputTitleText(
          text: "Debit",
          color: Colors.black45,
        ),
        const SizedBox(height: 14.0),
        TextField(
          controller: devit,
          decoration: const InputDecoration(
              hintText: 'Debit', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 8.0),
        Center(
          child: ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              print("SL Number ${sirNamer.text}");
              print("Credit: ${credit.text}");
              print("Debit: ${devit.text}");
            },
            style: ElevatedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0)),
                backgroundColor: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}

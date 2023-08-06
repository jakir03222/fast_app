import 'package:flutter/material.dart';

import 'input_title_text.dart';

class UserInputFrom extends StatefulWidget {
  const UserInputFrom({super.key});

  @override
  State<UserInputFrom> createState() => _UserInputFromState();
}

class _UserInputFromState extends State<UserInputFrom> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 14.0),
        InputTitleText(text: "SL Number", color: Colors.black54),
        const SizedBox(height: 14.0),
        const TextField(
          decoration: InputDecoration(
              hintText: 'SL Number', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 14.0),
        Row(
          children: [
            IconButton(
              onPressed: () => _selectTime(context),
              icon: Image.asset(
                "assets/time_image.png",
              ),
              iconSize: 84.0,
            ),
            Text(
              '${_selectedTime.hour} : ${_selectedTime.minute}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 14.0),
        InputTitleText(
          text: "Credit",
          color: Colors.black54,
        ),
        const SizedBox(height: 14.0),
        const TextField(
          decoration:
              InputDecoration(hintText: 'Credit', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 14.0),
        InputTitleText(
          text: "Debit",
          color: Colors.black45,
        ),
        const SizedBox(height: 14.0),
        const TextField(
          decoration:
              InputDecoration(hintText: 'Debit', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 28.0),
        Center(
          child: ElevatedButton(
            child:  const Text('Submit'),
            onPressed: () {},
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

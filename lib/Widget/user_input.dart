import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        SizedBox(height: 14.h),
        InputTitleText(text: "SL Number", color: Colors.black54),
        SizedBox(height: 14.h),
        const TextField(
          decoration: InputDecoration(
              hintText: 'SL Number', border: OutlineInputBorder()),
        ),
        SizedBox(height: 14..h),
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
        SizedBox(height: 14.h),
        InputTitleText(
          text: "Credit",
          color: Colors.black54,
        ),
        SizedBox(height: 14.h),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Credit',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 14.h),
        InputTitleText(
          text: "Debit",
          color: Colors.black45,
        ),
        SizedBox(height: 14.h),
        const TextField(
          decoration:
              InputDecoration(hintText: 'Debit', border: OutlineInputBorder()),
        ),
        SizedBox(height: 28.h),
        Center(
          child: ElevatedButton(
            child: Text('Submit'),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(24.r)),
                backgroundColor: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle:
                    TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}

import 'package:ait_account/Go_Router/rout_magager.dart';
import 'package:ait_account/Widget/input_title_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class TotalBuclansList extends StatefulWidget {


 const TotalBuclansList({super.key});

  @override
  State<TotalBuclansList> createState() => _TotalBuclansListState();
}

class _TotalBuclansListState extends State<TotalBuclansList> {
    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>?>? totla = [
      {
        "id": 1,
        "time": "10.20 Pm",
        "total": 2000,
        "credit": 200,
        "debit": 1800,
      },
      {
        "id": 2,
        "time": "6.20 Pm",
        "total": 3000,
        "credit": 500,
        "debit": 2500,
      },
      {
        "id": 3,
        "time": "9.40 AM",
        "total": 500,
        "credit": 200,
        "debit": 300,
      },
      {
        "id": 4,
        "time": "5.20 Pm",
        "total": 10000,
        "credit": 3000,
        "debit": 7000,
      },
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: SizedBox(
              height: 50.0,
              width: 110.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    context.goNamed(RouterPathManager.homePage);
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 40.0,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              color: Colors.purple.withOpacity(0.4),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InputTitleText(text: "Sl", color: Colors.black),
                  InputTitleText(text: "Time", color: Colors.black),
                  InputTitleText(text: "Credit", color: Colors.black),
                  InputTitleText(text: "Debit", color: Colors.black),
                  InputTitleText(text: "Edit", color: Colors.black),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: totla.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InputTitleText(
                          text: totla[index]!["id"].toString(),
                          color: Colors.black),

                      ///
                      ///
                      ///
                      InputTitleText(
                          text: totla[index]!["time"].toString(),
                          color: Colors.black),
                      InputTitleText(
                          text: totla[index]!["credit"].toString(),
                          color: Colors.black),
                      InputTitleText(
                          text: totla[index]!["debit"].toString(),
                          color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

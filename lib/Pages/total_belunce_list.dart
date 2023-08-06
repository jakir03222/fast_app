import 'package:ait_account/DataSource/list_of_map_data.dart';
import 'package:ait_account/Go_Router/rout_magager.dart';
import 'package:ait_account/Widget/input_title_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
 class TotalBuclansList extends StatelessWidget {
  const TotalBuclansList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                color: Colors.purple.withOpacity(0.3),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InputTitleText(text: "Sl", color: Colors.red),
                      InputTitleText(text: "Time", color: Colors.red),
                      InputTitleText(text: "Credit", color: Colors.red),
                      InputTitleText(text: "Debit", color: Colors.red),
                      InputTitleText(text: "Edit", color: Colors.red),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 600.0,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: DataSource.totla!.length,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InputTitleText(
                            text: DataSource.totla![index]!["id"].toString(),
                            color: Colors.black),

                        ///
                        ///
                        ///
                        InputTitleText(
                            text: DataSource.totla![index]!["time"].toString(),
                            color: Colors.black),
                        InputTitleText(
                            text:
                                DataSource.totla![index]!["credit"].toString(),
                            color: Colors.black),
                        InputTitleText(
                            text: DataSource.totla![index]!["debit"].toString(),
                            color: Colors.black),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.green,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

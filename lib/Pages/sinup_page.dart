import 'package:ait_account/Widget/input_title_text.dart';
import 'package:flutter/material.dart';

class SinupPage extends StatelessWidget {
  const SinupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(
              child: InputTitleText(text: "SinUp Page", color: Colors.purple)),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 500.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(44.0),
                    topLeft: Radius.circular(44),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     InputTitleText(text: "Email", color: Colors.black54),
                    const SizedBox(height: 14.0),
                    const Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Username',
                        ),
                      ),
                    ),
                    const SizedBox(height: 14.0),
                     InputTitleText(
                        text: "Possworid", color: Colors.black54),
                    const SizedBox(
                      height: 14.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 24.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Enter Your Possworid',
                        ),
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 70.0,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(18.0)),
                          child: const Text(
                            "SinUp",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

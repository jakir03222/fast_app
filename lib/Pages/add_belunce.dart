import 'package:ait_account/Go_Router/rout_magager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Widget/user_input.dart';

class AddBlunceList extends StatelessWidget {
  const AddBlunceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4.0),
              IconButton(
                onPressed: () {
                  context.goNamed(RouterPathManager.homePage);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 40.0,
                ),
              ),
              const SizedBox(height: 64.0),
              const Center(
                child: Text(
                  "Company Name",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              UserInputFrom(),
            ],
          ),
        ),
      ),
    );
  }
}

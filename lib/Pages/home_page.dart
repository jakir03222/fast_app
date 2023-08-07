import 'package:ait_account/Pages/home_page_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Widget/bottemNavigator_bar.dart';
import '../path_manager/pathate_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple.withOpacity(0.6),
        bottomNavigationBar: const BottemNavigatorbar(),
        body: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 7 / 2,
            crossAxisSpacing: 14 / 4,
            childAspectRatio: 5 / 8,
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () => context.goNamed(RouterPathManager.addBelunce),
            child: const HomePageItem(),
          ),
        ),
      ),
    );
  }
}

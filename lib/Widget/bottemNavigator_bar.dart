
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../path_manager/pathate_manager.dart';

class  BottemNavigatorbar extends StatelessWidget {
  const BottemNavigatorbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: BottomNavigationBar(currentIndex: 0, items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                context.goNamed(RouterPathManager.totlabulancepage);
              },
              icon: const Icon(Icons.balance),
            ),
            label: "Balance"),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  context.goNamed(RouterPathManager.profilePage);
                },
                icon: const Icon(Icons.person)),
            label: "Profile"),
      ]),
    );
  }
}

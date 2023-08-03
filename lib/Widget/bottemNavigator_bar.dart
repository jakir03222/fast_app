import 'package:ait_account/Go_Router/rout_magager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottemNavigator_bar extends StatelessWidget {
  const BottemNavigator_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(currentIndex: 0, items: [
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
    ]);
  }
}

import 'package:ait_account/Go_Router/rout_magager.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'NIT Account',
        routerConfig: RoutManager.routerCronfagmanager,
      ),
    );
  }
}

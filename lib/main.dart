import 'package:ait_account/Go_Router/rout_magager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'NIT Account',
          routerConfig: RoutManager.routerCronfagmanager,
        ),
      ),
    );
  }
}

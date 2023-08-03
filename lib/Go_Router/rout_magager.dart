import 'package:ait_account/Pages/add_belunce.dart';
import 'package:ait_account/Pages/home_page.dart';
import 'package:ait_account/Pages/login_page.dart';
import 'package:ait_account/Pages/profile_page.dart';
import 'package:ait_account/Pages/total_belunce_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoutManager {
  static final GoRouter routerCronfagmanager = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: RouterPathManager.homePage,
        path: RouterPathManager.homePage,
        builder: (BuildContext context, GoRouterState state) => HomePage(),
        routes: <RouteBase>[
          GoRoute(
            path: RouterPathManager.loginPage,
            name: RouterPathManager.loginPage,
            builder: (BuildContext context, GoRouterState state) =>
                const LoginPage(),
            routes: [
              GoRoute(
                path: RouterPathManager.addBelunce,
                name: RouterPathManager.addBelunce,
                builder: (BuildContext context, GoRouterState state) =>
                    const AddBlunceList(),
                routes: [
                  GoRoute(
                    path: RouterPathManager.totlabulancepage,
                    name: RouterPathManager.totlabulancepage,
                    builder: (BuildContext context, GoRouterState state) =>
                        TotalBuclansList(),
                    routes: [
                      GoRoute(
                        path: RouterPathManager.profilePage,
                        name: RouterPathManager.profilePage,
                        builder: (context, state) => const ProfilePage(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

abstract class RouterPathManager {
  static String homePage = "/";
  static String loginPage = 'loginpag';
  static String addBelunce = "addbelunce";
  static String totlabulancepage = 'totalbulance';
  static String profilePage = "profilepage";
}

import 'package:ait_account/Pages/home_page.dart';
import 'package:ait_account/Pages/login_page.dart';
import 'package:ait_account/Pages/sinup_page.dart';
import 'package:ait_account/midelawaer/auth_midele_ware.dart';
import 'package:flutter/material.dart';
import 'package:ait_account/Pages/add_belunce.dart';
import 'package:ait_account/Pages/profile_page.dart';
import 'package:ait_account/Pages/total_belunce_list.dart';
import 'package:go_router/go_router.dart';
import '../path_manager/pathate_manager.dart';

class RoutManager {
  static final GoRouter routerCronfagmanager = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: RouterPathManager.homePage,
        path: RouterPathManager.homePage,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
        redirect: (context, state) => AuthMiddleware.guardWithLogin(),
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
                        const TotalBuclansList(),
                    routes: [
                      GoRoute(
                        path: RouterPathManager.singupPage,
                        name: RouterPathManager.singupPage,
                        builder: (context, state) => const SinupPage(),
                        routes: [
                          GoRoute(
                            path: RouterPathManager.profilePage,
                            name: RouterPathManager.profilePage,
                            builder: (context, state) => const ProfilePage(),
                          )
                        ],
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



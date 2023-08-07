import 'package:ait_account/Widget/web_information.dart';
import 'package:ait_account/Widget/web_information2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widget/user_profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.5),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 700.h,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 8.0),
                const UserProfileInfo(
                  image: "assets/ceo_sir.jpg",
                  email: "shakirahmad84@gmail.com",
                  name: "Shakir Ahmad",
                  joineddate: "Joined Marc 2023",
                  descopson:
                      "A chief executive officer (CEO) is the highest-ranking executive in a company. Broadly speaking, a chief executive officer’s primary responsibilities include making major corporate decisions.",
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 300.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(24.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(
                            "Information",
                            style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.8)),
                          ),
                          SizedBox(height: 20.h),
                          const WebInformastion(
                            image: "assets/website_icon.png",
                            text: "Website",
                            websitelink: "www.shakir_ahmad.com",
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          const WebInformastion2(
                            icon: Icon(
                              Icons.email,
                              size: 34.0,
                            ),
                            text: "Email",
                            websitelink: "www.facebook.com",
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const WebInformastion2(
                            icon: Icon(
                              Icons.phone,
                              size: 34.0,
                            ),
                            text: "Phone",
                            websitelink: "+8801783360384",
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const WebInformastion(
                              image: "assets/joined_icon.png",
                              text: "joined",
                              websitelink: "26 March 2023")
                        ],
                      ),
                    ),
                  ),
                ),
                // ElevatedButton(
                //     onPressed: () async {
                //       SharedPreferences sharedPreferences =
                //           await SharedPreferences.getInstance();

                //       TokenDatasource tokenDatasource =
                //           TokenDatasource(sharedPreferences);
                //       if (await tokenDatasource.delete()) {
                //         print("Logged Out");
                //       } else {
                //         print("Logging out failed");
                //       }
                //       context.goNamed(RouterPathManager.loginPage);
                //     },
                //     child: Text("LogOut"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

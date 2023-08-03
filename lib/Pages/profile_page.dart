import 'package:ait_account/Widget/web_information.dart';
import 'package:ait_account/Widget/web_information2.dart';
import 'package:flutter/material.dart';

import '../Widget/user_profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 800.0,
            width: double.infinity,
            child: Column(
              children: [
                const UserProfileInfo(
                  image: "assets/ceo_sir.jpg",
                  email: "shakirahmad84@gmail.com",
                  name: "Shakir Ahmad",
                  joineddate: "Joined Marc 2023",
                  descopson:
                      "A chief executive officer (CEO) is the highest-ranking executive in a company. Broadly speaking, a chief executive officer’s primary responsibilities include making major corporate decisions.",
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 200.0,
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
                          const SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            "Information",
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.8)),
                          ),
                          const SizedBox(height: 20.0),
                          const WebInformastion(
                            image: "assets/website_icon.png",
                            text: "Website",
                            websitelink: "www.shakir_ahmad.com",
                          ),
                          const SizedBox(
                            height: 8.0,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

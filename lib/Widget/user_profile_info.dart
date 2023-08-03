import 'package:ait_account/Widget/user_follow_message_more.dart';
import 'package:flutter/material.dart';

class UserProfileInfo extends StatelessWidget {
  final String image;
  final String email;
  final String name;
  final String joineddate;
  final String descopson;
  const UserProfileInfo(
      {super.key,
      required this.image,
      required this.email,
      required this.name,
      required this.joineddate,
      required this.descopson});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(18.0)),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 100.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(14.0)),
                  ),
                ],
              ),
              Positioned(
                left: 135.0,
                bottom: 300,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50.0,
                  backgroundImage: AssetImage(image),
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 140.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        email,
                        style: const TextStyle(
                            fontSize: 24.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(joineddate),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          UserProfile(icon: Icon(Icons.person), text: "Follow"),
                          UserProfile(
                              icon: Icon(Icons.message), text: "Message"),
                          UserProfile(
                              icon: Icon(Icons.keyboard_control), text: "More"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        descopson,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

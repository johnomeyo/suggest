import 'package:flutter/material.dart';
import 'package:suggest/main.dart';
import 'package:suggest/my_widgets/my_widgets.dart';
import 'package:suggest/settings/invite_friends.dart';
import 'package:suggest/settings/notification.dart';

void main() => runApp(const Settings());

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackPress(),
          title: Text(
            "Settings",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(
          children: [
            SettingItems(
              title: "Personal Info",
              color: Color(0xffFFF2F2),
              icon: Icons.person,
              iconColor: Color(0xffFF4C4F),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingNotification()));
              },
              child: SettingItems(
                title: "Notification",
                color: Color(0xffFFF7EB),
                icon: Icons.notifications,
                iconColor: Color(0xffFFA724),
              ),
            ),
            SettingItems(
              title: "Security",
              color: Color(0xffC5FFFB),
              icon: Icons.security,
              iconColor: Color(0xff00DDAB),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InviteFriends()));
              },
              child: SettingItems(
                title: "Invite Friends",
                color: Color(0xffFFF7CE),
                icon: Icons.people,
                iconColor: Color(0xffFFA724),
              ),
            ),
            SettingItems(
              title: "Help Center",
              color: Color(0xffEBF9E5),
              icon: Icons.book,
              iconColor: Color(0xff00DDAB),
            ),
            SettingItems(
              title: "About Mooncake",
              color: Color(0xffECF1FF),
              icon: Icons.help,
              iconColor: Color(0xff4E91FD),
            ),
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      builder: ((context) {
                        return SizedBox(
                          height: 250,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "Log Out",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  color: Colors.grey[300],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Are you sure you want to log out?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () => Navigator.pop(context),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xffFFECEC),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30, vertical: 20),
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Color(0xffFF3438),
                                                  fontSize: 20),
                                            ),
                                          )),
                                    ),
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => MyApp()));
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xffFF3438),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30, vertical: 20),
                                            child: Text(
                                              "Yes, Log Out",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      }));
                },
                child: SettingItems(
                  title: "Log Out",
                  color: Color(0xffFFF2F2),
                  icon: Icons.logout_rounded,
                  iconColor: Color(0xffFF4C4F),
                ))
          ],
        ),
      ),
    );
  }
}

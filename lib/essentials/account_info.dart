import 'package:flutter/material.dart';
import 'package:suggest/data/chef.dart';
import 'package:suggest/meals/flex_widgets.dart';
import 'package:suggest/my_widgets/them.dart';

import '../my_widgets/them_widgets.dart';

late final Chef chef;
void main() => runApp(AccountInfo(chef: chef));

class AccountInfo extends StatelessWidget {
  final Chef chef;
  const AccountInfo({super.key, required this.chef});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back, color: Colors.black)),
                elevation: 0,
                actions: [
                  BottomSheetExample(),
                  SizedBox(
                    width: 10,
                  ),
                  MyComment(),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(chef.image),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chef.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              chef.username,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        TheButton()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                color: Colors.grey.shade300,
                                width: 1,
                              ),
                              bottom: BorderSide(
                                color: Colors.grey.shade300,
                                width: 1,
                              ))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LikeCounts(
                              likes: chef.recipes, likeCountFor: "recipes"),
                          LikeCounts(
                              likes: chef.following, likeCountFor: "following"),
                          LikeCounts(
                              likes: chef.followers, likeCountFor: "followers"),
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                    labelColor: Color(0xffFF3438),
                    tabs: [
                      Tab(
                        text: "Recipes",
                      ),
                      Tab(text: "About"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: PersonalRecipe(),
                      )),
                      //the other tab
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(chef.description,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ))),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Text(
                                "Social media",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Socials(
                              imagePath: 'lib/assets/redWhatsapp.png',
                              socialPlatform: 'Whatsapp',
                            ),
                            Socials(
                              imagePath: 'lib/assets/redFacebook.png',
                              socialPlatform: 'Facebook',
                            ),
                            Socials(
                              imagePath: 'lib/assets/redTwitter.png',
                              socialPlatform: 'Twitter',
                            ),
                            Socials(
                              imagePath: 'lib/assets/redInstagram.png',
                              socialPlatform: 'Instagram',
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Text(
                                "More Info",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            MoreInfo(
                              infoAbout: "www.exampledormain.com",
                              icon: Icons.favorite_outline_outlined,
                            ),
                            MoreInfo(
                              infoAbout: "Nairobi, Kenya",
                              icon: Icons.location_pin,
                            ),
                            MoreInfo(
                              infoAbout: "Joined since, April 3rd 2023",
                              icon: Icons.calendar_today,
                            ),
                            MoreInfo(
                              infoAbout: "11237658 views",
                              icon: Icons.graphic_eq,
                            ),
                            SizedBox(height: 50,)
                          ],
                        ),
                      )
                    ]),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class MoreInfo extends StatelessWidget {
  const MoreInfo({super.key, this.icon, required this.infoAbout});
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String infoAbout;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Row(
        children: [
          Icon(icon,color: Colors.grey.shade700,),
          SizedBox(width: 50,),
          Text(
            infoAbout,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

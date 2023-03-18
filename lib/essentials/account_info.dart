import 'package:flutter/material.dart';
import 'package:suggest/my_widgets/them.dart';

import '../my_widgets/them_widgets.dart';

void main() => runApp(const AccountInfo());

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: DefaultTabController(
        length: 2,
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
                        radius: 40,
                        backgroundImage: AssetImage("lib/assets/rc.jpg"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "George Eddings",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "@george_eddings",
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
                        LikeCounts(likes: "245", likeCountFor: "recipes"),
                        LikeCounts(likes: "127", likeCountFor: "following"),
                        LikeCounts(likes: "29.5k", likeCountFor: "followers"),
                      ],
                    ),
                  ),
                ),
                TabBar(
                  labelColor: Color(0xff1E1E1E),
                  tabs: [
                    Tab(
                      text: "Recipes",
                    ),
                    Tab(text: "About"),
                  ],
                ),
                Expanded(
                  child:
                      TabBarView(children: [
                        Center(child: Text("John")),
                         Center(child: Text("Abruzzi"))]),
                )
              ],
            )),
      ),
    );
  }
}

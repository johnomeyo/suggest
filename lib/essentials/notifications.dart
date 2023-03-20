// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:suggest/essentials/system.dart';
import 'package:suggest/my_widgets/the_widgets.dart';
import 'package:suggest/settings/notification.dart';

void main() => runApp(const Notifications());

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  static const String _title = 'Notifications';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      title: _title,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                _title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.white,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingNotification()));
                    },
                    child: Icon(
                      Icons.settings_outlined,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
              elevation: 0,
              //bottom: ,
              bottom: TabBar(labelColor: Colors.black, tabs: [
                Tab(text: "General"),
                Tab(text: "System"),
              ]),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Image.asset(
                        "lib/assets/clip.png",
                        height: 250,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Empty",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("You dont have any notification yet"),
                    ],
                  ),
                ),
                SystemTab(),
              ],
            ),
          )),
    );
  }
}

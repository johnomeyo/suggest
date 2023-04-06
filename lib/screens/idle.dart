// import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:suggest/essentials/create_recipe.dart';
import 'package:suggest/essentials/settings.dart';
import 'package:suggest/meals/lunch/follow.dart';
import 'package:suggest/screens/discover.dart';
import 'package:suggest/settings/about.dart';
import 'package:suggest/sign_in/sign_in.dart';
import '../my_widgets/them_widgets.dart';
// import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const IdleScreen());

class IdleScreen extends StatelessWidget {
  const IdleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // Text("data"),
                SizedBox(
                  height: 200,
                ),
                MyFavoriteIcon(),
                SizedBox(
                  height: 20,
                ),
                // MyWidget(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Discover()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Text(
                          "Discover",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFF3438)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Text("Settings"),
                      )),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateRecipe()));
                    },
                    child: Text("Create Recipe")),
                // MyComment(),
                WhatsAppScreen(),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text("Sign in")),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FollowAndFollowing()));
                    },
                    child: Text("Help Center"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        openWhatsapp();
      },
      child: Text("Whatsapp"),
    );
  }

  void openWhatsapp() async {
    const phoneNumber = '0729822061';
    final Uri whatsappUrl = Uri.parse('https://wa.me/$phoneNumber');
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }
}

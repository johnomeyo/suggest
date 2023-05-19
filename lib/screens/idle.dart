// import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:suggest/essentials/create_recipe.dart';
//import 'package:suggest/essentials/practise.dart';
import 'package:suggest/essentials/settings.dart';
import 'package:suggest/meals/lunch/follow.dart';
import 'package:suggest/meals/lunch/product_display.dart';
import 'package:suggest/screens/discover.dart';
import 'package:suggest/sign_in/sign_in.dart';
//import 'package:suggest/settings/about.dart';
//import 'package:suggest/sign_in/sign_in.dart';
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
                  height: 100,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push((context),
                          MaterialPageRoute(builder: (context) => ToDo()));
                    },
                    child: Text(
                      "ToDo",
                      style: TextStyle(fontFamily: "Poppins"),
                    )),
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
                    child: Text("Help Center")),
                H(),
                //Text(emailController.toString())
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

class H extends StatefulWidget {
  const H({super.key});

  @override
  State<H> createState() => _HState();
}

class _HState extends State<H> {
  final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: emailController,
          decoration: InputDecoration(hintText: "email"),
        ),
          FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(emailController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
      ],
    );
  }
}

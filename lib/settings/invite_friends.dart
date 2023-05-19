import 'package:flutter/material.dart';
import 'package:suggest/meals/flex_widgets.dart';

void main() => runApp(const InviteFriends());

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Invite friends",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
            leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back, color: Colors.black)),
            elevation: 0,
            actions: [Icon(Icons.search, color: Colors.black)],
          ),
          body: ListView(
            children: [
              Invites(
                  name: "Berry Allen", avatarImage: "lib/assets/jesson.jpg"),
              Invites(name: "Bruce Wayne", avatarImage: "lib/assets/rc.jpg"),
              Invites(name: "Diana Chris", avatarImage: "lib/assets/c.jpg"),
              Invites(name: "Clark Kent", avatarImage: "lib/assets/ronan.jpg"),
              Invites(name: "Andrew Kibe", avatarImage: "lib/assets/piza.jpg"),
              Invites(
                  name: "Bella Khadid",
                  avatarImage: "lib/assets/home_background.jpg"),
              Invites(name: "Coi Leray", avatarImage: "lib/assets/banana.jpg"),
            ],
          )),
    );
  }
}

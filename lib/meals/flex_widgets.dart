import 'dart:async';

import 'package:flutter/material.dart';

import '../data/recipe.dart';
import '../my_widgets/them.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: foods.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        final food = foods[index];

        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodDetailsPage(food: food)),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(food.image), fit: BoxFit.cover),
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15)),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      food.name,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  )),
            ),
          ),
        );
      },
    );
  }
}

class Socials extends StatelessWidget {
  final String imagePath;
  final String socialPlatform;
  const Socials(
      {super.key, required this.imagePath, required this.socialPlatform});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            socialPlatform,
            style: TextStyle(color: Color(0xffFF3438)),
          )
        ],
      ),
    );
  }
}

class Invites extends StatelessWidget {
  const Invites({super.key, required this.name, required this.avatarImage});
  final String name;
  final String avatarImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(avatarImage),
            radius: 30,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
          Spacer(),
          InviteButton()
        ],
      ),
    );
  }
}

class InviteButton extends StatefulWidget {
  const InviteButton({super.key});

  @override
  State<InviteButton> createState() => _TheButtonState();
}

bool isPressed = true;

class _TheButtonState extends State<InviteButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        width: 70,
        height: 30,
        decoration: BoxDecoration(
            color: Color(isPressed ? 0xffFF3438 : 0xffFFFFFF),
            border: Border.all(width: 1, color: Color(0xffFF3438)),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Center(
              child: Text(
            isPressed ? "Invite" : "Invited",
            style: TextStyle(
                color: Color(isPressed ? 0xffFFFFFF : 0xffFF3438),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}

class SignInput extends StatelessWidget {
  const SignInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(border: UnderlineInputBorder()),
    );
  }
}

class OTPentry extends StatelessWidget {
  const OTPentry({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
        borderRadius: BorderRadius.circular(10),
        // backgroundBlendMode: BlendMode.overlay,
      ),
      child: Center(
          child: Text(
        "1",
        style: TextStyle(color: Color(0xffFF3438)),
      )),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  final int durationInSeconds;
  final int minimumValue;

  const CountdownTimer({super.key, required this.durationInSeconds, required this.minimumValue});

  @override
  // ignore: library_private_types_in_public_api
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  int _seconds = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _seconds = widget.durationInSeconds;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _seconds--;
        if (_seconds == widget.minimumValue) {
          _timer?.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('$_seconds', style: TextStyle(color: Color(0xffFF3438)));
  }
}

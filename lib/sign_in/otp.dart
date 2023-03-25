import 'package:flutter/material.dart';
import 'package:suggest/meals/flex_widgets.dart';
import 'package:suggest/my_widgets/widgets.dart';
import 'package:suggest/screens/home_screen.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "You've got mail📩",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                  "We've sent the OTP verification to your email address. Check your email and enter the code below."),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OTPentry(),
                OTPentry(),
                OTPentry(),
                OTPentry(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(child: Text("Didnt receive OTP?")),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  Text("You can resend the code in "),
                  CountdownTimer(
                    durationInSeconds: 59,
                    minimumValue: 0,
                  ),
                  Text(" s")
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
        bottomNavigationBar: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: MyButtons(name: "Confirm")),
      ),
    );
  }
}

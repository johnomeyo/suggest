import 'package:flutter/material.dart';
import 'package:suggest/sign_in/otp.dart';

import '../meals/flex_widgets.dart';
import '../my_widgets/widgets.dart';

void main() {
  runApp(const ForgotPassword());
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
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
                "Forgot Password🔑",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                  "Enter your email address. We will send an OTP code for verification in the next step"),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SignInput(),
            ),
          ],
        ),
        bottomNavigationBar: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OtpInput()));
            },
            child: MyButtons(name: "Continue")),
      ),
    );
  }
}

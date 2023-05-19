// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:suggest/my_widgets/widgets.dart';
import 'package:suggest/screens/home_screen.dart';

import '../my_widgets/the_widgets.dart';
import '../screens/idle.dart';

void main() => runApp(const CreateAccount());

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Top()),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 15),
                child: Text(
                  "Create an account🔒",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Enter your username, email & password.If you then you have to do forgot password",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: Text(
                  "Username",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              MyTextFields(hintPhrase: "Username"),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              MyTextFields(hintPhrase: "Email"),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              MyTextField(
                hintPhrase: 'Password',
                icon: GestureDetector(
                    //i'll fiz this later
                    onTap: () {
                     // print("object");
                    },
                    child: Icon(Icons.remove_red_eye)),
                obsecureText: false,
              ),
              MyTextField(
                hintPhrase: 'Confirm Password',
                icon: Icon(Icons.visibility_off_outlined),
                obsecureText: true,
              ),
              GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
		borderRadius: BorderRadius.circular(10),
	),
                              content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Color(0xFFFF3438),
                                    child: Icon(
                                      Icons.person,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "Sign up Successfull!",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFF3438)),
                                  ),
                                  Text(
                                    "Your account has been created\nPlease wait a moment we are\n     preparing for you...",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Image.asset("lib/assets/wait.png", height: 70,width: 70,),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFF3438),
                                          border: Border.all(width: 1,color: Color(0xFFFF3438)),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("Go to home",style: TextStyle(color: Colors.white),),
                                        )),
                                  ),
                                ],
                              ),
                            ));
                  },
                  child: MyButtons(name: 'Sign Up')),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
                child: Row(
                  children: [
                    MycheckBox(),
                    Text("Rember me?"),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

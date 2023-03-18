// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:suggest/get_started/create_account.dart';
import 'package:suggest/my_widgets/the_widgets.dart';
import 'package:suggest/my_widgets/widgets.dart';

void main() => runApp(const CompleteProfile());

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Top()),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 15),
                child: Text(
                  "Complete Your Profile📋",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Dont worry, only you can see your personaldata.No one else will be able to see it",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xFFEFEEEE),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Icon(
                          Icons.person,
                          color: Color(0xFFBDBDBD),
                          size: 55,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Full name"),
              ),
              MyTextFields(
                hintPhrase: "Full name",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Phone Number"),
              ),
              MyTextFields(
                hintPhrase: " +254 729822061",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Gender"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: DropDowns(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Date of Birth"),
              ),
              MyTextField(
                hintPhrase: "MM/DD/YYYY",
                icon: Icon(Icons.calendar_month), obsecureText: false,
              ),
             
            ],
          ),
        ),
        
      ),
      bottomNavigationBar:  GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccount()));
                  },
                  child: MyButtons(name: "Continue")),

      ),
      
    );
    
  }
}

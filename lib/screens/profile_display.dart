import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileDisplayPage extends StatefulWidget {
  const ProfileDisplayPage({super.key});

  @override
  State<ProfileDisplayPage> createState() => _ProfileDisplayPageState();
}

class _ProfileDisplayPageState extends State<ProfileDisplayPage> {
  final currentUer = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 100,
              ),
              Text(currentUer.email!),
            ],
          ),
        ),
      ),
    );
  }
}

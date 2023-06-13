import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suggest/get_started/country.dart';
import 'package:device_preview/device_preview.dart';
import 'package:suggest/providers.dart';
import 'package:suggest/screens/auth_page.dart';
import 'package:suggest/screens/home_screen.dart';
import 'package:suggest/screens/idle.dart';

Future <void> main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   options: FirebaseOptions(apiKey: "AIzaSyAid9y0KOikx9I8Z3Sj5OIYbA8cmt257hE", appId: "com.example.suggest", messagingSenderId: "330884313798-3t55831jf726f9lcu73lf18lff2003ho.apps.googleusercontent.com", projectId: "suggest-bb097")
  );
  runApp(
    DevicePreview(
      
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>Switcher()),
         ChangeNotifierProvider(create: (context)=>AddBookmarkProvider()),
      ],
      child: MaterialApp(

        home: AuthPage(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/home_background.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: SelectionArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Cookpedia🤞",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFFFE3438)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The best cooking and food recipes",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                Text(
                  "app of the century",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),

                
                Divider(
                  color: Colors.white12,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>IdleScreen())
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(Icons.lock),
                            SizedBox(
                              width: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Continue with Google",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Country()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFFED3034),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 70),
                      child: Center(
                        child: Text(
                          "Get started",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Already Have an Account", 
                        style: TextStyle(
                            color: Color(0xFFED3034),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

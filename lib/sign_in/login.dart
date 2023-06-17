// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:suggest/my_widgets/widgets.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final emailController = TextEditingController();

//   final passwordController = TextEditingController();

//   Future signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailController.text.trim(),
//         password: emailController.text.trim());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Align(
//           alignment: Alignment.center,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//             Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text("Email",style: TextStyle(fontWeight: FontWeight.w500),),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: TextField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                       border: UnderlineInputBorder(), hintText: 'email'),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text("Password",style: TextStyle(fontWeight: FontWeight.w500)),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: TextField(
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                       border: UnderlineInputBorder(), hintText: 'password'),
//                 ),
//               ),
//               GestureDetector(onTap: signIn, child: MyButtons(name: "Sign In"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:cinema_app/get_started/sign_up_page.dart';
// import 'package:cinema_app/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:suggest/sign_in/sign_in.dart';
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  void signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const TopRow(text: "Log in"),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Please Log in to continue",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Center(child: SizedBox(height: 200,child:LottieBuilder.network("https://assets6.lottiefiles.com/packages/lf20_puciaact.json") ,)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.grey.shade300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(color: Colors.grey.shade300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.black)
                    ),
                    child: Center(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // TheButtons(text: "Log in", ontap: signIn),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return SignIn();
                        })));
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

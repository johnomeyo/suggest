import 'package:flutter/material.dart';
import 'package:suggest/get_started/cooking_level.dart';
import 'package:suggest/my_widgets/the_widgets.dart';
import 'package:suggest/my_widgets/widgets.dart';

void main() => runApp(const Country());

class Country extends StatelessWidget {
  const Country({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                   
                      onTap:
                      () {
                        Navigator.pop(context);
                     
                    },
                    child: Top()),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 15),
                child: Text(
                  "Which country are you from🎌",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 20, left: 15),
              //   child: Text(
              //     "from? 🎌",
              //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Please select your country of origin for better recommendations.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 20,
              ),
      CustomSearchBar(hintText: 'Search for country', onChanged: (value) {  },),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView(children: [
                    Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Image.asset(
                          "lib/assets/af.png",
                          height: 30,
                          width: 40,
                        ),
                        title: Text("AF  Afghanistan"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Image.asset(
                          "lib/assets/algeria.png",
                          height: 30,
                          width: 40,
                        ),
                        title: Text("AL  Algeria"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Image.asset(
                          "lib/assets/andora.png",
                          height: 30,
                          width: 40,
                        ),
                        title: Text("AN  Andora"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Image.asset(
                          "lib/assets/angola.png",
                          height: 30,
                          width: 40,
                        ),
                        title: Text("DZ  Angola"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Image.asset(
                          "lib/assets/kenya.png",
                          height: 30,
                          width: 40,
                        ),
                        title: Text("KE  Kenya"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Image.asset(
                          "lib/assets/uganda.png",
                          height: 30,
                          width: 40,
                        ),
                        title: Text("UG  Uganda"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Image.asset(
                          "lib/assets/tz.png",
                          height: 30,
                          width: 40,
                        ),
                        title: Text("TZ  Tanzania"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                ),
              ),
             
            ],
          ),
        ),
        bottomNavigationBar:  GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CookingLevel()),
                    );
                  },
                  child: MyButtons(name: "Continue")),
        ),
      ),
    );
  }
}

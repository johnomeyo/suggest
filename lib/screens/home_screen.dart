import 'package:flutter/material.dart';
import 'package:suggest/essentials/notifications.dart';
import 'package:suggest/meals/breakfast/main_breakfast.dart';
import 'package:suggest/my_widgets/the_widgets.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.book_rounded,
            color: Color(0xFFFF3438),
          ),
          title: Text(
            "Mooncake",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Icon(
                  Icons.notifications_outlined,
                  size: 25,
                  color: Colors.black,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.bookmark_outline,
                size: 25,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFFFF3438),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            'Learn how to become a\nmaster chef right now',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 90,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
                                child: Text(
                                  "Read more",
                                  style: TextStyle(color: Color(0xFFFF3438)),
                                ),
                              )),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          height: 180,
                          right: 50,
                          child: Image.asset("lib/assets/chef.png")),
                      Positioned(
                          top: 0,
                          right: 0,
                          height: 100,
                          child: Image.asset("lib/assets/dish.png"))
                    ],
                  ),
                ),
              ),
             Headings(heading: "Breakfast"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainBreakfast()));
                    },
                    child: Row(
                      children: [
                        Recipes(
                          imagePath: 'lib/assets/piza.jpg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Recipes(
                          imagePath: 'lib/assets/berry.jpg',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Recipes(
                          imagePath: 'lib/assets/banana.jpg',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Lunch",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Color(0xFFFF3438),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Recipes(
                        imagePath: 'lib/assets/1.jpg',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Recipes(
                        imagePath: 'lib/assets/b.jpg',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Recipes(
                        imagePath: 'lib/assets/c.jpg',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Supper",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Color(0xFFFF3438),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Recipes(
                        imagePath: 'lib/assets/d.jpg',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Recipes(
                        imagePath: 'lib/assets/e.jpg',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Recipes(
                        imagePath: 'lib/assets/f.jpg',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        //bottomNavigationBar: MyNavBar(),
      ),
    );
  }
}

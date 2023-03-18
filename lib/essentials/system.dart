import 'package:flutter/material.dart';
import 'package:suggest/my_widgets/the_widgets.dart';

void main() => runApp(const SystemTab());
DateTime datetime = DateTime.now();
String dateStr = "${datetime.hour}:${datetime.minute}";
class SystemTab extends StatelessWidget {
  const SystemTab({super.key});

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        
        body: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffECF4FF),
                        child: Icon(
                          Icons.shield,
                          size: 25,
                          color: Color(0xff0084FD),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Security Update!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Today  |  "),
                              Text( dateStr),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFF3438),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("New",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
              ),
            ),

            PlainNotification(content: "Now you can add your favourite recipes to bookmarks.You can access it through home page-> bookmarks"),
                        Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffFFF8EC),
                        child: Icon(
                          Icons.bookmark,
                          size: 25,
                          color: Color(0xffFF9B00),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Security Update!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Today  |  "),
                              Text( dateStr),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFF3438),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("New",style: TextStyle(color: Colors.white),),
                        ),
                      )
                    ],
              ),
            ),
            PlainNotification(content: "Cookpedia has two factor authentication.Try to make your account more secure.")
          ],
        )
      ),
    );
  }
}

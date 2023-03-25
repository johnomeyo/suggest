import 'package:flutter/material.dart';

void main() {
  runApp(const HelpCenter());
}

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                "Help Center",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              elevation: 0,
              bottom: TabBar(
                  labelColor: Color(0xffFF3438),
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: "FAQs"),
                    Tab(text: "Contact Us"),
                  ]),
            ),
            body: TabBarView(
              children: [
                Column(
                  children: [ThisFieldInput()],
                ),

                //the 2nd tab
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactUs(
                      contact: "Contact Us",
                      image: 'lib/assets/headset.png',
                    ),
                    ContactUs(
                      contact: "Twitter",
                      image: 'lib/assets/redInstagram.png',
                    ),
                    ContactUs(
                      contact: "Instagram",
                      image: 'lib/assets/redFacebook.png',
                    ),
                    ContactUs(
                      contact: "Facebook",
                      image: 'lib/assets/redTwitter.png',
                    ),
                    ContactUs(
                      contact: "Website",
                      image: 'lib/assets/redWebsite.png',
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class ThisFieldInput extends StatelessWidget {
  const ThisFieldInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10)),
        child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.grey.shade400,
                suffixIcon: Icon(Icons.sort),
                suffixIconColor: Color(0xffFF3438),
                hintText: "Search")),
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
  final String image;
  final String contact;
  const ContactUs({super.key, required this.image, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Image.asset(
                image,
                height: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                contact,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

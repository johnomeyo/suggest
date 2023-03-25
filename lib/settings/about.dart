import 'package:flutter/material.dart';

void main() {
  runApp(const About());
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "About Mooncake",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/assets/chef.png",
                      height: 100,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Mooncake v5.8.2 ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              AboutItems(aboutItem: "Job Vacancy"),
              AboutItems(aboutItem: "Developer"),
              AboutItems(aboutItem: "Partner"),
              AboutItems(aboutItem: "Accessibility"),
              AboutItems(aboutItem: "Privacy Policy"),
              AboutItems(aboutItem: "Community Guides"),
              AboutItems(aboutItem: "Feedback"),
              AboutItems(aboutItem: "Rate Us"),
              AboutItems(aboutItem: "Visit out Website"),
              AboutItems(aboutItem: "Follow us on Social Media"),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutItems extends StatelessWidget {
  final String aboutItem;
  const AboutItems({super.key, required this.aboutItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [Text(aboutItem,style: TextStyle(fontWeight: FontWeight.w300),), Spacer(), Icon(Icons.navigate_next)],
      ),
    );
  }
}

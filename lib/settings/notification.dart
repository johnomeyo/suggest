import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suggest/my_widgets/my_widgets.dart';
import 'package:suggest/providers.dart';

void main() => runApp(const SettingNotification());

class SettingNotification extends StatelessWidget {
  const SettingNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       ChangeNotifierProvider(create: (context)=>Switcher()),
      ],
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Notification",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
            ),
            leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back, color: Colors.black)),
            elevation: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Notify me when....",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
              MyCustomWidget(text: "There is a new recommendation"),
              MyCustomWidget(text: "When someone follows me"),
              MyCustomWidget(text: "There are comments on my recipe"),
              MyCustomWidget(text: "Someone tagged in a comment"),
              MyCustomWidget(text: "Someone liked my comment"),
              MyCustomWidget(text: "Someone I follow publish a new recipe"),
              MyCustomWidget(text: "There is activation on my account"),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Divider(),
              ),
              Text(
                "System",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyCustomWidget(text: "About system"),
              MyCustomWidget(text: "Guidance and tips"),
              MyCustomWidget(text: "Participate in a survey"),
            ],
          ),
        ),
      ),
    );
  }
}

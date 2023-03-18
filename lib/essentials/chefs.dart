import 'package:flutter/material.dart';
import 'package:suggest/my_widgets/my_widgets.dart';

void main() => runApp(const ChefsPage());

class ChefsPage extends StatelessWidget {
  const ChefsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Top chefs",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back, color: Colors.black)),
          elevation: 0,
        ),
        body: ChefDisplay(),
      ),
    );
  }
}

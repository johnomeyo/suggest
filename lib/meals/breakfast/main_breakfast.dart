import 'package:flutter/material.dart';
import 'package:suggest/meals/flex_widgets.dart';

void main() => runApp(const MainBreakfast());

class MainBreakfast extends StatelessWidget {
  const MainBreakfast({super.key});

  static const String _title = 'Breakfast';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      title: _title,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                _title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
              leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              elevation: 0,
              //bottom: ,
              bottom: TabBar(labelColor: Colors.black, tabs: [
                Tab(text: "Quick Prep"),
                Tab(text: "Heavy Meals"),
              ]),
            ),
            body: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FoodGrid(),
                ),
                //The other tab's content
                Text("Heavy Meals"),
              ],
            )),
      ),
    );
  }
}

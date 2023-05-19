import 'package:flutter/material.dart';

import '../../my_widgets/them.dart';

class FollowersAndFollowing extends StatefulWidget {
  const FollowersAndFollowing({super.key});

  @override
  State<FollowersAndFollowing> createState() => _FollowersAndFollowingState();
}

class _FollowersAndFollowingState extends State<FollowersAndFollowing> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FollowAndFollowing extends StatefulWidget {
  const FollowAndFollowing({super.key});

  @override
  State<FollowAndFollowing> createState() => _FollowAndFollowingState();
}

class _FollowAndFollowingState extends State<FollowAndFollowing> {
  int index = 0;
  final List<Widget> _widgets = [Following(), Following()];
  bool b1 = false;
  bool b2 = false;

  @override
  Widget build(BuildContext context) {
    // bool b1 = false;
    // bool b2 = false;
    // bool b3 = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                    b1 = !b1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: b1 ? Colors.red : Colors.white,
                      border: Border.all(width: 1, color: Colors.pink),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text("FollowTiles",
                        style:
                            TextStyle(color: b1 ? Colors.white : Colors.red)),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                    b2 = !b2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: b1 ? Colors.red : Colors.white,
                      border: Border.all(width: 1, color: Colors.pink),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text("Followers",
                        style:
                            TextStyle(color: b2 ? Colors.white : Colors.red)),
                  ),
                ),
              ),
            ],
          ),
          _widgets[index]
        ],
      ),
    );
  }
}

class FollowTiles extends StatelessWidget {
  const FollowTiles(
      {super.key,
      required this.imagePath,
      required this.handle,
      required this.name});
  final String imagePath;
  final String handle;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: ClipOval(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                handle,
                style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
              )
            ],
          ),
          TheButton()
        ],
      ),
    );
  }
}

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FollowTiles(
            imagePath: "lib/assets/chef.png",
            handle: "Keanu Reaves",
            name: "@keanuReaves"),
        FollowTiles(
            imagePath: "lib/assets/chef.png",
            handle: "@jonathan",
            name: "John Wick"),
        FollowTiles(
            imagePath: "lib/assets/jesson.jpg",
            handle: "@jesson",
            name: "Jesson"),
        FollowTiles(
            imagePath: "lib/assets/febrian.jpg",
            handle: "@febrian",
            name: "Febrian Josh"),
      ],
    );
  }
}

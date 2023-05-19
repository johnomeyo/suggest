import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade200,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Image.network(
                          "https://img.icons8.com/color/256/tear-off-calendar.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 25,
                      child: Image.asset(
                        "lib/assets/burger.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Hi John, \n \nthis is your to-do list",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    //textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        border: InputBorder.none,
                        hintText: "Search Anything...",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Icon(
                              Icons.search,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Task Category",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "View more",
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 24),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Articles(),
                      SizedBox(
                        width: 20,
                      ),
                      Articles()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Image.asset(
                "lib/assets/chicken.png",
                height: 30,
                width: 30,
              ),
              Image.asset(
                "lib/assets/burger.png",
                height: 30,
                width: 30,
              ),
              Image.asset(
                "lib/assets/pizza.png",
                height: 30,
                width: 30,
              ),
              SizedBox(width: 20,),
              Text("Article Team",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(color: Colors.grey.shade400,),
          )
        ],
      ),
    );
  }
}

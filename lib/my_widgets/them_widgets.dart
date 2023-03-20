import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Serving extends StatelessWidget {
  String icon;
  final String upperText;
  final String lowerText;
  Serving(
      {super.key,
      required this.icon,
      required this.upperText,
      required this.lowerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              // Icon(icon),
              Text(upperText),
            ],
          ),
          Text(lowerText)
        ],
      ),
    );
  }
}

class Procedure extends StatelessWidget {
  const Procedure({super.key, required this.number, required this.whatToDo});
  final String number;
  final String whatToDo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffFFF4F8),
                child: Text(
                  number,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                whatToDo,
                style: TextStyle(fontSize: 20),
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class Comments extends StatefulWidget {
  const Comments({
    super.key,
    required this.avatarImage,
    required this.userName,
    required this.theComment,
    //required this.likeCount,
  });
  final String avatarImage;
  final String userName;
  final String theComment;
  // final int likeCount;

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  int likeCount = 300;
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 30,
                child: Image.asset(widget.avatarImage),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                widget.userName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Icon(Icons.more_horiz_rounded)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.theComment,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    isLoved ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      isLoved = !isLoved;
                      if (isLoved == false) {
                        likeCount--;
                      } else {
                        likeCount++;
                      }
                    });
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Text(likeCount.toString()),
                SizedBox(
                  width: 20,
                ),
                Text("1 month ago"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyFavoriteIcon extends StatefulWidget {
  const MyFavoriteIcon({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyFavoriteIconState createState() => _MyFavoriteIconState();
}

class _MyFavoriteIconState extends State<MyFavoriteIcon> {
  bool isLoved = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLoved ? Icons.heart_broken : Icons.favorite,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isLoved = !isLoved;
        });
      },
    );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _isPressed = true;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pink,
      ),
      onPressed: () {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          _isPressed ? 'Follow' : 'Following',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageUrl = [
      "lib/assets/whatsapp.png",
      "lib/assets/twitter.png",
      "lib/assets/facebook.png",
      "lib/assets/instagram.png",
      "lib/assets/yahoo.png",
      "lib/assets/tiktok.png",
      "lib/assets/messages.png",
      "lib/assets/wechat.png",
    ];
    List<String> socialNames = [
      "whatsapp",
      "Twitter",
      "Facebook",
      "Instagram",
      "Yahoo",
      "Tiktok",
      "Messages",
      "WeChat",
    ];
    return IconButton(
      icon: Icon(
        Icons.share,
        color: Colors.white,
      ),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          builder: (BuildContext context) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Share",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: GridView.builder(
                      itemCount: imageUrl.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 100,
                          decoration: BoxDecoration(
                              //color: Colors.indigo,
                              border:
                                  Border.all(width: 0, color: Colors.white)),
                          child: Column(
                            children: [
                              // Text("Share",style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                imageUrl[index],
                                height: 50,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                socialNames[index],
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

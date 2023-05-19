//import 'dart:io';
import 'package:flutter/material.dart';

//import "package:images_picker/images_picker.dart";

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                //openGallery();
                debugPrint("hey");
              },
              child: Text("Access Gallery"))
        ],
      ),
    );
  }
}

class GalleryAccess extends StatefulWidget {
  const GalleryAccess({super.key});

  @override
  State<GalleryAccess> createState() => _GalleryAccessState();
}

class _GalleryAccessState extends State<GalleryAccess>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// Future<void> openGallery(BuildContext context) async {
//   final picker = ImagePicker();
// final pickedFile = await picker.getImage(source: ImageSource.gallery);
 
// }


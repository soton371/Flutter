import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ThreePage extends StatefulWidget {
  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  image != null ? Image.file(image, width: 150, height: 150,) : Text("no pick image"),
                  FlatButton(
                      onPressed: ()=> pickImage(ImageSource.gallery),
                      child: Text("pick gallery"),
                    color: Colors.blue,
                  ),
                  FlatButton(
                    onPressed: ()=> pickImage(ImageSource.camera),
                    child: Text("pick camera"),
                    color: Colors.deepOrange,
                  )
                ],
              ),
            ),
          )
      ),
    );
  }

  File image;

  Future pickImage( ImageSource source) async {
    try{
      final image = await ImagePicker().pickImage(source: source);
      if(image == null) return;
      final temp_image = File(image.path);
      setState(() {
        this.image = temp_image;
      });

    }on PlatformException catch(e){
      print("Failed pick image from gallery: $e");
    }
  }

}

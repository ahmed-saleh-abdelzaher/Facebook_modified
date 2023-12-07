import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class User_Account extends StatefulWidget {
  const User_Account({super.key});

  @override
  State<User_Account> createState() => _User_AccountState();
}
class _User_AccountState extends State<User_Account> {
  XFile image = XFile(Image.asset('assets/images/ahmed.pg') as String);
  ImagePicker picker = ImagePicker();
  pickImage()async{
    var picker = await ImagePicker().pickImage(source: ImageSource.camera);
    if(picker != null){
      image = File(picker.path as String) as XFile;
    }else{
      image = Image.asset('assets/images/ahmed.jpg') as XFile;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                    ),
                    height: 235,
                    child: Image.asset('assets/images/wallpaper.jpg',),
                  ),
                  Container(
                    color: Color(0xff242527),
                    width: 235,
                    height: 75,
                  ),
                ],
              ),
              Positioned(
                right: 17,
                child: Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                        child:Icon(Icons.person_pin, color: Colors.white,),
                      ),
                    ),
                    SizedBox(height: 15,),
                    GestureDetector(
                      onTap: pickImage,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.camera_alt, color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 75,
                  child: Image.file(image.path as File),
                ),
                GestureDetector(
                  onTap: pickImage,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.camera_alt, color: Colors.black,),
                  ),
                ),
              ],
            ),
          ),
        ]
    );
  }
}
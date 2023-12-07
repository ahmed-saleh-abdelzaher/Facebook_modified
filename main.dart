import 'package:flutter/material.dart';
import 'home_page.dart';

void main(){
  runApp(FaceBook_App());
}

class FaceBook_App extends StatelessWidget {
  const FaceBook_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

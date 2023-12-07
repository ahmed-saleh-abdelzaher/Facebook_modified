import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'up_bar.dart';
import 'User.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      duration: Duration(seconds: 3),
      animationDuration: Duration(seconds: 2),
      childWidget: SizedBox(
        height: 200,
        width: 200,
        child: Image.asset("assets/images/wallpaper.jpg"),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (i){
            setState(() {
              index = i;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.blue,
        backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
          label: 'Home',
          icon: Icon(Icons.home_outlined, color: Colors.white,),
        ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
          label: 'Friends',
          icon: Icon(Icons.people_outline, color: Colors.white,),
        ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
          label: 'Videos',
          icon: Icon(Icons.ondemand_video, color: Colors.white,),
        ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
          label: 'Market',
          icon: Icon(Icons.storefront, color: Colors.white,),
        ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
          label: 'Notifications',
          icon: Icon(Icons.notifications_none_rounded, color: Colors.white,),
        ),
      ]),
      backgroundColor: Color(0xff242527),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Up_Bar(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 0.5,
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
          User_Account(),
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 25, right: 60, left: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Femi John Taiwo', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                Text('I’m the most awesome person I know. A professional Product, Website and UI/UX Designer + God fearing.',
                  style: TextStyle(fontSize: 12, color: Colors.white,),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 7,
                        child: IconButton(alignment: Alignment.center,onPressed: (){},icon: Icon(Icons.add, size: 10, color: Colors.blue,),),
                      ),
                      SizedBox(width: 5,),
                      Text('Add to story', style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                  child: Container(color: Color(0xff242527),),
                ),
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff58595A),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.edit, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text('Edit profile', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                  child: Container(color: Color(0xff242527),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 11.5),
                  decoration: BoxDecoration(
                    color: Color(0xff58595A),
                  ),
                  child: Text('...', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 20),
            child: SizedBox(
              height: 3,
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(250),
                    color: Color(0xff1F4C85),
                  ),
                  child: Text('Posts', style: TextStyle(color: Color(0xff68ABF1)),),
                ),
                SizedBox(width: 15,),
                Text('Reels', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                Text('Details', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Text('Managing Director at F.GPiX', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Went to Royal College Colombo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Text('Lives in Warri. Nigeria', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}

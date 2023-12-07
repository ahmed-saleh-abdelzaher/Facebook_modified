import 'package:flutter/material.dart';

class Up_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(),
                width: 75,
                height: 25,
                decoration: BoxDecoration(
                  color: Color(0xff2CB04D),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text('12:04', textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
              Row(
                children: [
                  Text('Femi John Taiwo', style: TextStyle(color: Colors.white, fontSize: 15),),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.redAccent,
                    child: Text('2', style: TextStyle(color: Colors.white, fontSize: 12),),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down, color: Colors.white,)),
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: Colors.white,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

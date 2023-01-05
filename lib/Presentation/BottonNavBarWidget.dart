import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 25,
            offset: Offset(10, 10),
          )]
      ),
      // color: Colors.brown,
      child: Row(
        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
        children: [

          IconButton(icon: Icon(Icons.home),color: Colors.black, iconSize: 25.r,onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Tapped Home Button"),
            ));

          },),
          IconButton(icon:  Icon(Icons.emoji_emotions_rounded), iconSize: 25.r,color: Colors.black, onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Tapped Smiley Button"),
            ));

          },),
          IconButton(icon:  Icon(Icons.chat),color: Colors.black, iconSize: 25.r, onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Tapped Chat Button"),
            ));

          },),
          IconButton(icon:  Icon(Icons.notifications_active),color: Colors.black, iconSize: 25.r, onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Tapped Notification Button"),
            ));

          },),
          IconButton(icon:  Icon(Icons.person_rounded),color: Colors.black, iconSize: 25.r, onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Tapped Profile Button"),
            ));
          },),
        ],
      ),
    );
  }
}

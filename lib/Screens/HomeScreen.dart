import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';

class HomeScreens extends StatelessWidget {
  static var RoutName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorrs.Fifth,

      appBar: AppBar(
        toolbarHeight: 100,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),

          )
        ),
        backgroundColor: Colorrs.Third,
        elevation: 0,
        centerTitle: true,
        title: Text("My Comm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
        leading: Image.asset("assets/photo/com.PNG",alignment: Alignment.centerRight,),
      ),
    );
  }
}

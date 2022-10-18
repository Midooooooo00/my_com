import 'package:flutter/material.dart';
import 'package:my_com/Tabs/Exams.dart';
import 'package:my_com/Tabs/Rewards.dart';

import '../Basic/Colorrs.dart';

class HomePage extends StatefulWidget {
  static var RoutName = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0 ;

  List <Widget> tab = [exam(),rewards()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorrs.Nine,
      appBar: AppBar(
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(MediaQuery.of(context).size.width, 55.0),
        )),
        backgroundColor: Colorrs.Fifth,
        elevation: 0,
        centerTitle: true,
        title:Image.asset(
          "assets/photo/black.PNG",
          alignment: Alignment.centerRight,
          width: MediaQuery.of(context).size.width* 0.25,
        ),
      ),
     body: (
         tab[currentindex]
     ),
         bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(canvasColor: Colorrs.Fifth),
         child: BottomNavigationBar(
         onTap: (currenttab){
          currentindex=currenttab;
          setState(() {
          });
        },
        selectedItemColor: Colorrs.First,
        selectedLabelStyle:  TextStyle(color: Colorrs.First,fontWeight: FontWeight.bold,),
        selectedIconTheme:  IconThemeData(color: Colorrs.First),
        unselectedIconTheme: IconThemeData(color: Colorrs.First) ,
        currentIndex: currentindex,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.book_sharp),label:"الامتحانات",),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on),label:"المكافات"),

        ],

      ),
     ),
    );
  }
}

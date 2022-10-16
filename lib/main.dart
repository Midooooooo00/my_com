import 'package:flutter/material.dart';
import 'package:my_com/Screens/HomeScreen.dart';

class My_Com extends StatelessWidget {
  const My_Com({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        initialRoute: "HomeScreen",
        routes: {
          "HomeScreen": (_) => HomeScreens(),
        }
    );
  }
}
main(){
  runApp(My_Com());
}

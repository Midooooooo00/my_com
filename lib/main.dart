import 'package:flutter/material.dart';
import 'package:my_com/Screens/SignInScreen.dart';
import 'Screens/HomePage.dart';

class My_Com extends StatelessWidget {
  const My_Com({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        initialRoute: "SignInScreen",
        routes: {
          "SignInScreen": (_) => SignInScreen(),
          "HomePage": (_) => HomePage(),
        }
    );
  }
}
main(){
  runApp(My_Com());
}

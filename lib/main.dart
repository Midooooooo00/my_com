import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_com/Screens/RegistrationScreen.dart';
import 'package:my_com/Screens/SignInScreen.dart';
import 'package:my_com/Screens/SplashScreen.dart';
import 'package:path_provider/path_provider.dart';
import 'Screens/HomePage.dart';
import 'package:hive/hive.dart';

class My_Com extends StatelessWidget {
  //mohammed safaa
  const My_Com({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        initialRoute: "Registration",
        routes: {
          "SignInScreen": (_) => SignInScreen(),
          "HomePage": (_) => HomePage(),
          "MyCustomWidget": (_) => MyCustomWidget(),
          "Registration": (_) => Registration(),
        }
    );
  }
}
main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Directory dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);
  Hive.openBox("mycom");
  runApp(My_Com());
}

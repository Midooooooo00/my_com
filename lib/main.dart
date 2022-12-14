import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_com/Model/SharedUser.dart';
import 'package:my_com/Screens/MenuScreen.dart';
import 'package:my_com/Screens/PermissionContenu.dart';
import 'package:my_com/Screens/PermissionScreen.dart';
import 'package:my_com/Screens/registration/RegistrationScreen.dart';
import 'package:my_com/Screens/login/SignInScreen.dart';
import 'package:my_com/Screens/SplashScreen.dart';
import 'package:path_provider/path_provider.dart';
import 'Screens/HomePage.dart';
import 'package:hive/hive.dart';

import 'firebase_options.dart';

class My_Com extends StatelessWidget {
   const My_Com({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        initialRoute: "MyCustomWidget",
        routes: {
          "SignInScreen": (_) => SignInScreen(),
          "HomePage": (_) => HomePage(),
          "MyCustomWidget": (_) => MyCustomWidget(),
          "Registration": (_) => Registration(),
          "MenuScreen": (_) => MenuScreen(),
          "permissionscreen": (_) => permissionscreen(),
          "permissioncontenu": (_) => permissiocontenu(),

        }
    );
  }
}
main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Directory dir = await getApplicationDocumentsDirectory();
       Hive.registerAdapter(ShareUserAdapter());
   await Hive.initFlutter(dir.path);
  runApp(My_Com());
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_com/Basic/DialogUtils.dart';

abstract class loginnavigator{
  void showloadingdailog({String Message="Loading....."});
  void hideloadingdailog();
  void showmassegedailog(String Message);
}
class loginviewmode extends  ChangeNotifier {
  loginnavigator? navigator;

  var authservice = FirebaseAuth.instance;

  void login(String email, String password) async {
    try {
      navigator?.showloadingdailog();
      var credential = await authservice.signInWithEmailAndPassword(
          email: email, password: password);
      navigator?.hideloadingdailog();
      navigator?.showmassegedailog(credential.user?.email??"");
      
    } on FirebaseAuthException catch (e) {
      navigator?.hideloadingdailog();
      navigator?.showmassegedailog("Please Check Your Email & Password");
    }
  }
}

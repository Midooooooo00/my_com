import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_com/Basic/base.dart';

abstract class regstrationnavigator extends BaseNavigator{

}


class regstrationviewmodel extends BaseViewModel<regstrationnavigator> {
 var auth =FirebaseAuth.instance ;
 void registar (String email, String password )async{
  navigator?.showloadingdailog();
  try{
   var credentials =await auth.createUserWithEmailAndPassword(email: email, password: password);
   navigator?.hideloadingdailog();
   navigator?.showmassegedailog(credentials.user?.phoneNumber??"Succesfuly");
  } on FirebaseAuthException catch (e) {
   navigator?.hideloadingdailog();
   if (e.code == 'weak-password') {
  navigator?.showmassegedailog("The password provided is too weak");
   } else if (e.code == 'email-already-in-use') {
    navigator?.showmassegedailog("This Account Already Registered");
   }
  } catch (e) {
   navigator?.hideloadingdailog();
   navigator?.showmassegedailog("Something Went Wrong, Please Try Again");
  }
 }
}
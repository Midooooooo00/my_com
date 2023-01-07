import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_com/Basic/base.dart';
import 'package:my_com/Data_Base/My_DataBase.dart';


abstract class loginnavigator extends BaseNavigator{
   void goto ();


}
class loginviewmode extends  BaseViewModel <loginnavigator> {
   var authservice = FirebaseAuth.instance;

  void login(String email, String password) async {
    try {
      navigator?.showloadingdailog();
      var credential = await authservice.signInWithEmailAndPassword(
          email: email, password: password);
      var retrivedUser = await MyDataBase.getUserByid(credential.user?.uid??"");
      navigator?.hideloadingdailog();
      if(retrivedUser == null){
      navigator?.showmassegedailog("User Not Found,Check Your Username & Password");
      }else {
        navigator?.goto();

      }

    } on FirebaseAuthException catch (e) {
      navigator?.showmassegedailog("Please Check Your Email & Password");

    }
  }
}

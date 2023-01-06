import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_com/Basic/base.dart';


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
      navigator?.hideloadingdailog();
      navigator?.showmassegedailog(credential.user?.phoneNumber??"Succesfuly");
      navigator?.goto();
      
    } on FirebaseAuthException catch (e) {
      navigator?.hideloadingdailog();
      navigator?.showmassegedailog("Please Check Your Email & Password");
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_com/Basic/base.dart';
import 'package:my_com/Data_Base/My_DataBase.dart';
import 'package:my_com/Model/My_User.dart';

abstract class regstrationnavigator extends BaseNavigator{

}


class regstrationviewmodel extends BaseViewModel<regstrationnavigator> {
 var auth =FirebaseAuth.instance ;
 void registar (String email, String password,String fullName , String usertybe )async{
  navigator?.showloadingdailog();
  try{
   var credentials =await auth.createUserWithEmailAndPassword(email: email, password: password);
   MyUser newUser = MyUser(
    id: credentials.user?.uid,
    fullname: fullName ,
    email: email ,
    usertype: usertybe ,
   );
  var insertedUser = await MyDataBase.insertuser(newUser);
     if(insertedUser != null){
      navigator?.hideloadingdailog();
      navigator?.showmassegedailog(credentials.user?.phoneNumber??"Succesfuly");
      email ="";
      password ="";
      fullName="";
     }

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
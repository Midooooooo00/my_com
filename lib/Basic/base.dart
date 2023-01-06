import 'package:flutter/cupertino.dart';

import 'DialogUtils.dart';

abstract class BaseNavigator {
  void showloadingdailog({String Message="Loading....."});
  void hideloadingdailog();
  void showmassegedailog(String Message);
}
class BaseViewModel <Nav extends BaseNavigator>extends ChangeNotifier{
    Nav? navigator;
}

abstract class BaseState <T extends StatefulWidget,VM extends BaseViewModel> extends State <T>
implements BaseNavigator{
 late VM viewmodel;
 @override
  void initState() {
    super.initState();
    viewmodel  = initVewModel() ;
    viewmodel.navigator = this;
  }
  VM initVewModel();

 @override
 void hideloadingdailog() {
   hideloading(context);
 }

 @override
 void showloadingdailog({String Message = "Loading....."}) {
   showloding(context, Message);
 }

 @override
 void showmassegedailog(String Message) {
   showMessege(context, Message);
 }
}
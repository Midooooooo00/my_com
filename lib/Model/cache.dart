import 'package:hive/hive.dart';
import 'package:my_com/Model/SharedUser.dart';

class cache {

  static void saveuser (ShareUser sharedusersave)async{
  var box =await Hive.openBox("LoginData");
  box.put("SaveUser", sharedusersave);
  print(sharedusersave.Name);
  print(sharedusersave.password);
  print(sharedusersave.username);
  box.close();
    
  }

  static Future <ShareUser?> getuser ()async{
  var box =await Hive.openBox<ShareUser>("LoginData");
  ShareUser? UserGet = box.get("SaveUser");

  return UserGet ;

  }
}
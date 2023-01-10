
import 'package:hive/hive.dart';

part 'SharedUser.g.dart';
@HiveType(typeId: 0)
class ShareUser{
  @HiveField(0)
  String Name;
  @HiveField(1)
  String username;
  @HiveField(2)
  String password;

  ShareUser({required this.Name,required this.username,required this.password});
}

///https://www.youtube.com/watch?v=kuf0RyIi1YI
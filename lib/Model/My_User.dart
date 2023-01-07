class MyUser {
  static const String collectionname = "Users" ;
  String? id;
  String? fullname;
  String? email;
  String? usertype;
  MyUser ({this.id,this.fullname,this.email,this.usertype});
  MyUser.fromFireStore(Map<String,dynamic>data):this(
    id: data ["id"],
    fullname: data ["fullname"],
    email: data ["email"],
    usertype: data ["usertype"],
  );
  Map<String,dynamic> toFireStore (){
    return {
      "id": id ,
      "fullname" : fullname,
      "email": email,
      "usertype": usertype ,
    };
  }
}
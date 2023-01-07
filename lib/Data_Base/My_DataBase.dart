import 'package:cloud_firestore/cloud_firestore.dart';

import '../Model/My_User.dart';

class MyDataBase {
  static CollectionReference<MyUser> getUserCollection(){
    return
    FirebaseFirestore.instance.collection(MyUser.collectionname)
        .withConverter<MyUser>(fromFirestore: (doc,_)=>MyUser.fromFireStore(doc.data()!),
        toFirestore: (user,options)=>user.toFireStore());
  }
  static Future<MyUser?> insertuser(MyUser user)async{
    var collection =getUserCollection();
    var docRef = await collection.doc(user.id);
    var res = await docRef.set(user);
    return user;
  }
  static Future<MyUser?> getUserByid (String uid)async{
    var collection =getUserCollection();
    var docRef = collection.doc(uid);
    var res = await docRef.get();
    return res.data();
  }
}
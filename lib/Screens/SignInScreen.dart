import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';
import 'package:my_com/Widget/textfieldcustom.dart';

class SignInScreen extends StatefulWidget {
  static var RoutName = "SignInScreen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool showpassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colorrs.Nine,

        appBar: AppBar(
          toolbarHeight: 100,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(MediaQuery
                    .of(context)
                    .size
                    .width, 55.0),
              )
          ),
          backgroundColor: Colorrs.Fifth,
          elevation: 0,
          centerTitle: true,
          title: Text("My Comm", style: TextStyle(color: Colorrs.First,
              fontWeight: FontWeight.bold,
              fontSize: 30),),
          actions: [
            Image.asset(
              "assets/photo/black.PNG", alignment: Alignment.centerRight,
              width: 75,),
          ],

        ),
        body: Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.95,
            width: MediaQuery
                .of(context)
                .size
                .width * 0.95,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                boxShadow: [ BoxShadow(
                    blurRadius: 25.0,
                    color: Colorrs.First,
                    blurStyle: BlurStyle.outer
                ),
                ],
                color: Colorrs.Third,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(MediaQuery
                      .of(context)
                      .size
                      .width, 100.0),
                  topRight: Radius.elliptical(MediaQuery
                      .of(context)
                      .size
                      .width, 100.0),
                  bottomLeft: Radius.elliptical(MediaQuery
                      .of(context)
                      .size
                      .width, 100.0),
                  bottomRight: Radius.elliptical(MediaQuery
                      .of(context)
                      .size
                      .width, 100.0),

                )
            ),
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text("Sign In",style: TextStyle(color:Colorrs.Nine,fontSize: 18,fontWeight: FontWeight.bold ),),
                    SizedBox(height: 20,),
                    textfieldcustom(labeltext:"Enter Your Email",security: false,icontag:Icon (Icons.keyboard_alt_outlined),),
                    SizedBox(height: 20,),
                    textfieldcustom(labeltext:"Password",security:showpassword==false ? true : false,icontag:Icon (Icons.password),),
                    SizedBox(height: 1,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Checkbox(
                            value: showpassword,
                            onChanged: (bool? value) {
                              setState(() {
                                showpassword = value!;
                              });
                            },

                          ),
                          Text("Show My Password",style: TextStyle(fontWeight: FontWeight.bold),),

                        ]
                    ),

                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, "HomePage");
                    }, child: Text("Sign In"),
                      style: ElevatedButton.styleFrom(
                      primary: Colorrs.Fourth,
                      onPrimary: Colorrs.Nine,
                      shape: StadiumBorder(),
                      shadowColor: Colorrs.First,
                      minimumSize: Size.fromHeight(50)
                    ),)
                  ],
                ),
              ),
            ),
        ),
    );

    }
}

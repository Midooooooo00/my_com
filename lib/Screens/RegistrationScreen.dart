import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';
import 'package:my_com/Widget/textfieldcustom.dart';

class Registration extends StatefulWidget {
  static var RoutName = "Registration";

  @override
  State<Registration> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<Registration> {
  bool showpassword = false;
  var formkey =GlobalKey <FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorrs.Nine,
      appBar: AppBar(
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(MediaQuery.of(context).size.width, 55.0),
            )),
        backgroundColor: Colorrs.Fifth,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "My Comm",
          style: TextStyle(
              color: Colorrs.First, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          Image.asset(
            "assets/photo/black.PNG",
            alignment: Alignment.centerRight,
            width: 75,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.95,
        width: MediaQuery.of(context).size.width * 0.95,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff2095f3), Color(0xff064170)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
            ,
            boxShadow: [
              BoxShadow(
                  blurRadius: 25.0,
                  color: Colorrs.First,
                  blurStyle: BlurStyle.outer),
            ],
            color: Colorrs.Third,
            borderRadius: BorderRadius.only(
              topLeft:
              Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              topRight:
              Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              bottomLeft:
              Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              bottomRight:
              Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
            )),
        child: SingleChildScrollView(
          child: Form(
            key:formkey,
            child: Padding(
              padding: const EdgeInsets.only(bottom:5.0,top: 0,right: 12,left: 12),
              child: Column(
                children: [
                  Text(
                    "Registration",
                    style: TextStyle(
                        color: Colorrs.Nine,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textfieldcustom(

                    labeltext: "Code ID",
                    security: false,
                    icontag: const Icon(Icons.keyboard_alt_outlined),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textfieldcustom(
                    labeltext: "Full Name",
                    security: false,
                    icontag: const Icon(Icons.keyboard_alt_outlined),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textfieldcustom(
                    labeltext: "Password",
                    security: showpassword == false ? true : false,
                    icontag: const Icon(Icons.key),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textfieldcustom(
                    labeltext: " Re Enter Password",
                    security: showpassword == false ? true : false,
                    icontag: const Icon(Icons.key),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Checkbox(
                      value: showpassword,
                      onChanged: (bool? value) {
                        setState(() {
                          showpassword = value!;
                        });
                      },
                    ),
                    const Text(
                      "Show Enter Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),

                  ElevatedButton(
                    onPressed: () {
                      createaccount();
                    },
                    child: const Text("Registration"),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colorrs.Nine,
                        backgroundColor: Colorrs.Fourth,
                        shape: const StadiumBorder(),
                        shadowColor: Colorrs.First,
                        minimumSize: const Size.fromHeight(50)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void createaccount() {
    if (formkey.currentState?.validate()==false){
      return;
    }
  }
}

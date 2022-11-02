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
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colorrs.Nine,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                textfieldcustom(
                  labeltext: "Enter Your Email",
                  security: false,
                  icontag: const Icon(Icons.keyboard_alt_outlined),
                ),
                const SizedBox(
                  height: 20,
                ),
                textfieldcustom(
                  labeltext: "Password",
                  security: showpassword == false ? true : false,
                  icontag: const Icon(Icons.password),
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
                    "Show My Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "HomePage");
                  },
                  child: const Text("Sign In"),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colorrs.Nine,
                      backgroundColor: Colorrs.Fourth,
                      shape: const StadiumBorder(),
                      shadowColor: Colorrs.First,
                      minimumSize: const Size.fromHeight(50)),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Programming By',
                  style: TextStyle(
                    color: Colorrs.Nine,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colorrs.Eight,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    width: MediaQuery.of(context).size.width*0.4,
                    height: MediaQuery.of(context).size.height*0.2,
                    child: Image.asset("assets/photo/dev.png",fit: BoxFit.fill,),

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

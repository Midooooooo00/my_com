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
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        // leading: ,

        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                // bottom: Radius.elliptical(MediaQuery.of(context).size.width, 55.0),
                )),
        backgroundColor: Colorrs.Fifth,
        // shadowColor: Colors.red,
        // foregroundColor: Colors.transparent,
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff2095f3), Color(0xff064170)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.78,
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 25.0,
                          color: Colorrs.First,
                          blurStyle: BlurStyle.outer),
                    ],
                    color: Colorrs.Third,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0),
                      topRight: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0),
                      bottomLeft: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0),
                      bottomRight: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0),
                    )),
                child: Form(
                    child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5.0, top: 0, right: 12, left: 12),
                        child: Column(children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colorrs.Nine,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          textfieldcustom(
                            errorname: "Your ID",
                            labeltext: "Your ID",
                            security: false,
                            icontag:
                                const Icon(Icons.keyboard_alt_outlined),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          textfieldcustom(
                            errorname: "Password",
                            labeltext: "Password",
                            security: showpassword == false ? true : false,
                            icontag: const Icon(Icons.password),
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "MenuScreen");
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
                            height: 15,
                          ),
                          Text(
                            'Programming By',
                            style: TextStyle(
                              color: Colorrs.Nine,
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Container(
                            decoration: BoxDecoration(
                                color: Colorrs.Eight,
                                borderRadius: BorderRadius.circular(30)),
                            width:
                                MediaQuery.of(context).size.width * 0.4 - 5,
                            height:
                                MediaQuery.of(context).size.height * 0.2 -
                                    5,
                            child: Image.asset(
                              "assets/photo/dev.png",
                              fit: BoxFit.fill,
                            ),
                          )),
                          const SizedBox(
                            height: 15,
                          ),

                          
                        ])))),
          ]),
        ),
      ),
    );
  }

  void createaccount() {
    if (formkey.currentState?.validate() == false) {
      return;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../Basic/Colorrs.dart';
import '../Widget/textfieldcustom.dart';

class permissiocontenu extends StatefulWidget {
  static var RoutName = "permissioncontenu";

  @override
  State<permissiocontenu> createState() => _permissiocontenuState();
}

class _permissiocontenuState extends State<permissiocontenu> {
  LocaleType lang = LocaleType.ar;

  DateTime selectedate = DateTime.now();
  var formkey = GlobalKey<FormState>();
  var locition =  TextEditingController();
  var locitionto =  TextEditingController();
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
            ),
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
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colorrs.Third,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                textfieldcustom(
                   cont:locition ,
                    labeltext: "جهة المأمورية",
                    security: false,
                    icontag: const Icon(Icons.place),
                    errorname: "جهة المأمورية"),
                const SizedBox(
                  height: 15,
                ),
                textfieldcustom(
                    cont:locitionto ,
                    labeltext: "الغرض من المأمورية",
                    security: false,
                    icontag: const Icon(Icons.place),
                    errorname: "الغرض من المأمورية"),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colorrs.Six,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "${selectedate.day}/${selectedate.month}/${selectedate.year}",
                        style: TextStyle(
                            color: Colorrs.Ten,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          showclenderto();
                          setState(() {});
                        },
                        icon: const Icon(Icons.date_range_outlined)),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colorrs.Six,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                          "${selectedate.day}/${selectedate.month}/${selectedate.year}",
                        style: TextStyle(
                            color: Colorrs.Ten,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          showclenderto();
                          setState(() {});
                        },
                        icon: const Icon(Icons.date_range_outlined)),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    Sendtogo();
                  },
                  child: const Text("Send"),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colorrs.Nine,
                      backgroundColor: Colorrs.Fourth,
                      shape: const StadiumBorder(),
                      shadowColor: Colorrs.First,
                      minimumSize: const Size.fromHeight(50)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  showclenderto() {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(2022, 1, 1),
        maxTime: DateTime(2050, 12, 1), onConfirm: (date) {
      selectedate = date;
      setState(() {});
    }, currentTime: selectedate, locale: lang);
  }
  void Sendtogo() {
    if (formkey.currentState?.validate() == false) {
      return;
    }
  }
}

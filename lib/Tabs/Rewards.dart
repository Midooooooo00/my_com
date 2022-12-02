import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:hive/hive.dart';

import 'package:my_com/Widget/datestyle.dart';
import '../Basic/Colorrs.dart';


class rewards extends StatefulWidget {


  @override

  State<rewards> createState() => _rewardsState();
}
class _rewardsState extends State<rewards> {
  String titletext = "";
  String Description = "";
  LocaleType lang = LocaleType.ar;
  DateTime selectedate = DateTime.now();
  late Box mybox;
  void initState(){
    super.initState();
    mybox=Hive.box("mycom");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width:double.infinity,
        padding: const EdgeInsets.all(20),
       // margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 25.0,
                  color: Colorrs.First,
                  blurStyle: BlurStyle.outer),
            ],
            color: Colorrs.Third,
          gradient: const LinearGradient(
          colors: [Color(0xff2095f3), Color(0xff064170)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
            ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    showclender();
                  },
                  onDoubleTap: () {
                    selectedate = DateTime.now();
                    setState(() {});
                  },
                  child: Text(
                    "اختر شهر المكافأة", style: TextStyle(color: Colorrs.First,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  )),
              const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                children: [
        
              const SizedBox(height: 5,),
        
                  datestyle(Datename: "8", Monthname: "${selectedate.month}",Yearname: "${selectedate.year}",),
        
                ],
              )
        
            ],
          ),
        ));
  }

  void showclender() {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(2018, 1),
        maxTime: DateTime(2050, 12),
        onConfirm: (date) {
          selectedate = date;
          setState(() {});
        },
        currentTime: selectedate,
        locale: lang);
  }

}



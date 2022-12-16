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
  String? monthnametext;
  List<String> monthnam = [
    "يناير",
    "فبراير",
    "مارس",
    "ابريل",
    "مايو",
    "يونيو",
    "يوليو",
    "أغسطس",
    "سبتمبر",
    "أكتوبر",
    "نوفمبر",
    "ديسمبر"
  ];

  void initState() {
    super.initState();
    mybox = Hive.box("mycom");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
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
            )),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        showclender();
                      },
                      onDoubleTap: () {
                        doubleclick();
                      },
                      child: const Icon(Icons.date_range,
                          size: 35, color: Color(0xFFCAF0F8))),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "اختر شهر المكافأة",
                    style: TextStyle(
                        color: Colorrs.First,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return datestyle(
                            Datename: "8",
                            Monthname: monthnam[selectedate.month.toInt() - 1],
                            Yearname: "${selectedate.year}",
                          );
                        },
                      ),
                    )
                  ])
            ],
          ),
        ));
  }

  void doubleclick() {
    selectedate = DateTime.now();
    setState(() {});
  }

  void showclender() {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(2022, 1),
        maxTime: DateTime(2050, 12), onConfirm: (date) {
      selectedate = date;
      setState(() {});
    }, currentTime: selectedate, locale: lang);
  }

}

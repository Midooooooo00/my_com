import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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

  @override
  Widget build(BuildContext context) {
    return Container(
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
            boxShadow: [
              BoxShadow(
                  blurRadius: 25.0,
                  color: Colorrs.First,
                  blurStyle: BlurStyle.outer),
            ],
            color: Colorrs.Third,
            borderRadius: BorderRadius.only(
              topLeft:
              Radius.elliptical(MediaQuery
                  .of(context)
                  .size
                  .width, 100.0),
              topRight:
              Radius.elliptical(MediaQuery
                  .of(context)
                  .size
                  .width, 100.0),
              bottomLeft:
              Radius.elliptical(MediaQuery
                  .of(context)
                  .size
                  .width, 100.0),
              bottomRight:
              Radius.elliptical(MediaQuery
                  .of(context)
                  .size
                  .width, 100.0),
            )),
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
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colorrs.Six,),
               borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text("التاريخ المحدد", style: TextStyle(color: Colorrs.Nine,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
                  Text(
                   "الشهر المحدد",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colorrs.Ten),
                    textAlign: TextAlign.center,),

              Text(
                "${selectedate.month}",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colorrs.Nine),
                textAlign: TextAlign.center,),
                  Text(
                    "العام المحدد",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colorrs.Ten),
                    textAlign: TextAlign.center,),
                  Text(
                    "${selectedate.year}",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colorrs.Nine),
                    textAlign: TextAlign.center,),
                ],
              ),
            )

          ],
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



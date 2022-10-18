import 'package:flutter/material.dart';
import 'package:simple_month_year_picker/simple_month_year_picker.dart';

import '../Basic/Colorrs.dart';

class rewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.95,
        width: MediaQuery.of(context).size.width * 0.95,
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
                  Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              topRight:
                  Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              bottomLeft:
                  Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              bottomRight:
                  Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
            )),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await SimpleMonthYearPicker.showMonthYearPickerDialog(
                  context: context,
                  titleFontFamily: 'Rajdhani',
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colorrs.Nine,
                backgroundColor: Colorrs.Fourth,
                shape: const StadiumBorder(),
                shadowColor: Colorrs.First,
              ),
              child: const Text(
                'اختر شهر المكافاة',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          ],
        ));
  }
}

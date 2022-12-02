import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';
import 'package:my_com/Widget/containerstyly.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class MenuScreen extends StatelessWidget {
  static var RoutName = "MenuScreen";
  final List<String> titles =
  ["المكافات", "الامتحانات ", "طلب تصريح", "طلب مأمورية", "تسجيل يوزر", "معلومات", ];
  final List<Widget> Pages = [
    containerstyly(Colors1: Colorrs.Fifth, Colors2: Colorrs.Fourth,  imagename: ""),
    containerstyly(Colors1: Colorrs.Eight, Colors2: Colorrs.Seven, imagename: ""),
    containerstyly(Colors1: Colorrs.Third, Colors2: Colorrs.Second, imagename: ""),
    containerstyly(Colors1: Colorrs.Nine, Colors2: Colorrs.Eight,  imagename: ""),
    containerstyly(Colors1: Colorrs.Fourth, Colors2: Colorrs.Third,  imagename: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorrs.Nine,
      body: SafeArea(
        child: Column(

         children: <Widget>[
            Expanded(
              child: Container(
                child: InkWell(
                  onTap: (){

                  },
                  child: VerticalCardPager(
                      titles: titles,  // required
                      images: Pages,  // required
                      textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), // optional
                      onPageChanged: (page) { // optional
                      },
                      onSelectedItem: (index) { // optional
                      },
                      initialPage: 0, // optional
                      align : ALIGN.CENTER // optional
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

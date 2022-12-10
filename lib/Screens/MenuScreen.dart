import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';
import 'package:my_com/Widget/containerstyly.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class MenuScreen extends StatelessWidget {
  static var RoutName = "MenuScreen";
  final List<String> titles = [
    "الامتحانات والمكافات",
    "تصريح / مأمورية",
    "اجازة",
    "تسجيل يوزر",
    "معلومات"
  ];
  final List<Widget> Pages = [
    containerstyly(
        Colors1: Colorrs.Fifth,
        Colors2: Colorrs.Fourth,
        imagename: "assets/photo/reward.jpeg"),
    containerstyly(
        Colors1: Colorrs.Nine,
        Colors2: Colorrs.Eight,
        imagename: "assets/photo/dev.png"),
    containerstyly(
        Colors1: Colorrs.Nine,
        Colors2: Colorrs.Eight,
        imagename: "assets/photo/dev.png"),
    containerstyly(
        Colors1: Colorrs.Fourth,
        Colors2: Colorrs.Third,
        imagename: "assets/photo/11.jpg"),
    containerstyly(
        Colors1: Colorrs.Six,
        Colors2: Colorrs.Fifth,
        imagename: "assets/photo/notes.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorrs.Third,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: VerticalCardPager(
                titles: titles,
                // required
                images: Pages,
                // required
                textStyle: const TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold),
                onPageChanged: (page) {},
                onSelectedItem: (index) {
                  // optional
                  if (index == 0) {
                    Navigator.pushNamed(context, "HomePage");
                  } else if (index == 1) {
                    Navigator.pushNamed(context, "HomePage");
                  } else if (index == 2) {
                    Navigator.pushNamed(context, "SignInScreen");
                  } else if (index == 3) {
                    Navigator.pushNamed(context, "Registration");
                  } else if (index == 4) {
                    Navigator.pushNamed(context, "Registration");
                  }
                },
                initialPage: 0,
                // optional
                align: ALIGN.CENTER,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

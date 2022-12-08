import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';
import 'package:my_com/Widget/containerstyly.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class MenuScreen extends StatelessWidget {
  static var RoutName = "MenuScreen";
  final List<String> titles =
  ["الامتحانات والمكافات", "تصريح / مأمورية", "اجازة", "تسجيل يوزر", "معلومات" ];
  final List<Widget> Pages = [
    containerstyly(Colors1: Colorrs.Fifth, Colors2: Colorrs.Fourth,  imagename: "assets/photo/reward.jpeg"),
    containerstyly(Colors1: Colorrs.Nine, Colors2: Colorrs.Eight, imagename: "assets/photo/dev.png"),
    containerstyly(Colors1: Colorrs.Nine, Colors2: Colorrs.Eight,  imagename: "assets/photo/dev.png"),
    containerstyly(Colors1: Colorrs.Fourth, Colors2: Colorrs.Third,  imagename: "assets/photo/11.jpg"),
    containerstyly(Colors1: Colorrs.Six, Colors2: Colorrs.Fifth,  imagename: "assets/photo/notes.png")
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
     backgroundColor: Colorrs.Third,
      appBar: AppBar(
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(MediaQuery.of(context).size.width, 55.0),
            )),
        backgroundColor: Colorrs.Fifth,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          "assets/photo/black.PNG",
          alignment: Alignment.centerRight,
          width: MediaQuery.of(context).size.width * 0.25,
        ),
      ),
      body: SafeArea(
        child: Column(
         children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: VerticalCardPager(
                    titles: titles,  // required
                    images: Pages,  // required
                     textStyle:TextStyle(color: Colorrs.Ten, fontWeight: FontWeight.bold), // optional
                    onPageChanged: (page) {
                     // optional
                    },
                    onSelectedItem: (index) { // optional
                      if(index==0){
                        Navigator.pushNamed(context, "HomePage");
                      }
                      else if(index==1){
                        Navigator.pushNamed(context, "HomePage");

                      }
                      else if(index==2){
                        Navigator.pushNamed(context, "SignInScreen");
                      }
                      else if(index==3){
                        Navigator.pushNamed(context, "Registration");
                      }
                      else if(index==4){
                        Navigator.pushNamed(context, "Registration");
                      }

                    },
                    initialPage: 0, // optional
                    align : ALIGN.CENTER, // optional

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

import 'package:flutter/material.dart';
import 'package:my_com/Widget/rewardshow.dart';
import '../Basic/Colorrs.dart';

class exam extends StatelessWidget {
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            rewardshaw(),
            rewardshaw(),
            rewardshaw(),
          ],
        ),
      ),
    );
  }
}

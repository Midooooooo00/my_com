import 'package:flutter/material.dart';

class containerstyly extends StatelessWidget {
  Color Colors1;
  Color Colors2;
  String imagename;
  containerstyly
      ({required this.Colors1,required this.Colors2,required this.imagename});
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagename),fit: BoxFit.fill,
              ),
    boxShadow: [
    BoxShadow(
    blurRadius: 0.3,
    color:Colors1,
    blurStyle: BlurStyle.outer),
    ],
    color: Colors2,
    borderRadius: BorderRadius.only(
    topLeft:
    Radius.elliptical(MediaQuery.of(context).size.width, 0.2),
    topRight:
    Radius.elliptical(MediaQuery.of(context).size.width,0.2),
    bottomLeft:
    Radius.elliptical(MediaQuery.of(context).size.width, 0.2),
    bottomRight:
    Radius.elliptical(MediaQuery.of(context).size.width, 0.2),
    )),

    );

  }
}

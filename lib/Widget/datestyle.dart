import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';

class datestyle extends StatelessWidget {
  String Monthname;

  String Datename;
  String Yearname;

  datestyle(
      {required this.Datename,
      required this.Monthname,
      required this.Yearname});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      width: 120,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            Monthname,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colorrs.First),
            textAlign: TextAlign.end,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            Datename,
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colorrs.Ten),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            Yearname,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colorrs.First),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}

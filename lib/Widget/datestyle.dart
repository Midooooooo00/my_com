import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';

class datestyle extends StatefulWidget {
  String Monthname;
  String Datename;
  String Yearname;

  datestyle({
    required this.Datename,
    required this.Monthname,
    required this.Yearname,
  });

  @override
  State<datestyle> createState() => _datestyleState();
}

class _datestyleState extends State<datestyle> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF03045E),
                borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
            width: double.infinity,
            child: const Icon(Icons.date_range,
                size: 20, color: Color(0xFFCAF0F8)),
            padding: const EdgeInsets.all(12),
          ),
          Container(
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: Color(0xFF48CAE4),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    width: 5,
                    color: Colorrs.Ten,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Text(
                        widget.Yearname,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colorrs.First),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(
                        widget.Datename,
                        style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            color: Colorrs.Ten),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(
                        widget.Monthname,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colorrs.First),
                      ),
                    ],
                  ),
                ],
              )),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:my_com/Widget/textfieldcustom.dart';
import '../Basic/Colorrs.dart';

class contanertoshow extends StatelessWidget {
  Widget firsdate;
  String seconddate;
  Function chosedate;

  contanertoshow(
      {required this.firsdate,
      required this.seconddate,
      required this.chosedate});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colorrs.Third,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                child: textfieldcustom(
                    labeltext: "جهة المأمورية",
                    security: false,
                    icontag: const Icon(Icons.place),
                    errorname: "جهة المأمورية"),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: textfieldcustom(
                    labeltext: "الغرض من المأمورية",
                    security: false,
                    icontag: const Icon(Icons.place),
                    errorname: "الغرض من المأمورية"),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colorrs.Six,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "$firsdate",
                          style: TextStyle(
                              color: Colorrs.Ten,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          chosedate;
                        },
                        icon: const Icon(Icons.date_range_outlined)),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colorrs.Six,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "$seconddate",
                        style: TextStyle(
                            color: Colorrs.Ten,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          chosedate;
                        },
                        icon: const Icon(Icons.date_range_outlined)),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

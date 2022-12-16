import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:my_com/Basic/Colorrs.dart';
import 'package:my_com/Widget/contanertoshow.dart';
import 'package:my_com/Widget/textfieldcustom.dart';
import 'package:my_com/Widget/visablerow.dart';

import '../Widget/datestyle.dart';

class permissionscreen extends StatefulWidget {
  static var RoutName = "permissionscreen";

  @override
  State<permissionscreen> createState() => _permissionscreenState();
}

class _permissionscreenState extends State<permissionscreen> {
  final List<String> items = [
    'تصريح صباحي',
    'تصريح مسائي',
    'مأمورية',
  ];
  final List<String> itemms = [
    'التخطيط والتطوير',
    'المكافات والامتحانات',
    'شئون العاملين',
    'الاستحقاقات',
    'الدراسات العليا',
    'الميزانية',
    'المخازن والمشتريات',
    'الحسابات',
    'التحصيل الالكتروني',
    'العلاقات العامة والثقافية',
    'الصيانة',
    'الارشيف',
    'شئون اعضاء هيئة التدريس',
    'الاضابير',
    'المخزون السلعي',
    'السكرتارية',
    'الخريجين',
    'رعاية الشباب',
    'IT',
    'الادارة الطبية',
    'الحاسب الالي',
    'مركز الدراسات والبحوث',
    'العمال',
  ];
  String? selectedValue;
  String? seelectedValue;
  bool isvisable = false;
  bool contanershow = false;
  LocaleType lang = LocaleType.ar;
  DateTime selectedate = DateTime.now();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorrs.Nine,
      appBar: AppBar(
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(MediaQuery
                  .of(context)
                  .size
                  .width, 55.0),
            )),
        backgroundColor: Colorrs.Fifth,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "My Comm",
          style: TextStyle(
              color: Colorrs.First, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          Image.asset(
            "assets/photo/black.PNG",
            alignment: Alignment.centerRight,
            width: 75,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.95,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.95,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xff2095f3), Color(0xff064170)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
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
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 5.0, top: 0, right: 12, left: 12),
              child: Column(
                children: [
                  Text(
                    "تصريح / مأمورية",
                    style: TextStyle(
                        color: Colorrs.Nine,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  textfieldcustom(
                    errorname: "كود الموظف",
                    labeltext: "كود الموظف",
                    security: false,
                    icontag: const Icon(Icons.numbers),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  textfieldcustom(
                    errorname: "اسم الموظف",
                    labeltext: "اسم الموظف رباعي",
                    security: false,
                    icontag: const Icon(Icons.keyboard_alt_outlined),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.list,
                            size: 16,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'اختر القسم',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFCAF0F8),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: itemms
                          .map((item) =>
                          DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFCAF0F8),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_downward_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: const Color(0xFFCAF0F8),
                      iconDisabledColor: Colors.grey,
                      buttonHeight: 50,
                      buttonWidth: MediaQuery
                          .of(context)
                          .size
                          .width * 0.8,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: const Color(0xFF0077B6),
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      dropdownMaxHeight: 200,
                      dropdownWidth: 200,
                      dropdownPadding: null,
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xFF0077B6),
                      ),
                      dropdownElevation: 8,
                      scrollbarRadius: const Radius.circular(40),
                      scrollbarThickness: 6,
                      scrollbarAlwaysShow: true,
                      offset: const Offset(-20, 0),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.list,
                            size: 16,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'نوع الطلب',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFCAF0F8),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items
                          .map((items) =>
                          DropdownMenuItem<String>(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFCAF0F8),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                          .toList(),
                      value: seelectedValue,
                      onChanged: (value) {
                        if (value == "مأمورية") {
                          contanershow = true;
                          setState(() {
                            visablerow;
                            seelectedValue = value as String;
                          });
                        } else
                          contanershow = false;
                        setState(() {
                          seelectedValue = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_downward_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: const Color(0xFFCAF0F8),
                      iconDisabledColor: Colors.grey,
                      buttonHeight: 50,
                      buttonWidth: MediaQuery
                          .of(context)
                          .size
                          .width * 0.8,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: const Color(0xFF0077B6),
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      dropdownMaxHeight: 200,
                      dropdownWidth: 200,
                      dropdownPadding: null,
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xFF0077B6),
                      ),
                      dropdownElevation: 8,
                      scrollbarRadius: const Radius.circular(40),
                      scrollbarThickness: 6,
                      scrollbarAlwaysShow: true,
                      offset: const Offset(-20, 0),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  contanershow == true ?
                  contanertoshow(
                    chosedate:showclenderto() ,
                    firsdate:
                    datestyle(
                      Datename: "${selectedate.day}",
                      Monthname: "${selectedate.month}",
                      Yearname: "${selectedate.year}",
                    ),
                    seconddate: "",
                  ) :
                  const SizedBox( height: 5,),
                  const SizedBox(height: 5,),
                  ElevatedButton(
                    onPressed: () {
                      go();
                    },
                    child: const Text(
                      "Send",
                      style: TextStyle(color: Color(0xFFCAF0F8), fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colorrs.Nine,
                        backgroundColor: Colorrs.Fourth,
                        shape: const StadiumBorder(),
                        shadowColor: Colorrs.First,
                        minimumSize: const Size.fromHeight(50)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void go() {}

  showclenderto() {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(2022, 1,1),
        maxTime: DateTime(2050, 12,1),
        onConfirm: (date) {
          selectedate = date;
          setState(() {});
        },
        currentTime: selectedate,
        locale: lang);
  }

}
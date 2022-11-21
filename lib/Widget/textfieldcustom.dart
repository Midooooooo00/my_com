import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';
class  textfieldcustom extends StatelessWidget  {
  String labeltext;
  bool security;
  Icon icontag;
  textfieldcustom({required this.labeltext,required this.security,required this.icontag});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        
        obscureText:security ,
        decoration: InputDecoration(
          suffixIcon:icontag,
          labelText: (labeltext),
          labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colorrs.Nine
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Colorrs.Seven,
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colorrs.Eight,
              )
          ),
        )
    );
  }
 }

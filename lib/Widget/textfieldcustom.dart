import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';
class  textfieldcustom extends StatelessWidget  {
  String labeltext;
  String errorname;
  bool security;
  Icon icontag;


  textfieldcustom({required this.labeltext,required this.security,required this.icontag,required this.errorname});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator:(text){
          if(text==null || text.trim().isEmpty){
            return "Please Enter $errorname";
          }
        },
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

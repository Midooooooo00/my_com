import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';

class HomeScreens extends StatelessWidget {
  static var RoutName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorrs.Fourth,
        elevation: 0,
      ),
    );
  }
}

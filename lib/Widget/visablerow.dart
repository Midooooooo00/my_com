import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class visablerow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Text("صباح الخير",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.amber),),
        ],
      );
  }
}

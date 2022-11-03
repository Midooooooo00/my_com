import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_com/Basic/Colorrs.dart';

class rewardshaw extends StatefulWidget {
  @override
  _rewardshaw createState() => _rewardshaw();
}

class _rewardshaw extends State<rewardshaw> {
  bool isTapped = true;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
           const SizedBox(
             height: 25,
           ),
           InkWell(
             highlightColor: Colors.transparent,
             splashColor: Colors.transparent,
             onTap: () {
               setState(() {
                 isTapped = !isTapped;
               });
             },
             onHighlightChanged: (value) {
               setState(() {
                 isExpanded = value;
               });
             },
             child: AnimatedContainer(
               duration: const Duration(seconds: 1),
               curve: Curves.fastLinearToSlowEaseIn,
               height:
               isTapped ? isExpanded ? 65 : 70 : isExpanded ? 225 : 230,
               width: isExpanded ? 385 : 390,
               decoration: BoxDecoration(
                 color:Colorrs.Third,
                 borderRadius: const BorderRadius.all(Radius.circular(20)),
                 boxShadow: [
                   BoxShadow(
                     color:Colorrs.First.withOpacity(0.5),
                     blurRadius: 20,
                     offset: const Offset(0, 10),
                   ),
                 ],
               ),
               padding: const EdgeInsets.all(20),
               child: isTapped
                   ? Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const Text(
                         'Hi',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 22,
                             fontWeight: FontWeight.w400),
                       ),
                       Icon(
                         isTapped
                             ? Icons.keyboard_arrow_down
                             : Icons.keyboard_arrow_up,
                         color: Colors.white,
                         size: 27,
                       ),
                     ],
                   ),
                 ],
               )
                   : Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const Text(
                         'HI',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 22,
                             fontWeight: FontWeight.w400),
                       ),
                       Icon(
                         isTapped
                             ? Icons.keyboard_arrow_down
                             : Icons.keyboard_arrow_up,
                         color: Colors.white,
                         size: 27,
                       ),
                     ],
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                   Text(
                     isTapped
                         ? ''
                         : '111',
                     style: TextStyle(
                       color: Colors.white.withOpacity(0.9),
                       fontSize: 17,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ],
               ),
             ),
           ),
         ],
       );

  }
}
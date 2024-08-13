import 'package:flutter/material.dart';


class ReusableCode extends StatelessWidget {
  ReusableCode({ required this.cardChild ,this.colour});
  final Widget cardChild;
   final colour;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,

      margin: EdgeInsets.all(15.0),
      //  padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      color: colour,
      ),
    );
  }
}
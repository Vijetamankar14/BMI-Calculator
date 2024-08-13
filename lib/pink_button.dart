import 'package:flutter/material.dart';


class PinkButtons extends StatelessWidget {
  PinkButtons({required this.buttonText, required this.onTap});

  late final String buttonText;
  late final  onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
         margin: EdgeInsets.only(top:10.0),
        padding: EdgeInsets.only(bottom:10.0),
        width: double.infinity,
        height: 70.0,
        color: Colors.pink.shade400,
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          
          ),
        ),
       
       
      ),
    );
  }
}

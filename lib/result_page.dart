//import 'package:bmi_calculator/constant.dart';
//import 'package:bmi_calculator/constant.dart';
//import 'package:bmi_calculator/reuseable_card.dart';
//import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'pink_button.dart';

// ignore: must_be_immutable
class ResultPage extends StatelessWidget {
  ResultPage( {super.key, required this.bmiResult, required this.resultText, required this.suggestion});

  late String bmiResult;
  late String resultText;
  late String suggestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
           // padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Your Result",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
           // padding: EdgeInsets.all(5.0),
            //alignment: Alignment.bottomLeft,
            //margin: EdgeInsets.all(10.0),
            height: 500.0,
            width: double.infinity,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: kInactiveCardColor),
            margin: EdgeInsets.all(10.0),

            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  resultText.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Text(
                  bmiResult,
                  style: const TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  suggestion,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          PinkButtons(
              buttonText: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}

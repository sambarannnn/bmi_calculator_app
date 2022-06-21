import 'dart:ffi';

import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator_flutter/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.weight, required this.height}) {
    CalculatorBrain brain = CalculatorBrain(weight: weight, height: height);
    bmiResult = brain.calculateBMI();
    resultText = brain.getResult();
    interpretation = brain.getInterpretation();
  }
  final int weight;
  final int height;
  String bmiResult = '';
  String resultText = '';
  String interpretation = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      interpretation,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

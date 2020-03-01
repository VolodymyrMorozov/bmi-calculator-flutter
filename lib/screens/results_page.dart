import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  BMICalculator bmi;

  @override
  Widget build(BuildContext context) {
    bmi = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmi.result.text,
                      style: resultTextStyle,
                    ),
                    Text(
                      bmi.bmi.toStringAsFixed(1),
                      style: BMITextStyle,
                    ),
                    Text(
                      bmi.result.interpretation,
                      style: bodyTextStyle,
                    ),
                  ],
                )),
          ),
          Expanded(
            child: CalculateButton(
                onTap: () => Navigator.pop(context),
                buttonTitle: 'RE-CALCULATE'),
          )
        ],
      ),
    );
  }
}

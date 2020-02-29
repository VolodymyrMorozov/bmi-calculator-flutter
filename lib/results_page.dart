import 'package:bmi_calculator/calculate_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Text(
              'sdsfsf',
              style: titleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'NORMAL',
                      style: resultTextStyle,
                    ),
                    Text(
                      '18',
                      style: BMITextStyle,
                    ),
                    Text(
                      'Your BMI result is quite low!',
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

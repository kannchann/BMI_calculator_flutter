import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String suggestion;
  const ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.suggestion});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALC'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomLeft,
                  child: const Text('Your Results', style: kTitleStyle)),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(), style: kResultstyle),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        suggestion,
                        style: kSuggestionTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPress: () {}),
            ),
            BottomButton(
              navigation: () {
                Navigator.pop(context);
              },
              calculate: 'RE-CALCULATE',
            )
          ],
        ));
  }
}

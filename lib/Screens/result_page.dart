import 'package:bmi_calculator_app/Components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../Components/bottom_button.dart';
import '../Constants/constants.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.bmiResult,required this.interpretation,required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Your Result',style: kTitleTextStyle,),
            ),
          ),

          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ReusableCard(
                 colour: kActiveCardColor,
                 cardChild: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),style: kResultTextStyle,),
                    Text(bmiResult,style: kBMITextStyle,),
                    Column(
                      children: const [
                        Text('Normal BMI range:',style: kBMIRangeTextStyle,),
                        SizedBox(height: 5),
                        Text('18.5 - 25 kg/m2',style: kBMIRangeNumTextStyle,),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                         interpretation,
                         style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(btnTitle: 'RE-CALCULATE', onTap: (){Navigator.pop(context);}),
        ],
      ),
    );
  }
}


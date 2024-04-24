import 'package:bmi_calculator_app/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Constants/constants.dart';
import 'icon_content.dart';

enum Gender {
  male,
  female,
  none,
}
class GenderCardsRow extends StatefulWidget {
  @override
  State<GenderCardsRow> createState() => _GenderCardsRowState();
}

class _GenderCardsRowState extends State<GenderCardsRow> {

  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ReusableCard(
            onPress: () {
              setState(() {
                selectedGender = Gender.male;
              });
            },
            colour: selectedGender == Gender.male
                ? kActiveCardColor
                : kInactiveCardColor,
            cardChild: IconContent(
                contentColor: selectedGender == Gender.male
                    ? kActiveContentColor
                    : kInactiveContentColor,
                icon: FontAwesomeIcons.mars,
                iconName: 'MALE'),
          ),
        ),
        SizedBox(width: 7),
        Expanded(
          child: ReusableCard(
            onPress: () {
              setState(() {
                selectedGender = Gender.female;
              });
            },
            colour: selectedGender == Gender.female
                ? kActiveCardColor
                : kInactiveCardColor,
            cardChild: IconContent(
                contentColor: selectedGender == Gender.female
                    ? kActiveContentColor
                    : kInactiveContentColor,
                icon: FontAwesomeIcons.mercury,
                iconName: 'FEMALE'),
          ),
        ),
      ],
    );
  }
}

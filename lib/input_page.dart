import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1d1E33);
const inactiveCardColor = Colors.white24;
const warnaDiBottom = Colors.red;

enum Gender{
  male,
  female,
}
// class Gender{
//   late genderType chooseGender;
//   Gender({required this.chooseGender});
// }
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

//1 = male, 2 = female
  void updateColor(Gender selectedGender) {
    //male card
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    //female card
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.male);
                    });
                  },
                  child: ReusableCard(
                    warna: maleCardColor,
                    cardChild: iconContent(
                      ikon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    warna: femaleCardColor,
                    cardChild: iconContent(
                      ikon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ),
            ],
          )),
          // Expanded(
          //   child: ReusableCard(
          //     warna: warnaDiExpanded,
          //     cardChild: null,
          //   ),
          // ),
          //       Expanded(
          //       //     child: Row(
          //       //   children: <Widget>[
          //       //     Expanded(
          //       //       child: ReusableCard(
          //       //         warna: warnaDiExpanded,
          //       //         cardChild: iconContent(),
          //       //       ),
          //       //     ),
          //       //     Expanded(
          //       //       child: ReusableCard(
          //       //         warna: warnaDiExpanded,
          //       //         cardChild: iconContent(),
          //       //       ),
          //       //     ),
          //       //   ],
          //       // ),
          // ),
          Container(
            color: activeCardColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

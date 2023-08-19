import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1d1E33);
const inactiveCardColor = Colors.white24;
const warnaDiBottom = Colors.red;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
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
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    warna: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
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
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    warna: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
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

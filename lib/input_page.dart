import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';

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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  warna: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: iconContent(
                    ikon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  warna: selectedGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: iconContent(
                    ikon: FontAwesomeIcons.venus,
                    label: 'Female',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              warna: kActiveCardColor,
              cardChild: Column(
                children: <Widget>[
                  Text(
                    'Height',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberLabelTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Colors.blue,
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue) {
                          print(newValue);
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          // Expanded(
          //   child: Row(
          //     children: <Widget>[
          //       Expanded(
          //         child: ReusableCard(
          //           warna: kActiveCardColor,
          //           cardChild: iconContent(),
          //           onPress: () {},
          //         ),
          //       ),
          //       Expanded(
          //         child: ReusableCard(
          //           warna: kActiveCardColor,
          //           cardChild: iconContent(),
          //           onPress: () {},
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            color: kActiveCardColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}

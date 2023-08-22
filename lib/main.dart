import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black38,
        scaffoldBackgroundColor: Colors.black38,
      ),
      routes: {
        '/result_page': (context) => ResultPage(),
      },
      home: InputPage(),
    );
  }
}

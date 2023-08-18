import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.lightBlue,
);

class iconContent extends StatelessWidget {
  const iconContent({
    super.key,
    required this.ikon,
    required this.label,
  });

  final IconData ikon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ikon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
            label,
            style: labelTextStyle,
        ),
      ],
    );
  }
}

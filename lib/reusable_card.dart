import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.warna, required this.cardChild});

  final Color warna;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

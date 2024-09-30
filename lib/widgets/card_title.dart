import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final String title;
  final double fontSize;

  const CardTitle({required this.title, this.fontSize = 14, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: Colors.white,
      ),
    );
  }
}

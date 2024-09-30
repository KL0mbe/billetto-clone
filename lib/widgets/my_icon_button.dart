import 'package:billetto/constants.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const MyIconButton({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: kGrey300,
      ),
      label: Text(
        text,
        style: kCardTextStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  final String text;
  final IconData? icon;

  const MyButton({
    required this.onPressed,
    required this.color,
    required this.text,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: color,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: color,
              size: 20,
            ),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

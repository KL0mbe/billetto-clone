import 'package:billetto/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FAQAnswer extends StatelessWidget {
  final String text;

  const FAQAnswer({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: kCardTextStyle,
        children: [
          TextSpan(text: "\n$text"),
          TextSpan(
            text: ' læs her',
            style: const TextStyle(
              color: Colors.blue,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle hyperlink tap
              },
          ),
          const TextSpan(
            text: ".",
          ),
        ],
      ),
    );
  }
}

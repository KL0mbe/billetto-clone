import 'package:billetto/widgets/card_title.dart';
import 'package:billetto/widgets/faq_answers.dart';
import 'package:billetto/widgets/my_divider.dart';
import 'package:flutter/material.dart';

class FAQSection extends StatelessWidget {
  final String title;
  final String text;
  const FAQSection({required this.title, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardTitle(title: title),
        FAQAnswer(text: text),
        const MyDivider(),
      ],
    );
  }
}

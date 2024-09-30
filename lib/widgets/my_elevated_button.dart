import 'package:billetto/widgets/card_title.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  const MyElevatedButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 22)),
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
      ),
      onPressed: () {},
      child: CardTitle(
        title: title,
      ),
    );
  }
}

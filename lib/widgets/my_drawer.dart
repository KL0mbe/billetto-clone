import 'package:billetto/constants.dart';
import 'package:billetto/widgets/my_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1b1d1e),
      child: ListView(
        padding: const EdgeInsets.all(32),
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 16,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Priser for arrangører",
                  style: kCardTextStyle,
                ),
              ),
              const MyIconButton(
                icon: Icons.add_circle_outline_outlined,
                text: "Opret event",
              ),
              const MyIconButton(
                icon: CupertinoIcons.question_circle,
                text: "Kundeservice",
              ),
              const MyIconButton(
                icon: Icons.login,
                text: "Log ind",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

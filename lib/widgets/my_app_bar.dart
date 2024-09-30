import 'package:billetto/constants.dart';
import 'package:billetto/widgets/country_image.dart';
import 'package:billetto/widgets/my_icon_button.dart';
import 'package:billetto/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF1b1d1e),
        ),
      ),
      title: Row(
        children: [
          const Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 16,
              right: 16,
            ),
            child: CountryImage(
              image: "images/billettoHeader.png",
              width: 80,
              height: 50,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width > 500 ? 300 : 180,
            child: const MyTextField(
              hintText: "Søg efter events",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              radius: 30,
            ),
          ),
          const Spacer(),
          if (MediaQuery.of(context).size.width > 1030) ...[
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
        ],
      ),
    );
  }
}

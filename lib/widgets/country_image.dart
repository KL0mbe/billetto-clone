import 'package:flutter/material.dart';

class CountryImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  const CountryImage(
      {required this.image, this.width = 30, this.height = 25, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Image.asset(
        image,
        width: width,
        height: height,
      ),
    );
  }
}

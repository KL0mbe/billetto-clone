import 'package:flutter/material.dart';

class PaymentImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  const PaymentImage(
      {required this.image, this.width = 40, this.height = 25, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: width,
      height: height,
    );
  }
}

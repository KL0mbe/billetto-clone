import 'package:flutter/material.dart';

class AppStoreImage extends StatelessWidget {
  final String image;

  const AppStoreImage({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 100,
      height: 50,
    );
  }
}

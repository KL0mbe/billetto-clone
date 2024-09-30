import 'package:flutter/material.dart';

class SocialMediaImage extends StatelessWidget {
  final String image;
  const SocialMediaImage({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Image.asset(
        image,
        width: 25,
        height: 25,
        color: Colors.grey,
      ),
    );
  }
}

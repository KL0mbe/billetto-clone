import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final Icon? prefixIcon;
  final double radius;

  const MyTextField({
    required this.hintText,
    this.prefixIcon,
    this.radius = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF27272A),
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

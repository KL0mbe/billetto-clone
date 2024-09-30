import 'package:flutter/material.dart';

class HyperLink extends StatefulWidget {
  final String text;
  final double fontSize;
  const HyperLink({required this.text, this.fontSize = 14, super.key});

  @override
  State<HyperLink> createState() => _HyperLinkState();
}

class _HyperLinkState extends State<HyperLink> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize:
            const WidgetStatePropertyAll(Size.zero), // Removes default min size
        padding: const WidgetStatePropertyAll(EdgeInsets.zero),
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        foregroundColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.hovered)
              ? Colors.blue[300]
              : Colors.blue,
        ),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: widget.fontSize,
        ),
      ),
    );
  }
}

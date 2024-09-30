import 'package:flutter/material.dart';

class GreyHyperLink extends StatefulWidget {
  final String text;
  final double fontSize;
  const GreyHyperLink({required this.text, this.fontSize = 16, super.key});

  @override
  State<GreyHyperLink> createState() => _GreyHyperLinkState();
}

class _GreyHyperLinkState extends State<GreyHyperLink> {
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
              ? Colors.grey[100]
              : Colors.grey[300],
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

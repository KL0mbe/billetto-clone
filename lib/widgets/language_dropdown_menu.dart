import 'package:flutter/material.dart';

class LanguageDropdownMenu extends StatelessWidget {
  const LanguageDropdownMenu({
    required this.onSelected,
    required this.language,
    super.key,
  });

  final String language;
  final void Function(String?)? onSelected;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      onSelected: onSelected,
      initialSelection: language,
      textStyle: const TextStyle(color: Colors.white),
      dropdownMenuEntries: const <DropdownMenuEntry<String>>[
        DropdownMenuEntry(value: "english", label: "English"),
        DropdownMenuEntry(value: "dansk", label: "Dansk"),
        DropdownMenuEntry(value: "norsk", label: "Norsk"),
        DropdownMenuEntry(value: "svenska", label: "Svenska"),
        DropdownMenuEntry(value: "deutsch", label: "Deutsch"),
        DropdownMenuEntry(value: "español", label: "Español"),
        DropdownMenuEntry(value: "nederlands", label: "Nederlands"),
        DropdownMenuEntry(value: "italiano", label: "Italiano"),
        DropdownMenuEntry(value: "français", label: "Français"),
        DropdownMenuEntry(value: "portugês", label: "Portugês"),
        DropdownMenuEntry(value: "suomi", label: "Suomi"),
      ],
    );
  }
}

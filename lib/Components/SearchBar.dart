import 'package:flutter/material.dart';

class RoundSearchBar extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final Function(String)? onChanged;

  const RoundSearchBar({
    Key? key,
    required this.icon,
    required this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Unfocus text field when tapping outside
        FocusScope.of(context).unfocus();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            hintText: hintText,
            hintStyle: const TextStyle(color: Color.fromARGB(255, 100, 98, 98)),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(icon, color: Colors.grey),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 249, 247, 247),
          ),
        ),
      ),
    );
  }
}

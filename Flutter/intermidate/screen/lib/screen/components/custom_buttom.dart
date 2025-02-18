import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/util/colors/mycolors.dart';

class CustomBottom extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomBottom({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.white,
        overlayColor: MyColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: MyColors.orange, width: 1),
        ),
        elevation: 0,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: MyColors.orange,
          ),
        ),
      ),
    );
  }
}

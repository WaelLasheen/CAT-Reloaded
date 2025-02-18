import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/util/colors/mycolors.dart';

class CustomIconBottom extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color iconColor;
  final Color? buttonColor;
  final double? iconSize;
  const CustomIconBottom({super.key, required this.icon, required this.onPressed, this.iconColor= MyColors.black, this.buttonColor, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: Size(iconSize??24, iconSize??24),
      ),
    );
  }
}
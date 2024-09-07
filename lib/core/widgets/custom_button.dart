import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      this.fontSize});
  final VoidCallback onPressed;
  final double? fontSize;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
            color: textColor, fontWeight: FontWeight.w900, fontSize: fontSize),
      ),
    );
  }
}
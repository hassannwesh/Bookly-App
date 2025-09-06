import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.fontSize,
    this.borderRadius, this.onPressed,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double? fontSize;
  final BorderRadius? borderRadius;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,

          style: Styles.testStyle18.copyWith(
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

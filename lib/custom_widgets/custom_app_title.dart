import 'package:flutter/material.dart';

class CustomAppTitle extends StatelessWidget {
  final double textSize;
  final Color textColor;
  final FontWeight textBoldness;
  const CustomAppTitle(
      {super.key,
      this.textSize = 36,
      this.textColor = Colors.white,
      this.textBoldness = FontWeight.w700});

  @override
  Widget build(BuildContext context) {
    return Text(
      "O R D E R  @  E A T",
      style: TextStyle(
          fontSize: textSize, color: textColor, fontWeight: textBoldness),
    );
  }
}

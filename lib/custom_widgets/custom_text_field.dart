import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double fieldWidth;
  final String? textLabel;
  final String? textHint;
  final OutlineInputBorder? focusedBorderRadius;
  final OutlineInputBorder? enabledBorderRadius;

  const CustomTextField({
    super.key,
    this.fieldWidth = 0.9,
    this.textLabel,
    this.textHint,
    this.focusedBorderRadius,
    this.enabledBorderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * fieldWidth,
      child: TextField(
        decoration: InputDecoration(
            hintText: textHint,
            labelText: textLabel,
            focusedBorder: focusedBorderRadius,
            enabledBorder: enabledBorderRadius,
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(17))),
      ),
    );
  }
}

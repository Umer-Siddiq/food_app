import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final Color bgColor;
  final VoidCallback? buttonPress;
  final double buttonRatioWidth;
  final double buttonRatioHeight;
  final double textSize;

  const CustomButton({
    required this.buttonText,
    this.textColor = Colors.black,
    this.bgColor = Colors.blue,
    this.buttonPress,
    this.buttonRatioWidth = 0.40,
    this.buttonRatioHeight = 0.06,
    this.textSize = 22,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => buttonPress!(),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width * buttonRatioWidth,
            MediaQuery.of(context).size.height * buttonRatioHeight),
        backgroundColor: bgColor,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: textSize, color: textColor),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? textHint;
  final String textLabel;
  final String? textHelper;
  final TextInputType? keyBoard;
  final TextEditingController? textController;
  final IconButton? iconSuffix;
  final double fieldWidth;
  final double aboveHeightSpace;
  final int? maxInput;
  final bool showText;

  const CustomTextFormField({
    super.key,
    this.textHint,
    required this.textLabel,
    this.textHelper,
    this.keyBoard,
    this.textController,
    this.iconSuffix,
    this.aboveHeightSpace = 30,
    this.fieldWidth = 300,
    this.maxInput,
    this.showText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: aboveHeightSpace),
        SizedBox(
          width: fieldWidth,
          child: TextFormField(
            obscureText: showText,
            obscuringCharacter: '*',
            maxLength: maxInput,
            validator: (value) {
              if (value!.isEmpty) {
                return "This field cannot be empty*";
              } else {
                return null;
              }
            },
            keyboardType: keyBoard,
            controller: textController,
            style: const TextStyle(fontSize: 19),
            mouseCursor: MaterialStateMouseCursor.clickable,
            decoration: InputDecoration(
              suffixIcon: iconSuffix,
              hintText: textHint,
              hintStyle: const TextStyle(color: Colors.black54),
              labelText: textLabel,
              labelStyle: const TextStyle(color: Colors.black),
              helperText: textHelper,
              floatingLabelStyle: const TextStyle(color: Colors.black),
              enabledBorder: const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder(),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade900)),
            ),
          ),
        ),
      ],
    );
  }
}

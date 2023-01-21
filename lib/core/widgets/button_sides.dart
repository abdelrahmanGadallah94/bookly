import 'package:bookly/core/utils/custom_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonSides extends StatelessWidget {
  final Color buttonColor;
  final BorderRadiusGeometry? borderRadius;
  final String buttonText;
  final Color textColor;
  final FontStyle? fontStyle;
  final TextDecoration? textDecoration;
  const ButtonSides({
    Key? key,
    this.fontStyle,
    this.textDecoration,
    required this.buttonColor,
    this.borderRadius,
    required this.buttonText,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: borderRadius,
      ),
      child: Text(
        buttonText,style: Styles.textStyle16.copyWith(
        color: textColor,
        fontStyle: fontStyle,
        decoration: textDecoration,
      ),
      ),
    ));
  }
}

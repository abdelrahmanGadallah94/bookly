import 'package:bookly/core/utils/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'custom_custom_rating.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Free",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500
          ),
        ),
        const CustomCustomRating()
      ],
    );
  }
}
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: kWhiteColor)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kWhiteColor),
          borderRadius: BorderRadius.circular(20),

        ),
        hintText: kSearchHintText,
        suffixIcon: const Icon(Icons.search,color: kWhiteColor,)
      ),
    );
  }
}

import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomFeaturedItem extends StatelessWidget {
  const CustomFeaturedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: kRedColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: AspectRatio(
          aspectRatio: 2.9/4,
          child: Image.asset(kTestImage),
        ),
      ),
    );
  }
}

import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'custom_aspect_ratio_item.dart';

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
        child: const CustomAspectRatioItem(),
      ),
    );
  }
}


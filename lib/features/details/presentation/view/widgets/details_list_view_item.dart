import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_aspect_ratio_item.dart';
import 'package:flutter/material.dart';

class DetailsListViewItem extends StatelessWidget {
  const DetailsListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 120,
      child: Container(
        margin: const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
          color: kRedColor,
          borderRadius: BorderRadius.circular(15)
        ),
        child: const CustomAspectRatioItem(),
      ),
    );
  }
}
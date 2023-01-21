import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CustomAspectRatioItem extends StatelessWidget {
  const CustomAspectRatioItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9/4,
      child: Image.asset(kTestImage),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/custom_text_styles.dart';

class CustomCustomRating extends StatelessWidget {
  final MainAxisAlignment  mainAxisAlignment;
  const CustomCustomRating({
    this.mainAxisAlignment  = MainAxisAlignment.start,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const FaIcon(FontAwesomeIcons.solidStar,color: kYellowColor,size: kStarsSize,),
        Padding(
          padding:const EdgeInsets.symmetric(horizontal: 3),
          child: Text(
            "4.5",
            style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        Text("(200)",style: Styles.textStyle14.copyWith(
            color: kWhiteColor.withOpacity(.8)
        ),),
      ],
    );
  }
}

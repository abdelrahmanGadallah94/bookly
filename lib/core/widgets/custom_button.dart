import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import 'button_sides.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: TextButton(
        onPressed: (){},
        child: Row(
          children: const [
            ButtonSides(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              buttonColor: kWhiteColor,
              buttonText: kButtonTextLeftSide,
              textColor: kBlackColor,
              textDecoration: TextDecoration.lineThrough,
            ),
            ButtonSides(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              buttonColor: kRedColor,
              buttonText: kButtonTextRightSide,
              textColor: kWhiteColor,
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:bookly/core/utils/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import 'custom_aspect_ratio_item.dart';
import 'custom_rating.dart';

class CustomNewestBooksItem extends StatelessWidget {
  const CustomNewestBooksItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kDetailsPageRoute);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 125,
              child: CustomAspectRatioItem(),
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  "Introduction to computer science.Introduction to computer science",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle18.copyWith(
                  ),
                ),
                const SizedBox(height: 4,),
                Text(
                  "Harry potter",
                  style: Styles.textStyle16.copyWith(
                      color: kWhiteColor.withOpacity(.8),
                      fontStyle: FontStyle.italic
                  ),
                ),
                const SizedBox(height: 4,),
                const CustomRating()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
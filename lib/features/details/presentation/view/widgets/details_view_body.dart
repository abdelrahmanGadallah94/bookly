import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/custom_text_styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_aspect_ratio_item.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../home/presentation/view/widgets/custom_custom_rating.dart';
import 'custom_details_list_view.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 260,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kRedColor, borderRadius: BorderRadius.circular(20)),
                    child: const CustomAspectRatioItem(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Introduction to computer science, 2/e",
                  style: Styles.textStyle26,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10,),
                Text(
                  "Harry potter",
                  style: Styles.textStyle18.copyWith(
                      color: kWhiteColor.withOpacity(.7),
                      fontStyle: FontStyle.italic
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10,),
                const CustomCustomRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 20,),
                const CustomButton(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:const EdgeInsets.only(top: 25, left: 25),
                    child: Text(kYouCanAlsoLikeText,style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                const SizedBox(height: 25),

                // const SizedBox(height: 25),

              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomDetailsListView(),
          )
        ],
      ),
    );
  }
}


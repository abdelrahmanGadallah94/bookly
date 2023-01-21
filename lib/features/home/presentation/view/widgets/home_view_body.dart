import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/custom_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_featured_list_view.dart';
import 'custom_newest_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(kLogoImage,height: 20),
        actions: [
          IconButton(
              onPressed: (){
                GoRouter.of(context).push(kSearchPageRoute);
              },
              icon: const Icon(Icons.search,size: 30,)
          )
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 20,),
                  const CustomFeaturedListView(),
                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,bottom: 25),
                    child: Text(kNewestBooksText,style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ],
              )
          ),
          const SliverToBoxAdapter(
            child: CustomNewestBooksListView(),
          )
        ],
      ),

    );
  }
}



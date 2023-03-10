import 'package:flutter/material.dart';

import 'custom_featured_item.dart';

class CustomFeaturedListView extends StatelessWidget {
  const CustomFeaturedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
         return const CustomFeaturedItem();
        },
      ),
    );
  }
}


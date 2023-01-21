import 'package:flutter/material.dart';

import 'custom_newest_books_item.dart';

class CustomNewestBooksListView extends StatelessWidget {
  final ScrollPhysics? physics;

  const CustomNewestBooksListView({
    Key? key,
    this.physics = const NeverScrollableScrollPhysics(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: physics,
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (context, index) {
         return const CustomNewestBooksItem();
        },

    );
  }
}
import 'package:flutter/material.dart';

import 'details_list_view_item.dart';

class CustomDetailsListView extends StatelessWidget {
  const CustomDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return const DetailsListViewItem();
        },
      ),
    );
  }
}


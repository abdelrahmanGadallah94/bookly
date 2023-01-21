import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../home/presentation/view/widgets/custom_newest_books_list_view.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: const [
          SizedBox(height: 20,),
          CustomTextField(),
          SizedBox(height: 25,),
          Expanded(
              child: CustomNewestBooksListView(
                physics: ScrollPhysics(),
              ),
          ),
        ],
      ),
    );
  }
}

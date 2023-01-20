import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_featured_list_view.dart';

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
              onPressed: (){},
              icon: const Icon(Icons.search,size: 30,)
          )
        ],
      ),
      body: SafeArea(
        child: Column(
         children: const [
           CustomFeaturedListView(),
         ],
        ),
      ),
    );
  }
}



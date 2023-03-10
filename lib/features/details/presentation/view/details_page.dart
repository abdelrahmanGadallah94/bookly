import 'package:bookly/features/details/presentation/view/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: IconButton(onPressed: (){
          GoRouter.of(context).pop();
        }, icon: const Icon(Icons.close)),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.shopping_cart,size: 30,)
          )
        ],
      ),
      body: const DetailsViewBody(),
    );
  }
}


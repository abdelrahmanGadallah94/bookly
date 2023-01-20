import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'core/utils/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouters.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kMainColor,
      ),
    );
  }
}

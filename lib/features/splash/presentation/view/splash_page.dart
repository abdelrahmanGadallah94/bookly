import 'dart:async';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(kPageRouteDuration, () {
      GoRouter.of(context).push(kHomePageRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kLogoImage),
            const SizedBox(height: 25),
            const Text(
               kSplashText,

            )
          ],
        ),
      ),
    );
  }
}

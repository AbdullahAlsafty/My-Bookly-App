import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bookly/constants.dart';

import 'package:my_bookly/features/hom_featuer/presentation_layer/views/hom_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigatTomHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetData.logo,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Read free boxs ',
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  void navigatTomHome() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomView();
      }));
    });
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/constants/app_routs.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  Timer? _timer;
  @override
  void initState() {
    navigatTomHome();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _timer?.cancel();

    super.dispose();
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
    // Navigator.push(context, MaterialPageRoute(builder: (context) {
    //   return HomView();
    // }));
    if (mounted) {
      _timer = Timer(Duration(seconds: 1), () {
        GoRouter.of(context).go(AppRouts.kHomeView);
      });
    }
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/constants/app_routs.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/hom_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  Timer? _timer;
  @override
  void initState() {
    print('1111111');
    navigatTomHome();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('***************');
    _timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('2222');
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
      _timer = Timer(Duration(seconds: 4), () {
        GoRouter.of(context).go(AppRouts.kHomeView);
      });
    }
  }
}

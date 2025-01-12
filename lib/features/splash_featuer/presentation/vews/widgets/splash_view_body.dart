import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/asset_data.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

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
}

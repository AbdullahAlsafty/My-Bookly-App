import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/constants/app_routs.dart';

class CustomAppBarHomView extends StatelessWidget {
  const CustomAppBarHomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 24,
            width: 75,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).go(AppRouts.kSearchView);
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

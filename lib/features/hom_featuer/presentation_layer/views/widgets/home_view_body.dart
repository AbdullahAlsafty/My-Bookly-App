import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/asset_data.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/Featured_book_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        FeaturedBookListview(),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 24,
            width: 75,
          ),
          Spacer(),
          Icon(Icons.search)
        ],
      ),
    );
  }
}

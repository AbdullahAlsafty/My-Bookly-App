import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/asset_data.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/custom_listview_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CustomAppBar(), SizedBox(height: 55), CustomListviewItem()],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
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

import 'package:flutter/material.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/feature_listview_item.dart';

class FeaturedBookListview extends StatelessWidget {
  const FeaturedBookListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return FeatureListviewItem();
          }),
    );
  }
}

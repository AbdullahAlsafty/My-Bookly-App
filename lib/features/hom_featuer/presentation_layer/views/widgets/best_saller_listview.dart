import 'package:flutter/material.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/best_saler_listview_items.dart';

class BestSalerListView extends StatelessWidget {
  const BestSalerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 30),
            child: BestSalerListviewItems(),
          );
        });
  }
}

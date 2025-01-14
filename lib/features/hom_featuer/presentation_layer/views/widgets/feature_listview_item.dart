import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/constants/app_routs.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/books_details_view.dart';

class FeatureListviewItem extends StatelessWidget {
  const FeatureListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .5,
        child: AspectRatio(
          aspectRatio: 27 / 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

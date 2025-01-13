import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';

class FeatureListviewItem extends StatelessWidget {
  const FeatureListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}

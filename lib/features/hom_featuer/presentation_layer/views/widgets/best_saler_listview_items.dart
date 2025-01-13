import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';

class BestSalerListviewItems extends StatelessWidget {
  const BestSalerListviewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: AspectRatio(
        aspectRatio: 26 / 40,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                    AssetData.testImage,
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}

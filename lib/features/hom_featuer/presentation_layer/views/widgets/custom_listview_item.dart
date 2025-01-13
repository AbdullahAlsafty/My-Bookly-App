import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/asset_data.dart';

class CustomListviewItem extends StatelessWidget {
  const CustomListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: AspectRatio(
        aspectRatio: 27 / 40,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}

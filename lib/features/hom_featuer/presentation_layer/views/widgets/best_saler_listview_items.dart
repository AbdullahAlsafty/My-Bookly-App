import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';

class BestSalerListviewItems extends StatelessWidget {
  const BestSalerListviewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
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
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                'Harry Potter and the Goblet of Fire ',
                style: StylsFil.textfont20.copyWith(fontFamily: kgTSectraFine),
              ),
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_rating.dart';

class BestSalerListviewItems extends StatelessWidget {
  const BestSalerListviewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    'Harry Potter and the Goblet of Fire ',
                    style:
                        StylsFil.textfont20.copyWith(fontFamily: kgTSectraFine),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'J.K. Rowling',
                  style: StylsFil.textfont14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: StylsFil.textfont20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    BooksRating(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
